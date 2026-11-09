import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_database_args.dart';
import 'tenant_database_master_user_secret.dart';
import 'tenant_database_state.dart';
import 'tenant_database_timeouts.dart';

/// Manages a tenant database (pluggable database, PDB) in an RDS for Oracle CDB instance in the multi-tenant configuration. The DB instance must use the `oracle-ee-cdb` or `oracle-se2-cdb` engine with `multiTenant = true`. See the [AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Oracle.Concepts.CDBs.html) for details.
///
/// The initial tenant database is created with the DB instance, using its `dbName`, `username`, and password. Use this resource to manage additional tenant databases or to import the initial one. RDS doesn't allow deleting the last tenant database in a DB instance.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.Instance("example", {
///     allocatedStorage: 20,
///     applyImmediately: true,
///     dbName: "PDB1",
///     engine: "oracle-se2-cdb",
///     engineVersion: "19.0.0.0.ru-2026-07.rur-2026-07.r1",
///     finalSnapshotIdentifier: "example-final",
///     identifier: "example",
///     instanceClass: aws.rds.InstanceType.T3_Small,
///     licenseModel: "bring-your-own-license",
///     multiTenant: true,
///     passwordWo: masterPassword,
///     passwordWoVersion: 1,
///     username: "admin",
/// });
/// const exampleTenantDatabase = new aws.rds.TenantDatabase("example", {
///     dbInstanceIdentifier: example.identifier,
///     finalSnapshotIdentifier: "example-pdb2-final",
///     masterUserPasswordWo: tenantPassword,
///     masterUserPasswordWoVersion: 1,
///     masterUsername: "pdbadmin",
///     tenantDbName: "PDB2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.Instance("example",
///     allocated_storage=20,
///     apply_immediately=True,
///     db_name="PDB1",
///     engine="oracle-se2-cdb",
///     engine_version="19.0.0.0.ru-2026-07.rur-2026-07.r1",
///     final_snapshot_identifier="example-final",
///     identifier="example",
///     instance_class=aws.rds.InstanceType.T3_SMALL,
///     license_model="bring-your-own-license",
///     multi_tenant=True,
///     password_wo=master_password,
///     password_wo_version=1,
///     username="admin")
/// example_tenant_database = aws.rds.TenantDatabase("example",
///     db_instance_identifier=example.identifier,
///     final_snapshot_identifier="example-pdb2-final",
///     master_user_password_wo=tenant_password,
///     master_user_password_wo_version=1,
///     master_username="pdbadmin",
///     tenant_db_name="PDB2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rds.Instance("example", new()
///     {
///         AllocatedStorage = 20,
///         ApplyImmediately = true,
///         DbName = "PDB1",
///         Engine = "oracle-se2-cdb",
///         EngineVersion = "19.0.0.0.ru-2026-07.rur-2026-07.r1",
///         FinalSnapshotIdentifier = "example-final",
///         Identifier = "example",
///         InstanceClass = Aws.Rds.InstanceType.T3_Small,
///         LicenseModel = "bring-your-own-license",
///         MultiTenant = true,
///         PasswordWo = masterPassword,
///         PasswordWoVersion = 1,
///         Username = "admin",
///     });
///
///     var exampleTenantDatabase = new Aws.Rds.TenantDatabase("example", new()
///     {
///         DbInstanceIdentifier = example.Identifier,
///         FinalSnapshotIdentifier = "example-pdb2-final",
///         MasterUserPasswordWo = tenantPassword,
///         MasterUserPasswordWoVersion = 1,
///         MasterUsername = "pdbadmin",
///         TenantDbName = "PDB2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := rds.NewInstance(ctx, "example", &rds.InstanceArgs{
/// 			AllocatedStorage:        pulumi.Int(20),
/// 			ApplyImmediately:        pulumi.Bool(true),
/// 			DbName:                  pulumi.String("PDB1"),
/// 			Engine:                  pulumi.String("oracle-se2-cdb"),
/// 			EngineVersion:           pulumi.String("19.0.0.0.ru-2026-07.rur-2026-07.r1"),
/// 			FinalSnapshotIdentifier: pulumi.String("example-final"),
/// 			Identifier:              pulumi.String("example"),
/// 			InstanceClass:           pulumi.String(rds.InstanceType_T3_Small),
/// 			LicenseModel:            pulumi.String("bring-your-own-license"),
/// 			MultiTenant:             pulumi.Bool(true),
/// 			PasswordWo:              pulumi.Any(masterPassword),
/// 			PasswordWoVersion:       pulumi.Int(1),
/// 			Username:                pulumi.String("admin"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewTenantDatabase(ctx, "example", &rds.TenantDatabaseArgs{
/// 			DbInstanceIdentifier:        example.Identifier,
/// 			FinalSnapshotIdentifier:     pulumi.String("example-pdb2-final"),
/// 			MasterUserPasswordWo:        pulumi.Any(tenantPassword),
/// 			MasterUserPasswordWoVersion: pulumi.Int(1),
/// 			MasterUsername:              pulumi.String("pdbadmin"),
/// 			TenantDbName:                pulumi.String("PDB2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_rds_instance" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   allocated_storage         = 20
///   apply_immediately         = true
///   db_name                   = "PDB1"
///   engine                    = "oracle-se2-cdb"
///   engine_version            = "19.0.0.0.ru-2026-07.rur-2026-07.r1"
///   final_snapshot_identifier = "example-final"
///   identifier                = "example"
///   instance_class            = "db.t3.small"
///   license_model             = "bring-your-own-license"
///   multi_tenant              = true
///   password_wo               = masterPassword
///   password_wo_version       = 1
///   username                  = "admin"
/// }
/// resource "aws_rds_tenant_database" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   db_instance_identifier          = aws_rds_instance.example.identifier
///   final_snapshot_identifier       = "example-pdb2-final"
///   master_user_password_wo         = tenantPassword
///   master_user_password_wo_version = 1
///   master_username                 = "pdbadmin"
///   tenant_db_name                  = "PDB2"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.Instance;
/// import com.pulumi.aws.rds.InstanceArgs;
/// import com.pulumi.aws.rds.TenantDatabase;
/// import com.pulumi.aws.rds.TenantDatabaseArgs;
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
///         var example = new Instance("example", InstanceArgs.builder()
///             .allocatedStorage(20)
///             .applyImmediately(true)
///             .dbName("PDB1")
///             .engine("oracle-se2-cdb")
///             .engineVersion("19.0.0.0.ru-2026-07.rur-2026-07.r1")
///             .finalSnapshotIdentifier("example-final")
///             .identifier("example")
///             .instanceClass("db.t3.small")
///             .licenseModel("bring-your-own-license")
///             .multiTenant(true)
///             .passwordWo(masterPassword)
///             .passwordWoVersion(1)
///             .username("admin")
///             .build());
///
///         var exampleTenantDatabase = new TenantDatabase("exampleTenantDatabase", TenantDatabaseArgs.builder()
///             .dbInstanceIdentifier(example.identifier())
///             .finalSnapshotIdentifier("example-pdb2-final")
///             .masterUserPasswordWo(tenantPassword)
///             .masterUserPasswordWoVersion(1)
///             .masterUsername("pdbadmin")
///             .tenantDbName("PDB2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rds:Instance
///     properties:
///       allocatedStorage: 20
///       applyImmediately: true
///       dbName: PDB1
///       engine: oracle-se2-cdb
///       engineVersion: 19.0.0.0.ru-2026-07.rur-2026-07.r1
///       finalSnapshotIdentifier: example-final
///       identifier: example
///       instanceClass: db.t3.small
///       licenseModel: bring-your-own-license
///       multiTenant: true
///       passwordWo: ${masterPassword}
///       passwordWoVersion: 1
///       username: admin
///   exampleTenantDatabase:
///     type: aws:rds:TenantDatabase
///     name: example
///     properties:
///       dbInstanceIdentifier: ${example.identifier}
///       finalSnapshotIdentifier: example-pdb2-final
///       masterUserPasswordWo: ${tenantPassword}
///       masterUserPasswordWoVersion: 1
///       masterUsername: pdbadmin
///       tenantDbName: PDB2
/// ```
///
///
/// ### Password Managed by AWS Secrets Manager
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.TenantDatabase("example", {
///     dbInstanceIdentifier: exampleAwsDbInstance.identifier,
///     manageMasterUserPassword: true,
///     masterUsername: "pdbadmin",
///     skipFinalSnapshot: true,
///     tenantDbName: "PDB2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.TenantDatabase("example",
///     db_instance_identifier=example_aws_db_instance["identifier"],
///     manage_master_user_password=True,
///     master_username="pdbadmin",
///     skip_final_snapshot=True,
///     tenant_db_name="PDB2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rds.TenantDatabase("example", new()
///     {
///         DbInstanceIdentifier = exampleAwsDbInstance.Identifier,
///         ManageMasterUserPassword = true,
///         MasterUsername = "pdbadmin",
///         SkipFinalSnapshot = true,
///         TenantDbName = "PDB2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewTenantDatabase(ctx, "example", &rds.TenantDatabaseArgs{
/// 			DbInstanceIdentifier:     pulumi.Any(exampleAwsDbInstance.Identifier),
/// 			ManageMasterUserPassword: pulumi.Bool(true),
/// 			MasterUsername:           pulumi.String("pdbadmin"),
/// 			SkipFinalSnapshot:        pulumi.Bool(true),
/// 			TenantDbName:             pulumi.String("PDB2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_rds_tenant_database" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   db_instance_identifier      = exampleAwsDbInstance.identifier
///   manage_master_user_password = true
///   master_username             = "pdbadmin"
///   skip_final_snapshot         = true
///   tenant_db_name              = "PDB2"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.TenantDatabase;
/// import com.pulumi.aws.rds.TenantDatabaseArgs;
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
///         var example = new TenantDatabase("example", TenantDatabaseArgs.builder()
///             .dbInstanceIdentifier(exampleAwsDbInstance.get("identifier"))
///             .manageMasterUserPassword(true)
///             .masterUsername("pdbadmin")
///             .skipFinalSnapshot(true)
///             .tenantDbName("PDB2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rds:TenantDatabase
///     properties:
///       dbInstanceIdentifier: ${exampleAwsDbInstance.identifier}
///       manageMasterUserPassword: true
///       masterUsername: pdbadmin
///       skipFinalSnapshot: true
///       tenantDbName: PDB2
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `tenantDatabaseResourceId` (String) Region-unique, immutable identifier of the tenant database.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import RDS tenant databases using the `tenantDatabaseResourceId`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/tenantDatabase:TenantDatabase example tdb-ABCDEFGHIJKLMNOPQRSTUVWXYZ
/// ```
class TenantDatabase extends pulumi.CustomResource {
  /// ARN of the tenant database.
  late final pulumi.Output<String> arn;
  /// Character set of the tenant database. Defaults to `AL32UTF8`.
  late final pulumi.Output<String> characterSetName;
  /// Identifier of the DB instance that contains the tenant database.
  late final pulumi.Output<String> dbInstanceIdentifier;
  /// Name of the DB snapshot created when the tenant database is deleted. Required unless `skipFinalSnapshot` is `true`.
  late final pulumi.Output<String?> finalSnapshotIdentifier;
  /// Whether to manage the master user password with AWS Secrets Manager. When `true`, conflicts with `masterUserPassword` and `masterUserPasswordWo`. Turning it off requires one of them.
  late final pulumi.Output<bool?> manageMasterUserPassword;
  /// Password for the master user. Stored in the Terraform state. Conflicts with `masterUserPasswordWo`.
  late final pulumi.Output<String?> masterUserPassword;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master user. Not stored in the Terraform state. Requires `masterUserPasswordWoVersion`.
  late final pulumi.Output<String?> masterUserPasswordWo;
  /// Version of `masterUserPasswordWo`. Change it to update the password.
  late final pulumi.Output<int?> masterUserPasswordWoVersion;
  /// ARN, ID, or alias of the AWS KMS key used to encrypt the Secrets Manager secret when `manageMasterUserPassword` is `true`. Can't be changed while `manageMasterUserPassword` is `true`; turn it off, apply, then turn it back on with the new key. After import, omit it or use the secret's key ARN. Defaults to the `aws/secretsmanager` key.
  late final pulumi.Output<String?> masterUserSecretKmsKeyId;
  /// Secrets Manager secret for the master user password when `manageMasterUserPassword` is `true`. See `masterUserSecret` Block below.
  late final pulumi.Output<List<TenantDatabaseMasterUserSecret>> masterUserSecrets;
  /// Name of the master user for the tenant database.
  late final pulumi.Output<String> masterUsername;
  /// National character set of the tenant database. Defaults to `AL16UTF16`.
  late final pulumi.Output<String> ncharCharacterSetName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Whether to skip the final DB snapshot when the tenant database is deleted. Defaults to `false`.
  late final pulumi.Output<bool> skipFinalSnapshot;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; **Note:** One of `manageMasterUserPassword`, `masterUserPassword`, or `masterUserPasswordWo` is required by RDS when creating a tenant database.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Region-unique, immutable identifier of the tenant database.
  late final pulumi.Output<String> tenantDatabaseResourceId;
  /// Name of the tenant database. Changing it renames the tenant database.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> tenantDbName;
  late final pulumi.Output<TenantDatabaseTimeouts?> timeouts;

  /// Creates a new [TenantDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TenantDatabase]. {@macro pulumi_rds_tenant_database_tenant_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TenantDatabase(
    String name, {
    TenantDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/tenantDatabase:TenantDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
          additionalSecretOutputs: const ['masterUserPassword', 'masterUserPasswordWo'],
        ) {
    arn = registerOutput<String>('arn');
    characterSetName = registerOutput<String>('characterSetName');
    dbInstanceIdentifier = registerOutput<String>('dbInstanceIdentifier');
    finalSnapshotIdentifier = registerOutput<String?>('finalSnapshotIdentifier');
    manageMasterUserPassword = registerOutput<bool?>('manageMasterUserPassword');
    masterUserPassword = registerOutput<String?>('masterUserPassword', isSecret: true);
    masterUserPasswordWo = registerOutput<String?>('masterUserPasswordWo', isSecret: true);
    masterUserPasswordWoVersion = registerOutput<int?>('masterUserPasswordWoVersion');
    masterUserSecretKmsKeyId = registerOutput<String?>('masterUserSecretKmsKeyId');
    masterUserSecrets = registerOutput<List<TenantDatabaseMasterUserSecret>>('masterUserSecrets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TenantDatabaseMasterUserSecret>(guardedValue, (value) => TenantDatabaseMasterUserSecret.fromMap((value as Map).cast<String, dynamic>())); });
    masterUsername = registerOutput<String>('masterUsername');
    ncharCharacterSetName = registerOutput<String>('ncharCharacterSetName');
    region = registerOutput<String>('region');
    skipFinalSnapshot = registerOutput<bool>('skipFinalSnapshot');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantDatabaseResourceId = registerOutput<String>('tenantDatabaseResourceId');
    tenantDbName = registerOutput<String>('tenantDbName');
    timeouts = registerOutput<TenantDatabaseTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TenantDatabaseTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [TenantDatabase] resource's state with the given [name] and [id].
  static TenantDatabase get(
    String name,
    pulumi.Input<String> id, {
    TenantDatabaseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TenantDatabase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TenantDatabase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/tenantDatabase:TenantDatabase',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    characterSetName = registerOutput<String>('characterSetName');
    dbInstanceIdentifier = registerOutput<String>('dbInstanceIdentifier');
    finalSnapshotIdentifier = registerOutput<String?>('finalSnapshotIdentifier');
    manageMasterUserPassword = registerOutput<bool?>('manageMasterUserPassword');
    masterUserPassword = registerOutput<String?>('masterUserPassword', isSecret: true);
    masterUserPasswordWo = registerOutput<String?>('masterUserPasswordWo', isSecret: true);
    masterUserPasswordWoVersion = registerOutput<int?>('masterUserPasswordWoVersion');
    masterUserSecretKmsKeyId = registerOutput<String?>('masterUserSecretKmsKeyId');
    masterUserSecrets = registerOutput<List<TenantDatabaseMasterUserSecret>>('masterUserSecrets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TenantDatabaseMasterUserSecret>(guardedValue, (value) => TenantDatabaseMasterUserSecret.fromMap((value as Map).cast<String, dynamic>())); });
    masterUsername = registerOutput<String>('masterUsername');
    ncharCharacterSetName = registerOutput<String>('ncharCharacterSetName');
    region = registerOutput<String>('region');
    skipFinalSnapshot = registerOutput<bool>('skipFinalSnapshot');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantDatabaseResourceId = registerOutput<String>('tenantDatabaseResourceId');
    tenantDbName = registerOutput<String>('tenantDbName');
    timeouts = registerOutput<TenantDatabaseTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TenantDatabaseTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [TenantDatabase] resource.
  TenantDatabase.reference(String urn)
    : super(
        'aws:rds/tenantDatabase:TenantDatabase',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['masterUserPassword', 'masterUserPasswordWo'],
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    characterSetName = registerOutput<String>('characterSetName');
    dbInstanceIdentifier = registerOutput<String>('dbInstanceIdentifier');
    finalSnapshotIdentifier = registerOutput<String?>('finalSnapshotIdentifier');
    manageMasterUserPassword = registerOutput<bool?>('manageMasterUserPassword');
    masterUserPassword = registerOutput<String?>('masterUserPassword', isSecret: true);
    masterUserPasswordWo = registerOutput<String?>('masterUserPasswordWo', isSecret: true);
    masterUserPasswordWoVersion = registerOutput<int?>('masterUserPasswordWoVersion');
    masterUserSecretKmsKeyId = registerOutput<String?>('masterUserSecretKmsKeyId');
    masterUserSecrets = registerOutput<List<TenantDatabaseMasterUserSecret>>('masterUserSecrets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TenantDatabaseMasterUserSecret>(guardedValue, (value) => TenantDatabaseMasterUserSecret.fromMap((value as Map).cast<String, dynamic>())); });
    masterUsername = registerOutput<String>('masterUsername');
    ncharCharacterSetName = registerOutput<String>('ncharCharacterSetName');
    region = registerOutput<String>('region');
    skipFinalSnapshot = registerOutput<bool>('skipFinalSnapshot');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantDatabaseResourceId = registerOutput<String>('tenantDatabaseResourceId');
    tenantDbName = registerOutput<String>('tenantDbName');
    timeouts = registerOutput<TenantDatabaseTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TenantDatabaseTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
