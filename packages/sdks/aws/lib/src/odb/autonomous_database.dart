import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_admin_password_source.dart';
import 'autonomous_database_args.dart';
import 'autonomous_database_customer_contacts_to_send_to_oci.dart';
import 'autonomous_database_db_tools_detail.dart';
import 'autonomous_database_long_term_backup_schedule.dart';
import 'autonomous_database_resource_pool_summary.dart';
import 'autonomous_database_scheduled_operation.dart';
import 'autonomous_database_source_configuration.dart';
import 'autonomous_database_state.dart';
import 'autonomous_database_timeouts.dart';
import 'autonomous_database_transportable_tablespace.dart';

/// Manages an Oracle Database@AWS Autonomous Database Serverless (ADB-S) instance. ADB-S uses shared Exadata infrastructure managed by Oracle and requires an existing ODB network; it does not require a customer-managed Exadata infrastructure or VM cluster.
///
/// Provisioning, updating, and deleting an Autonomous Database are asynchronous and can take several hours. The AWS account and Region must be onboarded for Oracle Database@AWS and have sufficient service quotas.
///
/// The AWS API defines all create parameters as optional because the valid combination depends on `source`. For a new database (`source = "NONE"`), configure the ODB network, database identity, workload, compute, storage, license, and ADMIN password values required by your Oracle Database@AWS tenancy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// Write-only arguments require Terraform 1.11 or later. With earlier Terraform versions, use the sensitive `adminPassword` argument instead; its value is stored in Terraform state.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const autonomousDatabaseAdminPassword = config.require("autonomousDatabaseAdminPassword");
/// const example = new aws.odb.AutonomousDatabase("example", {
///     adminPasswordWo: autonomousDatabaseAdminPassword,
///     adminPasswordWoVersion: 1,
///     computeCount: 2,
///     dataStorageSizeInTbs: 1,
///     dbName: "TFADBEXAMPLE",
///     dbWorkload: "OLTP",
///     displayName: "pulumi-adbs-example",
///     licenseModel: "LICENSE_INCLUDED",
///     odbNetworkId: exampleAwsOdbNetwork.id,
///     source: "NONE",
///     tags: {
///         Environment: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// autonomous_database_admin_password = config.require("autonomousDatabaseAdminPassword")
/// example = aws.odb.AutonomousDatabase("example",
///     admin_password_wo=autonomous_database_admin_password,
///     admin_password_wo_version=1,
///     compute_count=float(2),
///     data_storage_size_in_tbs=float(1),
///     db_name="TFADBEXAMPLE",
///     db_workload="OLTP",
///     display_name="pulumi-adbs-example",
///     license_model="LICENSE_INCLUDED",
///     odb_network_id=example_aws_odb_network["id"],
///     source="NONE",
///     tags={
///         "Environment": "example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var autonomousDatabaseAdminPassword = config.Require("autonomousDatabaseAdminPassword");
///     var example = new Aws.Odb.AutonomousDatabase("example", new()
///     {
///         AdminPasswordWo = autonomousDatabaseAdminPassword,
///         AdminPasswordWoVersion = 1,
///         ComputeCount = 2,
///         DataStorageSizeInTbs = 1,
///         DbName = "TFADBEXAMPLE",
///         DbWorkload = "OLTP",
///         DisplayName = "pulumi-adbs-example",
///         LicenseModel = "LICENSE_INCLUDED",
///         OdbNetworkId = exampleAwsOdbNetwork.Id,
///         Source = "NONE",
///         Tags =
///         {
///             { "Environment", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		autonomousDatabaseAdminPassword := cfg.Require("autonomousDatabaseAdminPassword")
/// 		_, err := odb.NewAutonomousDatabase(ctx, "example", &odb.AutonomousDatabaseArgs{
/// 			AdminPasswordWo:        pulumi.String(autonomousDatabaseAdminPassword),
/// 			AdminPasswordWoVersion: pulumi.Int(1),
/// 			ComputeCount:           pulumi.Float64(2),
/// 			DataStorageSizeInTbs:   pulumi.Float64(1),
/// 			DbName:                 pulumi.String("TFADBEXAMPLE"),
/// 			DbWorkload:             pulumi.String("OLTP"),
/// 			DisplayName:            pulumi.String("pulumi-adbs-example"),
/// 			LicenseModel:           pulumi.String("LICENSE_INCLUDED"),
/// 			OdbNetworkId:           pulumi.Any(exampleAwsOdbNetwork.Id),
/// 			Source:                 pulumi.String("NONE"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_odb_autonomousdatabase" "example" {
///   admin_password_wo         = var.autonomousDatabaseAdminPassword
///   admin_password_wo_version = 1
///   compute_count             = 2
///   data_storage_size_in_tbs  = 1
///   db_name                   = "TFADBEXAMPLE"
///   db_workload               = "OLTP"
///   display_name              = "pulumi-adbs-example"
///   license_model             = "LICENSE_INCLUDED"
///   odb_network_id            = exampleAwsOdbNetwork.id
///   source                    = "NONE"
///   tags = {
///     "Environment" = "example"
///   }
/// }
/// variable "autonomousDatabaseAdminPassword" {
///   type = string
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.AutonomousDatabase;
/// import com.pulumi.aws.odb.AutonomousDatabaseArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var autonomousDatabaseAdminPassword = config.require("autonomousDatabaseAdminPassword");
///         var example = new AutonomousDatabase("example", AutonomousDatabaseArgs.builder()
///             .adminPasswordWo(autonomousDatabaseAdminPassword)
///             .adminPasswordWoVersion(1)
///             .computeCount(2.0)
///             .dataStorageSizeInTbs(1.0)
///             .dbName("TFADBEXAMPLE")
///             .dbWorkload("OLTP")
///             .displayName("pulumi-adbs-example")
///             .licenseModel("LICENSE_INCLUDED")
///             .odbNetworkId(exampleAwsOdbNetwork.id())
///             .source("NONE")
///             .tags(Map.of("Environment", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   autonomousDatabaseAdminPassword:
///     type: string
/// resources:
///   example:
///     type: aws:odb:AutonomousDatabase
///     properties:
///       adminPasswordWo: ${autonomousDatabaseAdminPassword}
///       adminPasswordWoVersion: 1
///       computeCount: 2
///       dataStorageSizeInTbs: 1
///       dbName: TFADBEXAMPLE
///       dbWorkload: OLTP
///       displayName: pulumi-adbs-example
///       licenseModel: LICENSE_INCLUDED
///       odbNetworkId: ${exampleAwsOdbNetwork.id}
///       source: NONE
///       tags:
///         Environment: example
/// ```
///
///
/// ### AWS Secrets Manager ADMIN Password
///
/// To retrieve the ADMIN password from AWS Secrets Manager, first enable the account-level `aws.odb.AutonomousDatabaseSecretsManagerIntegration`. Then create a customer-managed IAM role that trusts the Oracle-managed service role exported by that resource and grants `secretsmanager:GetSecretValue` permission on the secret.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.odb.AutonomousDatabase("example", {adminPasswordSource: {
///     customerManagedAwsSecret: {
///         externalIdType: "compartment_ocid",
///         iamRoleArn: "arn:aws:iam::123456789012:role/ADBSSecretManagerReadRole",
///         secretArn: "arn:aws:secretsmanager:us-east-1:123456789012:secret:adbs-admin-password",
///     },
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.AutonomousDatabase("example", admin_password_source={
///     "customer_managed_aws_secret": {
///         "external_id_type": "compartment_ocid",
///         "iam_role_arn": "arn:aws:iam::123456789012:role/ADBSSecretManagerReadRole",
///         "secret_arn": "arn:aws:secretsmanager:us-east-1:123456789012:secret:adbs-admin-password",
///     },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Odb.AutonomousDatabase("example", new()
///     {
///         AdminPasswordSource = new Aws.Odb.Inputs.AutonomousDatabaseAdminPasswordSourceArgs
///         {
///             CustomerManagedAwsSecret = new Aws.Odb.Inputs.AutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecretArgs
///             {
///                 ExternalIdType = "compartment_ocid",
///                 IamRoleArn = "arn:aws:iam::123456789012:role/ADBSSecretManagerReadRole",
///                 SecretArn = "arn:aws:secretsmanager:us-east-1:123456789012:secret:adbs-admin-password",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.NewAutonomousDatabase(ctx, "example", &odb.AutonomousDatabaseArgs{
/// 			AdminPasswordSource: &odb.AutonomousDatabaseAdminPasswordSourceArgs{
/// 				CustomerManagedAwsSecret: &odb.AutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecretArgs{
/// 					ExternalIdType: pulumi.String("compartment_ocid"),
/// 					IamRoleArn:     pulumi.String("arn:aws:iam::123456789012:role/ADBSSecretManagerReadRole"),
/// 					SecretArn:      pulumi.String("arn:aws:secretsmanager:us-east-1:123456789012:secret:adbs-admin-password"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_odb_autonomousdatabase" "example" {
///   admin_password_source = {
///     customer_managed_aws_secret = {
///       external_id_type = "compartment_ocid"
///       iam_role_arn     = "arn:aws:iam::123456789012:role/ADBSSecretManagerReadRole"
///       secret_arn       = "arn:aws:secretsmanager:us-east-1:123456789012:secret:adbs-admin-password"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.AutonomousDatabase;
/// import com.pulumi.aws.odb.AutonomousDatabaseArgs;
/// import com.pulumi.aws.odb.inputs.AutonomousDatabaseAdminPasswordSourceArgs;
/// import com.pulumi.aws.odb.inputs.AutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecretArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new AutonomousDatabase("example", AutonomousDatabaseArgs.builder()
///             .adminPasswordSource(AutonomousDatabaseAdminPasswordSourceArgs.builder()
///                 .customerManagedAwsSecret(AutonomousDatabaseAdminPasswordSourceCustomerManagedAwsSecretArgs.builder()
///                     .externalIdType("compartment_ocid")
///                     .iamRoleArn("arn:aws:iam::123456789012:role/ADBSSecretManagerReadRole")
///                     .secretArn("arn:aws:secretsmanager:us-east-1:123456789012:secret:adbs-admin-password")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:odb:AutonomousDatabase
///     properties:
///       adminPasswordSource:
///         customerManagedAwsSecret:
///           externalIdType: compartment_ocid
///           iamRoleArn: arn:aws:iam::123456789012:role/ADBSSecretManagerReadRole
///           secretArn: arn:aws:secretsmanager:us-east-1:123456789012:secret:adbs-admin-password
/// ```
///
///
/// ### Reading the Created Database
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.odb.getAutonomousDatabase({
///     id: exampleAwsOdbAutonomousDatabase.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_autonomous_database(id=example_aws_odb_autonomous_database["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Odb.GetAutonomousDatabase.Invoke(new()
///     {
///         Id = exampleAwsOdbAutonomousDatabase.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.LookupAutonomousDatabase(ctx, &odb.LookupAutonomousDatabaseArgs{
/// 			Id: exampleAwsOdbAutonomousDatabase.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_odb_getautonomousdatabase" "example" {
///   id = exampleAwsOdbAutonomousDatabase.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetAutonomousDatabaseArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = OdbFunctions.getAutonomousDatabase(GetAutonomousDatabaseArgs.builder()
///             .id(exampleAwsOdbAutonomousDatabase.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:odb:getAutonomousDatabase
///       arguments:
///         id: ${exampleAwsOdbAutonomousDatabase.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) Unique Autonomous Database identifier.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import an Autonomous Database using its ID. For example:
///
/// ```sh
/// $ pulumi import aws:odb/autonomousDatabase:AutonomousDatabase example adb-example123
/// ```
///
/// AWS does not return the ADMIN password or the creation-only `source`, `sourceConfiguration`, and `transportableTablespace` values. These values are absent from imported state. Adding creation-only values to configuration after import records them in state without replacing the database or applying them to AWS. Once recorded, changing or removing these values requires replacement. Configuring `adminPassword` or `adminPasswordWo` can still update the password, so review the plan after import and configure a password only when setting or rotating it.
class AutonomousDatabase extends pulumi.CustomResource {
  /// Actual data storage currently in use, in TB.
  late final pulumi.Output<double> actualUsedDataStorageSizeInTbs;
  /// Sensitive password for the `ADMIN` user. Must be between 12 and 30 characters. This value is stored in Terraform state. Conflicts with `adminPasswordSource` and `adminPasswordWo`.
  late final pulumi.Output<String?> adminPassword;
  /// Source of the `ADMIN` password. Conflicts with `adminPassword` and `adminPasswordWo`. See `adminPasswordSource` Block below.
  late final pulumi.Output<AutonomousDatabaseAdminPasswordSource?> adminPasswordSource;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Sensitive write-only password for the `ADMIN` user. Must be between 12 and 30 characters. The value is sent to AWS but is never stored in pulumi preview or state. Requires Terraform 1.11 or later. Set `adminPasswordWoVersion` with this argument. Conflicts with `adminPassword` and `adminPasswordSource`.
  late final pulumi.Output<String?> adminPasswordWo;
  /// Arbitrary integer stored in state. Change this value together with `adminPasswordWo` to rotate the ADMIN password.
  late final pulumi.Output<int?> adminPasswordWoVersion;
  /// Storage currently allocated, in TB.
  late final pulumi.Output<double> allocatedStorageSizeInTbs;
  /// List of between 1 and 1024 IP addresses allowed to access the database.
  late final pulumi.Output<List<String>> allowlistedIps;
  /// ARN of the Autonomous Database.
  late final pulumi.Output<String> arn;
  /// Automatic refresh frequency, in seconds, for a refreshable clone.
  late final pulumi.Output<int> autoRefreshFrequencyInSeconds;
  /// Refresh lag, in seconds, between a refreshable clone and its source.
  late final pulumi.Output<int> autoRefreshPointLagInSeconds;
  /// Maintenance schedule type. Valid values are `EARLY` and `REGULAR`.
  late final pulumi.Output<String> autonomousMaintenanceScheduleType;
  /// Availability Zone of the database.
  late final pulumi.Output<String> availabilityZone;
  /// Availability Zone ID of the database.
  late final pulumi.Output<String> availabilityZoneId;
  /// Oracle Database versions available for upgrade.
  late final pulumi.Output<List<String>> availableUpgradeVersions;
  /// Automatic backup retention period, in days.
  late final pulumi.Output<int> backupRetentionPeriodInDays;
  /// Maximum compute capacity under the bring-your-own-license model. Minimum value is `2`.
  late final pulumi.Output<double> byolComputeCountLimit;
  /// Database character set. Changing this value creates a new resource.
  late final pulumi.Output<String> characterSet;
  /// Compute capacity in ECPUs or OCPUs. Valid values are from `0.1` through `512`.
  late final pulumi.Output<double> computeCount;
  /// Compute model, either `ECPU` or `OCPU`.
  late final pulumi.Output<String> computeModel;
  /// Allocated CPU core count. Valid values are from `1` through `128`.
  late final pulumi.Output<int> cpuCoreCount;
  /// Creation date and time.
  late final pulumi.Output<String> createdAt;
  /// Customer contacts that receive operational notifications from OCI. See `customerContactsToSendToOci` Block below.
  late final pulumi.Output<List<AutonomousDatabaseCustomerContactsToSendToOci>?> customerContactsToSendToOcis;
  /// Data volume size in GB. Valid values are from `20` through `393216`.
  late final pulumi.Output<int> dataStorageSizeInGbs;
  /// Data volume size in TB. Configured values must be whole numbers from `1` through `384`. When this argument is omitted, AWS can return a fractional value, for example when storage is configured in GB.
  late final pulumi.Output<double> dataStorageSizeInTbs;
  /// Oracle Database edition. Valid values are `STANDARD_EDITION` and `ENTERPRISE_EDITION`.
  late final pulumi.Output<String> databaseEdition;
  /// Autonomous Database type.
  late final pulumi.Output<String> databaseType;
  /// Database name. Must begin with a letter, contain only alphanumeric characters, and contain at most 30 characters.
  late final pulumi.Output<String> dbName;
  /// Database management tools to enable. See `dbToolsDetails` Block below.
  late final pulumi.Output<List<AutonomousDatabaseDbToolsDetail>?> dbToolsDetails;
  /// Oracle Database software version.
  late final pulumi.Output<String> dbVersion;
  /// Database workload. Valid values are `OLTP`, `AJD`, `APEX`, and `LH`.
  late final pulumi.Output<String> dbWorkload;
  /// User-friendly database name.
  late final pulumi.Output<String> displayName;
  /// Encryption key provider. Valid configurable values are `ORACLE_MANAGED` and `AWS_KMS`.
  late final pulumi.Output<String> encryptionKeyProvider;
  /// Whether automatic compute scaling is enabled.
  late final pulumi.Output<bool> isAutoScalingEnabled;
  /// Whether automatic storage scaling is enabled.
  late final pulumi.Output<bool> isAutoScalingForStorageEnabled;
  /// Whether the backup retention period is locked against shortening.
  late final pulumi.Output<bool> isBackupRetentionLocked;
  /// Whether local Oracle Data Guard is enabled.
  late final pulumi.Output<bool> isLocalDataGuardEnabled;
  /// Whether mutual TLS is required for database connections.
  late final pulumi.Output<bool> isMtlsConnectionRequired;
  /// Whether the database is a refreshable clone.
  late final pulumi.Output<bool> isRefreshableClone;
  /// ARN of the AWS KMS key used when `encryptionKeyProvider` is `AWS_KMS`.
  late final pulumi.Output<String> kmsKeyId;
  /// Oracle license model. Valid values are `BRING_YOUR_OWN_LICENSE` and `LICENSE_INCLUDED`.
  late final pulumi.Output<String> licenseModel;
  /// Maximum data-loss limit, in seconds, for automatic local Data Guard failover.
  late final pulumi.Output<int> localAdgAutoFailoverMaxDataLossLimit;
  /// Long-term backup schedule. See `longTermBackupSchedule` Block below.
  late final pulumi.Output<AutonomousDatabaseLongTermBackupSchedule?> longTermBackupSchedule;
  /// National character set. Changing this value creates a new resource.
  late final pulumi.Output<String> ncharacterSet;
  /// OCI resource anchor name.
  late final pulumi.Output<String> ociResourceAnchorName;
  /// OCI console URL.
  late final pulumi.Output<String> ociUrl;
  /// Oracle Cloud Identifier.
  late final pulumi.Output<String> ocid;
  /// ARN of the associated ODB network.
  late final pulumi.Output<String> odbNetworkArn;
  /// ID of the ODB network used by the database. Changing this value creates a new resource.
  late final pulumi.Output<String> odbNetworkId;
  /// Database open mode.
  late final pulumi.Output<String> openMode;
  /// Progress of the current operation.
  late final pulumi.Output<double> percentProgress;
  /// Database permission level.
  late final pulumi.Output<String> permissionLevel;
  /// Private endpoint hostname.
  late final pulumi.Output<String> privateEndpoint;
  /// Private endpoint IP address.
  late final pulumi.Output<String> privateEndpointIp;
  /// Private endpoint label.
  late final pulumi.Output<String> privateEndpointLabel;
  /// Refresh mode for a refreshable clone.
  late final pulumi.Output<String> refreshableMode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the resource-pool leader Autonomous Database.
  late final pulumi.Output<String> resourcePoolLeaderId;
  /// Resource pool configuration. See `resourcePoolSummary` Block below.
  late final pulumi.Output<AutonomousDatabaseResourcePoolSummary?> resourcePoolSummary;
  /// Scheduled database start and stop times. See `scheduledOperations` Block below.
  late final pulumi.Output<List<AutonomousDatabaseScheduledOperation>?> scheduledOperations;
  /// Oracle service console URL.
  late final pulumi.Output<String> serviceConsoleUrl;
  /// Source from which to create the database. Valid values are `NONE`, `DATABASE`, `BACKUP_FROM_ID`, `BACKUP_FROM_TIMESTAMP`, `CROSS_REGION_DATAGUARD`, `CROSS_REGION_DISASTER_RECOVERY`, and `CLONE_TO_REFRESHABLE`. Changing this value creates a new resource.
  late final pulumi.Output<String?> source;
  /// Source-specific configuration used during creation. See `sourceConfiguration` Block below. Changing this value creates a new resource.
  late final pulumi.Output<AutonomousDatabaseSourceConfiguration?> sourceConfiguration;
  /// ID of the source database or backup.
  late final pulumi.Output<String> sourceId;
  /// Oracle SQL Developer Web URL.
  late final pulumi.Output<String> sqlWebDeveloperUrl;
  /// List of between 1 and 1024 IP addresses allowed to access the standby database.
  late final pulumi.Output<List<String>> standbyAllowlistedIps;
  /// Source of the standby allowlist. Valid values are `PRIMARY`, `SEPARATE`, and `NOT_APPLICABLE`.
  late final pulumi.Output<String> standbyAllowlistedIpsSource;
  /// Current database lifecycle status.
  late final pulumi.Output<String> status;
  /// Additional lifecycle status information.
  late final pulumi.Output<String> statusReason;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// RFC3339 timestamp at which automatic refresh begins.
  late final pulumi.Output<String> timeOfAutoRefreshStart;
  late final pulumi.Output<AutonomousDatabaseTimeouts?> timeouts;
  /// Transportable tablespace configuration. See `transportableTablespace` Block below. Changing this value creates a new resource.
  late final pulumi.Output<AutonomousDatabaseTransportableTablespace?> transportableTablespace;

  /// Creates a new [AutonomousDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutonomousDatabase]. {@macro pulumi_odb_autonomous_database_autonomous_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutonomousDatabase(
    String name, {
    AutonomousDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:odb/autonomousDatabase:AutonomousDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.51.1').merge(options),
          additionalSecretOutputs: const ['adminPassword', 'adminPasswordWo'],
        ) {
    actualUsedDataStorageSizeInTbs = registerOutput<double>('actualUsedDataStorageSizeInTbs');
    adminPassword = registerOutput<String?>('adminPassword', isSecret: true);
    adminPasswordSource = registerOutput<AutonomousDatabaseAdminPasswordSource?>('adminPasswordSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseAdminPasswordSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    adminPasswordWo = registerOutput<String?>('adminPasswordWo', isSecret: true);
    adminPasswordWoVersion = registerOutput<int?>('adminPasswordWoVersion');
    allocatedStorageSizeInTbs = registerOutput<double>('allocatedStorageSizeInTbs');
    allowlistedIps = registerOutput<List<String>>('allowlistedIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    autoRefreshFrequencyInSeconds = registerOutput<int>('autoRefreshFrequencyInSeconds');
    autoRefreshPointLagInSeconds = registerOutput<int>('autoRefreshPointLagInSeconds');
    autonomousMaintenanceScheduleType = registerOutput<String>('autonomousMaintenanceScheduleType');
    availabilityZone = registerOutput<String>('availabilityZone');
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    availableUpgradeVersions = registerOutput<List<String>>('availableUpgradeVersions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    backupRetentionPeriodInDays = registerOutput<int>('backupRetentionPeriodInDays');
    byolComputeCountLimit = registerOutput<double>('byolComputeCountLimit');
    characterSet = registerOutput<String>('characterSet');
    computeCount = registerOutput<double>('computeCount');
    computeModel = registerOutput<String>('computeModel');
    cpuCoreCount = registerOutput<int>('cpuCoreCount');
    createdAt = registerOutput<String>('createdAt');
    customerContactsToSendToOcis = registerOutput<List<AutonomousDatabaseCustomerContactsToSendToOci>?>('customerContactsToSendToOcis', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutonomousDatabaseCustomerContactsToSendToOci>(guardedValue, (value) => AutonomousDatabaseCustomerContactsToSendToOci.fromMap((value as Map).cast<String, dynamic>())); });
    dataStorageSizeInGbs = registerOutput<int>('dataStorageSizeInGbs');
    dataStorageSizeInTbs = registerOutput<double>('dataStorageSizeInTbs');
    databaseEdition = registerOutput<String>('databaseEdition');
    databaseType = registerOutput<String>('databaseType');
    dbName = registerOutput<String>('dbName');
    dbToolsDetails = registerOutput<List<AutonomousDatabaseDbToolsDetail>?>('dbToolsDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutonomousDatabaseDbToolsDetail>(guardedValue, (value) => AutonomousDatabaseDbToolsDetail.fromMap((value as Map).cast<String, dynamic>())); });
    dbVersion = registerOutput<String>('dbVersion');
    dbWorkload = registerOutput<String>('dbWorkload');
    displayName = registerOutput<String>('displayName');
    encryptionKeyProvider = registerOutput<String>('encryptionKeyProvider');
    isAutoScalingEnabled = registerOutput<bool>('isAutoScalingEnabled');
    isAutoScalingForStorageEnabled = registerOutput<bool>('isAutoScalingForStorageEnabled');
    isBackupRetentionLocked = registerOutput<bool>('isBackupRetentionLocked');
    isLocalDataGuardEnabled = registerOutput<bool>('isLocalDataGuardEnabled');
    isMtlsConnectionRequired = registerOutput<bool>('isMtlsConnectionRequired');
    isRefreshableClone = registerOutput<bool>('isRefreshableClone');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    licenseModel = registerOutput<String>('licenseModel');
    localAdgAutoFailoverMaxDataLossLimit = registerOutput<int>('localAdgAutoFailoverMaxDataLossLimit');
    longTermBackupSchedule = registerOutput<AutonomousDatabaseLongTermBackupSchedule?>('longTermBackupSchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseLongTermBackupSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ncharacterSet = registerOutput<String>('ncharacterSet');
    ociResourceAnchorName = registerOutput<String>('ociResourceAnchorName');
    ociUrl = registerOutput<String>('ociUrl');
    ocid = registerOutput<String>('ocid');
    odbNetworkArn = registerOutput<String>('odbNetworkArn');
    odbNetworkId = registerOutput<String>('odbNetworkId');
    openMode = registerOutput<String>('openMode');
    percentProgress = registerOutput<double>('percentProgress');
    permissionLevel = registerOutput<String>('permissionLevel');
    privateEndpoint = registerOutput<String>('privateEndpoint');
    privateEndpointIp = registerOutput<String>('privateEndpointIp');
    privateEndpointLabel = registerOutput<String>('privateEndpointLabel');
    refreshableMode = registerOutput<String>('refreshableMode');
    region = registerOutput<String>('region');
    resourcePoolLeaderId = registerOutput<String>('resourcePoolLeaderId');
    resourcePoolSummary = registerOutput<AutonomousDatabaseResourcePoolSummary?>('resourcePoolSummary', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseResourcePoolSummary.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scheduledOperations = registerOutput<List<AutonomousDatabaseScheduledOperation>?>('scheduledOperations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutonomousDatabaseScheduledOperation>(guardedValue, (value) => AutonomousDatabaseScheduledOperation.fromMap((value as Map).cast<String, dynamic>())); });
    serviceConsoleUrl = registerOutput<String>('serviceConsoleUrl');
    source = registerOutput<String?>('source');
    sourceConfiguration = registerOutput<AutonomousDatabaseSourceConfiguration?>('sourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceId = registerOutput<String>('sourceId');
    sqlWebDeveloperUrl = registerOutput<String>('sqlWebDeveloperUrl');
    standbyAllowlistedIps = registerOutput<List<String>>('standbyAllowlistedIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    standbyAllowlistedIpsSource = registerOutput<String>('standbyAllowlistedIpsSource');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeOfAutoRefreshStart = registerOutput<String>('timeOfAutoRefreshStart');
    timeouts = registerOutput<AutonomousDatabaseTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transportableTablespace = registerOutput<AutonomousDatabaseTransportableTablespace?>('transportableTablespace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseTransportableTablespace.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AutonomousDatabase] resource's state with the given [name] and [id].
  static AutonomousDatabase get(
    String name,
    pulumi.Input<String> id, {
    AutonomousDatabaseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AutonomousDatabase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AutonomousDatabase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:odb/autonomousDatabase:AutonomousDatabase',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actualUsedDataStorageSizeInTbs = registerOutput<double>('actualUsedDataStorageSizeInTbs');
    adminPassword = registerOutput<String?>('adminPassword', isSecret: true);
    adminPasswordSource = registerOutput<AutonomousDatabaseAdminPasswordSource?>('adminPasswordSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseAdminPasswordSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    adminPasswordWo = registerOutput<String?>('adminPasswordWo', isSecret: true);
    adminPasswordWoVersion = registerOutput<int?>('adminPasswordWoVersion');
    allocatedStorageSizeInTbs = registerOutput<double>('allocatedStorageSizeInTbs');
    allowlistedIps = registerOutput<List<String>>('allowlistedIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    autoRefreshFrequencyInSeconds = registerOutput<int>('autoRefreshFrequencyInSeconds');
    autoRefreshPointLagInSeconds = registerOutput<int>('autoRefreshPointLagInSeconds');
    autonomousMaintenanceScheduleType = registerOutput<String>('autonomousMaintenanceScheduleType');
    availabilityZone = registerOutput<String>('availabilityZone');
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    availableUpgradeVersions = registerOutput<List<String>>('availableUpgradeVersions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    backupRetentionPeriodInDays = registerOutput<int>('backupRetentionPeriodInDays');
    byolComputeCountLimit = registerOutput<double>('byolComputeCountLimit');
    characterSet = registerOutput<String>('characterSet');
    computeCount = registerOutput<double>('computeCount');
    computeModel = registerOutput<String>('computeModel');
    cpuCoreCount = registerOutput<int>('cpuCoreCount');
    createdAt = registerOutput<String>('createdAt');
    customerContactsToSendToOcis = registerOutput<List<AutonomousDatabaseCustomerContactsToSendToOci>?>('customerContactsToSendToOcis', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutonomousDatabaseCustomerContactsToSendToOci>(guardedValue, (value) => AutonomousDatabaseCustomerContactsToSendToOci.fromMap((value as Map).cast<String, dynamic>())); });
    dataStorageSizeInGbs = registerOutput<int>('dataStorageSizeInGbs');
    dataStorageSizeInTbs = registerOutput<double>('dataStorageSizeInTbs');
    databaseEdition = registerOutput<String>('databaseEdition');
    databaseType = registerOutput<String>('databaseType');
    dbName = registerOutput<String>('dbName');
    dbToolsDetails = registerOutput<List<AutonomousDatabaseDbToolsDetail>?>('dbToolsDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutonomousDatabaseDbToolsDetail>(guardedValue, (value) => AutonomousDatabaseDbToolsDetail.fromMap((value as Map).cast<String, dynamic>())); });
    dbVersion = registerOutput<String>('dbVersion');
    dbWorkload = registerOutput<String>('dbWorkload');
    displayName = registerOutput<String>('displayName');
    encryptionKeyProvider = registerOutput<String>('encryptionKeyProvider');
    isAutoScalingEnabled = registerOutput<bool>('isAutoScalingEnabled');
    isAutoScalingForStorageEnabled = registerOutput<bool>('isAutoScalingForStorageEnabled');
    isBackupRetentionLocked = registerOutput<bool>('isBackupRetentionLocked');
    isLocalDataGuardEnabled = registerOutput<bool>('isLocalDataGuardEnabled');
    isMtlsConnectionRequired = registerOutput<bool>('isMtlsConnectionRequired');
    isRefreshableClone = registerOutput<bool>('isRefreshableClone');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    licenseModel = registerOutput<String>('licenseModel');
    localAdgAutoFailoverMaxDataLossLimit = registerOutput<int>('localAdgAutoFailoverMaxDataLossLimit');
    longTermBackupSchedule = registerOutput<AutonomousDatabaseLongTermBackupSchedule?>('longTermBackupSchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseLongTermBackupSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ncharacterSet = registerOutput<String>('ncharacterSet');
    ociResourceAnchorName = registerOutput<String>('ociResourceAnchorName');
    ociUrl = registerOutput<String>('ociUrl');
    ocid = registerOutput<String>('ocid');
    odbNetworkArn = registerOutput<String>('odbNetworkArn');
    odbNetworkId = registerOutput<String>('odbNetworkId');
    openMode = registerOutput<String>('openMode');
    percentProgress = registerOutput<double>('percentProgress');
    permissionLevel = registerOutput<String>('permissionLevel');
    privateEndpoint = registerOutput<String>('privateEndpoint');
    privateEndpointIp = registerOutput<String>('privateEndpointIp');
    privateEndpointLabel = registerOutput<String>('privateEndpointLabel');
    refreshableMode = registerOutput<String>('refreshableMode');
    region = registerOutput<String>('region');
    resourcePoolLeaderId = registerOutput<String>('resourcePoolLeaderId');
    resourcePoolSummary = registerOutput<AutonomousDatabaseResourcePoolSummary?>('resourcePoolSummary', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseResourcePoolSummary.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scheduledOperations = registerOutput<List<AutonomousDatabaseScheduledOperation>?>('scheduledOperations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutonomousDatabaseScheduledOperation>(guardedValue, (value) => AutonomousDatabaseScheduledOperation.fromMap((value as Map).cast<String, dynamic>())); });
    serviceConsoleUrl = registerOutput<String>('serviceConsoleUrl');
    source = registerOutput<String?>('source');
    sourceConfiguration = registerOutput<AutonomousDatabaseSourceConfiguration?>('sourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceId = registerOutput<String>('sourceId');
    sqlWebDeveloperUrl = registerOutput<String>('sqlWebDeveloperUrl');
    standbyAllowlistedIps = registerOutput<List<String>>('standbyAllowlistedIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    standbyAllowlistedIpsSource = registerOutput<String>('standbyAllowlistedIpsSource');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeOfAutoRefreshStart = registerOutput<String>('timeOfAutoRefreshStart');
    timeouts = registerOutput<AutonomousDatabaseTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transportableTablespace = registerOutput<AutonomousDatabaseTransportableTablespace?>('transportableTablespace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseTransportableTablespace.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AutonomousDatabase] resource.
  AutonomousDatabase.reference(String urn)
    : super(
        'aws:odb/autonomousDatabase:AutonomousDatabase',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['adminPassword', 'adminPasswordWo'],
        isResourceReference: true,
      ) {
    actualUsedDataStorageSizeInTbs = registerOutput<double>('actualUsedDataStorageSizeInTbs');
    adminPassword = registerOutput<String?>('adminPassword', isSecret: true);
    adminPasswordSource = registerOutput<AutonomousDatabaseAdminPasswordSource?>('adminPasswordSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseAdminPasswordSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    adminPasswordWo = registerOutput<String?>('adminPasswordWo', isSecret: true);
    adminPasswordWoVersion = registerOutput<int?>('adminPasswordWoVersion');
    allocatedStorageSizeInTbs = registerOutput<double>('allocatedStorageSizeInTbs');
    allowlistedIps = registerOutput<List<String>>('allowlistedIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    autoRefreshFrequencyInSeconds = registerOutput<int>('autoRefreshFrequencyInSeconds');
    autoRefreshPointLagInSeconds = registerOutput<int>('autoRefreshPointLagInSeconds');
    autonomousMaintenanceScheduleType = registerOutput<String>('autonomousMaintenanceScheduleType');
    availabilityZone = registerOutput<String>('availabilityZone');
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    availableUpgradeVersions = registerOutput<List<String>>('availableUpgradeVersions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    backupRetentionPeriodInDays = registerOutput<int>('backupRetentionPeriodInDays');
    byolComputeCountLimit = registerOutput<double>('byolComputeCountLimit');
    characterSet = registerOutput<String>('characterSet');
    computeCount = registerOutput<double>('computeCount');
    computeModel = registerOutput<String>('computeModel');
    cpuCoreCount = registerOutput<int>('cpuCoreCount');
    createdAt = registerOutput<String>('createdAt');
    customerContactsToSendToOcis = registerOutput<List<AutonomousDatabaseCustomerContactsToSendToOci>?>('customerContactsToSendToOcis', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutonomousDatabaseCustomerContactsToSendToOci>(guardedValue, (value) => AutonomousDatabaseCustomerContactsToSendToOci.fromMap((value as Map).cast<String, dynamic>())); });
    dataStorageSizeInGbs = registerOutput<int>('dataStorageSizeInGbs');
    dataStorageSizeInTbs = registerOutput<double>('dataStorageSizeInTbs');
    databaseEdition = registerOutput<String>('databaseEdition');
    databaseType = registerOutput<String>('databaseType');
    dbName = registerOutput<String>('dbName');
    dbToolsDetails = registerOutput<List<AutonomousDatabaseDbToolsDetail>?>('dbToolsDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutonomousDatabaseDbToolsDetail>(guardedValue, (value) => AutonomousDatabaseDbToolsDetail.fromMap((value as Map).cast<String, dynamic>())); });
    dbVersion = registerOutput<String>('dbVersion');
    dbWorkload = registerOutput<String>('dbWorkload');
    displayName = registerOutput<String>('displayName');
    encryptionKeyProvider = registerOutput<String>('encryptionKeyProvider');
    isAutoScalingEnabled = registerOutput<bool>('isAutoScalingEnabled');
    isAutoScalingForStorageEnabled = registerOutput<bool>('isAutoScalingForStorageEnabled');
    isBackupRetentionLocked = registerOutput<bool>('isBackupRetentionLocked');
    isLocalDataGuardEnabled = registerOutput<bool>('isLocalDataGuardEnabled');
    isMtlsConnectionRequired = registerOutput<bool>('isMtlsConnectionRequired');
    isRefreshableClone = registerOutput<bool>('isRefreshableClone');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    licenseModel = registerOutput<String>('licenseModel');
    localAdgAutoFailoverMaxDataLossLimit = registerOutput<int>('localAdgAutoFailoverMaxDataLossLimit');
    longTermBackupSchedule = registerOutput<AutonomousDatabaseLongTermBackupSchedule?>('longTermBackupSchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseLongTermBackupSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ncharacterSet = registerOutput<String>('ncharacterSet');
    ociResourceAnchorName = registerOutput<String>('ociResourceAnchorName');
    ociUrl = registerOutput<String>('ociUrl');
    ocid = registerOutput<String>('ocid');
    odbNetworkArn = registerOutput<String>('odbNetworkArn');
    odbNetworkId = registerOutput<String>('odbNetworkId');
    openMode = registerOutput<String>('openMode');
    percentProgress = registerOutput<double>('percentProgress');
    permissionLevel = registerOutput<String>('permissionLevel');
    privateEndpoint = registerOutput<String>('privateEndpoint');
    privateEndpointIp = registerOutput<String>('privateEndpointIp');
    privateEndpointLabel = registerOutput<String>('privateEndpointLabel');
    refreshableMode = registerOutput<String>('refreshableMode');
    region = registerOutput<String>('region');
    resourcePoolLeaderId = registerOutput<String>('resourcePoolLeaderId');
    resourcePoolSummary = registerOutput<AutonomousDatabaseResourcePoolSummary?>('resourcePoolSummary', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseResourcePoolSummary.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scheduledOperations = registerOutput<List<AutonomousDatabaseScheduledOperation>?>('scheduledOperations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutonomousDatabaseScheduledOperation>(guardedValue, (value) => AutonomousDatabaseScheduledOperation.fromMap((value as Map).cast<String, dynamic>())); });
    serviceConsoleUrl = registerOutput<String>('serviceConsoleUrl');
    source = registerOutput<String?>('source');
    sourceConfiguration = registerOutput<AutonomousDatabaseSourceConfiguration?>('sourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceId = registerOutput<String>('sourceId');
    sqlWebDeveloperUrl = registerOutput<String>('sqlWebDeveloperUrl');
    standbyAllowlistedIps = registerOutput<List<String>>('standbyAllowlistedIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    standbyAllowlistedIpsSource = registerOutput<String>('standbyAllowlistedIpsSource');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeOfAutoRefreshStart = registerOutput<String>('timeOfAutoRefreshStart');
    timeouts = registerOutput<AutonomousDatabaseTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transportableTablespace = registerOutput<AutonomousDatabaseTransportableTablespace?>('transportableTablespace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseTransportableTablespace.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
