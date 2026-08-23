import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_blue_green_update.dart';
import 'instance_restore_to_point_in_time.dart';
import 'instance_s3_import.dart';
import 'instance_state.dart';

/// Provides an RDS instance resource.  A DB instance is an isolated database
/// environment in the cloud.  A DB instance can contain multiple user-created
/// databases.
///
/// Changes to a DB instance can occur when you manually change a parameter, such as
/// `allocatedStorage`, and are reflected in the next maintenance window. Because
/// of this, this provider may report a difference in its planning phase because a
/// modification has not yet taken place. You can use the `applyImmediately` flag
/// to instruct the service to apply the change immediately (see documentation
/// below).
///
/// When upgrading the major version of an engine, `allowMajorVersionUpgrade` must be set to `true`.
///
/// &gt; **Note:** using `applyImmediately` can result in a brief downtime as the server reboots.
/// See the AWS Docs on [RDS Instance Maintenance][instance-maintenance] for more information.
///
/// &gt; **Note:** All arguments including the username and password will be stored in the raw state as plain-text.
/// Read more about sensitive data instate.
///
///
///
///
/// Amazon RDS supports instance classes for General-purpose, Memory-optimized, Burstable Performance, and Optimized-reads use cases. For more information see [DB Instance Class Types](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html).
///
/// By default, RDS applies updates to DB Instances in-place, which can lead to service interruptions. Low-downtime updates minimize service interruptions by performing the updates with an [RDS Blue/Green deployment][blue-green] and switching over the instances when complete. Low-downtime updates are only available for MySQL, MariaDB, and PostgreSQL — other engines are not supported by RDS Blue/Green deployments — and cannot be used with DB Instances with replicas. Backups must be enabled. Enable low-downtime updates by setting `blue_green_update.enabled` to `true`.
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
/// const _default = new aws.rds.Instance("default", {
///     allocatedStorage: 10,
///     dbName: "mydb",
///     engine: "mysql",
///     engineVersion: "8.0",
///     instanceClass: aws.rds.InstanceType.T3_Micro,
///     username: "foo",
///     password: "foobarbaz",
///     parameterGroupName: "default.mysql8.0",
///     skipFinalSnapshot: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.Instance("default",
///     allocated_storage=10,
///     db_name="mydb",
///     engine="mysql",
///     engine_version="8.0",
///     instance_class=aws.rds.InstanceType.T3_MICRO,
///     username="foo",
///     password="foobarbaz",
///     parameter_group_name="default.mysql8.0",
///     skip_final_snapshot=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Rds.Instance("default", new()
///     {
///         AllocatedStorage = 10,
///         DbName = "mydb",
///         Engine = "mysql",
///         EngineVersion = "8.0",
///         InstanceClass = Aws.Rds.InstanceType.T3_Micro,
///         Username = "foo",
///         Password = "foobarbaz",
///         ParameterGroupName = "default.mysql8.0",
///         SkipFinalSnapshot = true,
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
/// 		_, err := rds.NewInstance(ctx, "default", &rds.InstanceArgs{
/// 			AllocatedStorage:   pulumi.Int(10),
/// 			DbName:             pulumi.String("mydb"),
/// 			Engine:             pulumi.String("mysql"),
/// 			EngineVersion:      pulumi.String("8.0"),
/// 			InstanceClass:      pulumi.String(rds.InstanceType_T3_Micro),
/// 			Username:           pulumi.String("foo"),
/// 			Password:           pulumi.String("foobarbaz"),
/// 			ParameterGroupName: pulumi.String("default.mysql8.0"),
/// 			SkipFinalSnapshot:  pulumi.Bool(true),
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
/// resource "aws_rds_instance" "default" {
///   allocated_storage    = 10
///   db_name              = "mydb"
///   engine               = "mysql"
///   engine_version       = "8.0"
///   instance_class       = "db.t3.micro"
///   username             = "foo"
///   password             = "foobarbaz"
///   parameter_group_name = "default.mysql8.0"
///   skip_final_snapshot  = true
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .allocatedStorage(10)
///             .dbName("mydb")
///             .engine("mysql")
///             .engineVersion("8.0")
///             .instanceClass("db.t3.micro")
///             .username("foo")
///             .password("foobarbaz")
///             .parameterGroupName("default.mysql8.0")
///             .skipFinalSnapshot(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:rds:Instance
///     properties:
///       allocatedStorage: 10
///       dbName: mydb
///       engine: mysql
///       engineVersion: '8.0'
///       instanceClass: db.t3.micro
///       username: foo
///       password: foobarbaz
///       parameterGroupName: default.mysql8.0
///       skipFinalSnapshot: true
/// ```
///
///
/// ### RDS Custom for Oracle Usage with Replica
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Lookup the available instance classes for the custom engine for the region being operated in
/// const custom_oracle = aws.rds.getOrderableDbInstance({
///     engine: "custom-oracle-ee",
///     engineVersion: "19.c.ee.002",
///     licenseModel: "bring-your-own-license",
///     storageType: "gp3",
///     preferredInstanceClasses: [
///         "db.r5.xlarge",
///         "db.r5.2xlarge",
///         "db.r5.4xlarge",
///     ],
/// });
/// // The RDS instance resource requires an ARN. Look up the ARN of the KMS key associated with the CEV.
/// const byId = aws.kms.getKey({
///     keyId: "example-ef278353ceba4a5a97de6784565b9f78",
/// });
/// const _default = new aws.rds.Instance("default", {
///     allocatedStorage: 50,
///     autoMinorVersionUpgrade: false,
///     customIamInstanceProfile: "AWSRDSCustomInstanceProfile",
///     backupRetentionPeriod: 7,
///     dbSubnetGroupName: dbSubnetGroupName,
///     engine: custom_oracle.then(custom_oracle => custom_oracle.engine),
///     engineVersion: custom_oracle.then(custom_oracle => custom_oracle.engineVersion),
///     identifier: "ee-instance-demo",
///     instanceClass: aws.rds.InstanceType[custom_oracle.then(custom_oracle => custom_oracle.instanceClass)],
///     kmsKeyId: byId.then(byId => byId.arn),
///     licenseModel: custom_oracle.then(custom_oracle => custom_oracle.licenseModel),
///     multiAz: false,
///     password: "avoid-plaintext-passwords",
///     username: "test",
///     storageEncrypted: true,
/// });
/// const test_replica = new aws.rds.Instance("test-replica", {
///     replicateSourceDb: _default.identifier,
///     replicaMode: "mounted",
///     autoMinorVersionUpgrade: false,
///     customIamInstanceProfile: "AWSRDSCustomInstanceProfile",
///     backupRetentionPeriod: 7,
///     identifier: "ee-instance-replica",
///     instanceClass: aws.rds.InstanceType[custom_oracle.then(custom_oracle => custom_oracle.instanceClass)],
///     kmsKeyId: byId.then(byId => byId.arn),
///     multiAz: false,
///     skipFinalSnapshot: true,
///     storageEncrypted: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Lookup the available instance classes for the custom engine for the region being operated in
/// custom_oracle = aws.rds.get_orderable_db_instance(engine="custom-oracle-ee",
///     engine_version="19.c.ee.002",
///     license_model="bring-your-own-license",
///     storage_type="gp3",
///     preferred_instance_classes=[
///         "db.r5.xlarge",
///         "db.r5.2xlarge",
///         "db.r5.4xlarge",
///     ])
/// # The RDS instance resource requires an ARN. Look up the ARN of the KMS key associated with the CEV.
/// by_id = aws.kms.get_key(key_id="example-ef278353ceba4a5a97de6784565b9f78")
/// default = aws.rds.Instance("default",
///     allocated_storage=50,
///     auto_minor_version_upgrade=False,
///     custom_iam_instance_profile="AWSRDSCustomInstanceProfile",
///     backup_retention_period=7,
///     db_subnet_group_name=db_subnet_group_name,
///     engine=custom_oracle.engine,
///     engine_version=custom_oracle.engine_version,
///     identifier="ee-instance-demo",
///     instance_class=aws.rds.InstanceType(custom_oracle.instance_class),
///     kms_key_id=by_id.arn,
///     license_model=custom_oracle.license_model,
///     multi_az=False,
///     password="avoid-plaintext-passwords",
///     username="test",
///     storage_encrypted=True)
/// test_replica = aws.rds.Instance("test-replica",
///     replicate_source_db=default.identifier,
///     replica_mode="mounted",
///     auto_minor_version_upgrade=False,
///     custom_iam_instance_profile="AWSRDSCustomInstanceProfile",
///     backup_retention_period=7,
///     identifier="ee-instance-replica",
///     instance_class=aws.rds.InstanceType(custom_oracle.instance_class),
///     kms_key_id=by_id.arn,
///     multi_az=False,
///     skip_final_snapshot=True,
///     storage_encrypted=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Lookup the available instance classes for the custom engine for the region being operated in
///     var custom_oracle = Aws.Rds.GetOrderableDbInstance.Invoke(new()
///     {
///         Engine = "custom-oracle-ee",
///         EngineVersion = "19.c.ee.002",
///         LicenseModel = "bring-your-own-license",
///         StorageType = "gp3",
///         PreferredInstanceClasses = new[]
///         {
///             "db.r5.xlarge",
///             "db.r5.2xlarge",
///             "db.r5.4xlarge",
///         },
///     });
///
///     // The RDS instance resource requires an ARN. Look up the ARN of the KMS key associated with the CEV.
///     var byId = Aws.Kms.GetKey.Invoke(new()
///     {
///         KeyId = "example-ef278353ceba4a5a97de6784565b9f78",
///     });
///
///     var @default = new Aws.Rds.Instance("default", new()
///     {
///         AllocatedStorage = 50,
///         AutoMinorVersionUpgrade = false,
///         CustomIamInstanceProfile = "AWSRDSCustomInstanceProfile",
///         BackupRetentionPeriod = 7,
///         DbSubnetGroupName = dbSubnetGroupName,
///         Engine = custom_oracle.Apply(custom_oracle => custom_oracle.Apply(getOrderableDbInstanceResult => getOrderableDbInstanceResult.Engine)),
///         EngineVersion = custom_oracle.Apply(custom_oracle => custom_oracle.Apply(getOrderableDbInstanceResult => getOrderableDbInstanceResult.EngineVersion)),
///         Identifier = "ee-instance-demo",
///         InstanceClass = custom_oracle.Apply(custom_oracle => custom_oracle.Apply(getOrderableDbInstanceResult => getOrderableDbInstanceResult.InstanceClass)).Apply(System.Enum.Parse<Aws.Rds.InstanceType>),
///         KmsKeyId = byId.Apply(getKeyResult => getKeyResult.Arn),
///         LicenseModel = custom_oracle.Apply(custom_oracle => custom_oracle.Apply(getOrderableDbInstanceResult => getOrderableDbInstanceResult.LicenseModel)),
///         MultiAz = false,
///         Password = "avoid-plaintext-passwords",
///         Username = "test",
///         StorageEncrypted = true,
///     });
///
///     var test_replica = new Aws.Rds.Instance("test-replica", new()
///     {
///         ReplicateSourceDb = @default.Identifier,
///         ReplicaMode = "mounted",
///         AutoMinorVersionUpgrade = false,
///         CustomIamInstanceProfile = "AWSRDSCustomInstanceProfile",
///         BackupRetentionPeriod = 7,
///         Identifier = "ee-instance-replica",
///         InstanceClass = custom_oracle.Apply(custom_oracle => custom_oracle.Apply(getOrderableDbInstanceResult => getOrderableDbInstanceResult.InstanceClass)).Apply(System.Enum.Parse<Aws.Rds.InstanceType>),
///         KmsKeyId = byId.Apply(getKeyResult => getKeyResult.Arn),
///         MultiAz = false,
///         SkipFinalSnapshot = true,
///         StorageEncrypted = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Lookup the available instance classes for the custom engine for the region being operated in
/// 		custom_oracle, err := rds.GetOrderableDbInstance(ctx, &rds.GetOrderableDbInstanceArgs{
/// 			Engine:        "custom-oracle-ee",
/// 			EngineVersion: pulumi.StringRef("19.c.ee.002"),
/// 			LicenseModel:  pulumi.StringRef("bring-your-own-license"),
/// 			StorageType:   pulumi.StringRef("gp3"),
/// 			PreferredInstanceClasses: []string{
/// 				"db.r5.xlarge",
/// 				"db.r5.2xlarge",
/// 				"db.r5.4xlarge",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// The RDS instance resource requires an ARN. Look up the ARN of the KMS key associated with the CEV.
/// 		byId, err := kms.LookupKey(ctx, &kms.LookupKeyArgs{
/// 			KeyId: "example-ef278353ceba4a5a97de6784565b9f78",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := rds.NewInstance(ctx, "default", &rds.InstanceArgs{
/// 			AllocatedStorage:         pulumi.Int(50),
/// 			AutoMinorVersionUpgrade:  pulumi.Bool(false),
/// 			CustomIamInstanceProfile: pulumi.String("AWSRDSCustomInstanceProfile"),
/// 			BackupRetentionPeriod:    pulumi.Int(7),
/// 			DbSubnetGroupName:        pulumi.Any(dbSubnetGroupName),
/// 			Engine:                   pulumi.String(custom_oracle.Engine),
/// 			EngineVersion:            pulumi.String(custom_oracle.EngineVersion),
/// 			Identifier:               pulumi.String("ee-instance-demo"),
/// 			InstanceClass:            custom_oracle.InstanceClass.ApplyT(func(x *string) rds.InstanceType { return rds.InstanceType(*x) }).(rds.InstanceTypeOutput),
/// 			KmsKeyId:                 pulumi.String(byId.Arn),
/// 			LicenseModel:             pulumi.String(custom_oracle.LicenseModel),
/// 			MultiAz:                  pulumi.Bool(false),
/// 			Password:                 pulumi.String("avoid-plaintext-passwords"),
/// 			Username:                 pulumi.String("test"),
/// 			StorageEncrypted:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewInstance(ctx, "test-replica", &rds.InstanceArgs{
/// 			ReplicateSourceDb:        _default.Identifier,
/// 			ReplicaMode:              pulumi.String("mounted"),
/// 			AutoMinorVersionUpgrade:  pulumi.Bool(false),
/// 			CustomIamInstanceProfile: pulumi.String("AWSRDSCustomInstanceProfile"),
/// 			BackupRetentionPeriod:    pulumi.Int(7),
/// 			Identifier:               pulumi.String("ee-instance-replica"),
/// 			InstanceClass:            custom_oracle.InstanceClass.ApplyT(func(x *string) rds.InstanceType { return rds.InstanceType(*x) }).(rds.InstanceTypeOutput),
/// 			KmsKeyId:                 pulumi.String(byId.Arn),
/// 			MultiAz:                  pulumi.Bool(false),
/// 			SkipFinalSnapshot:        pulumi.Bool(true),
/// 			StorageEncrypted:         pulumi.Bool(true),
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
/// data "aws_rds_getorderabledbinstance" "custom-oracle" {
///   engine                     = "custom-oracle-ee"
///   engine_version             = "19.c.ee.002"
///   license_model              = "bring-your-own-license"
///   storage_type               = "gp3"
///   preferred_instance_classes = ["db.r5.xlarge", "db.r5.2xlarge", "db.r5.4xlarge"]
/// }
/// data "aws_kms_getkey" "byId" {
///   key_id = "example-ef278353ceba4a5a97de6784565b9f78"
/// }
///
/// resource "aws_rds_instance" "default" {
///   allocated_storage           = 50
///   auto_minor_version_upgrade  = false # Custom for Oracle does not support minor version upgrades
///   custom_iam_instance_profile = "AWSRDSCustomInstanceProfile"
///   backup_retention_period     = 7
///   db_subnet_group_name        = dbSubnetGroupName
///   engine                      = data.aws_rds_getorderabledbinstance.custom-oracle.engine
///   engine_version              = data.aws_rds_getorderabledbinstance.custom-oracle.engine_version
///   identifier                  = "ee-instance-demo"
///   instance_class              = data.aws_rds_getorderabledbinstance.custom-oracle.instance_class
///   kms_key_id                  = data.aws_kms_getkey.byId.arn
///   license_model               = data.aws_rds_getorderabledbinstance.custom-oracle.license_model
///   multi_az                    = false # Custom for Oracle does not support multi-az
///   password                    = "avoid-plaintext-passwords"
///   username                    = "test"
///   storage_encrypted           = true
/// }
/// resource "aws_rds_instance" "test-replica" {
///   replicate_source_db         = aws_rds_instance.default.identifier
///   replica_mode                = "mounted"
///   auto_minor_version_upgrade  = false
///   custom_iam_instance_profile = "AWSRDSCustomInstanceProfile"
///   backup_retention_period     = 7
///   identifier                  = "ee-instance-replica"
///   instance_class              = data.aws_rds_getorderabledbinstance.custom-oracle.instance_class
///   kms_key_id                  = data.aws_kms_getkey.byId.arn
///   multi_az                    = false # Custom for Oracle does not support multi-az
///   skip_final_snapshot         = true
///   storage_encrypted           = true
/// }
/// # Lookup the available instance classes for the custom engine for the region being operated in
/// # CEV engine to be used
/// # CEV engine version to be used
/// # The RDS instance resource requires an ARN. Look up the ARN of the KMS key associated with the CEV.
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetOrderableDbInstanceArgs;
/// import com.pulumi.aws.kms.KmsFunctions;
/// import com.pulumi.aws.kms.inputs.GetKeyArgs;
/// import com.pulumi.aws.rds.Instance;
/// import com.pulumi.aws.rds.InstanceArgs;
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
///         // Lookup the available instance classes for the custom engine for the region being operated in
///         final var custom-oracle = RdsFunctions.getOrderableDbInstance(GetOrderableDbInstanceArgs.builder()
///             .engine("custom-oracle-ee")
///             .engineVersion("19.c.ee.002")
///             .licenseModel("bring-your-own-license")
///             .storageType("gp3")
///             .preferredInstanceClasses(
///                 "db.r5.xlarge",
///                 "db.r5.2xlarge",
///                 "db.r5.4xlarge")
///             .build());
///
///         // The RDS instance resource requires an ARN. Look up the ARN of the KMS key associated with the CEV.
///         final var byId = KmsFunctions.getKey(GetKeyArgs.builder()
///             .keyId("example-ef278353ceba4a5a97de6784565b9f78")
///             .build());
///
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .allocatedStorage(50)
///             .autoMinorVersionUpgrade(false)
///             .customIamInstanceProfile("AWSRDSCustomInstanceProfile")
///             .backupRetentionPeriod(7)
///             .dbSubnetGroupName(dbSubnetGroupName)
///             .engine(custom_oracle.engine())
///             .engineVersion(custom_oracle.engineVersion())
///             .identifier("ee-instance-demo")
///             .instanceClass(custom_oracle.instanceClass())
///             .kmsKeyId(byId.arn())
///             .licenseModel(custom_oracle.licenseModel())
///             .multiAz(false)
///             .password("avoid-plaintext-passwords")
///             .username("test")
///             .storageEncrypted(true)
///             .build());
///
///         var test_replica = new Instance("test-replica", InstanceArgs.builder()
///             .replicateSourceDb(default_.identifier())
///             .replicaMode("mounted")
///             .autoMinorVersionUpgrade(false)
///             .customIamInstanceProfile("AWSRDSCustomInstanceProfile")
///             .backupRetentionPeriod(7)
///             .identifier("ee-instance-replica")
///             .instanceClass(custom_oracle.instanceClass())
///             .kmsKeyId(byId.arn())
///             .multiAz(false)
///             .skipFinalSnapshot(true)
///             .storageEncrypted(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:rds:Instance
///     properties:
///       allocatedStorage: 50
///       autoMinorVersionUpgrade: false # Custom for Oracle does not support minor version upgrades
///       customIamInstanceProfile: AWSRDSCustomInstanceProfile
///       backupRetentionPeriod: 7
///       dbSubnetGroupName: ${dbSubnetGroupName}
///       engine: ${["custom-oracle"].engine}
///       engineVersion: ${["custom-oracle"].engineVersion}
///       identifier: ee-instance-demo
///       instanceClass: ${["custom-oracle"].instanceClass}
///       kmsKeyId: ${byId.arn}
///       licenseModel: ${["custom-oracle"].licenseModel}
///       multiAz: false # Custom for Oracle does not support multi-az
///       password: avoid-plaintext-passwords
///       username: test
///       storageEncrypted: true
///   test-replica:
///     type: aws:rds:Instance
///     properties:
///       replicateSourceDb: ${default.identifier}
///       replicaMode: mounted
///       autoMinorVersionUpgrade: false
///       customIamInstanceProfile: AWSRDSCustomInstanceProfile
///       backupRetentionPeriod: 7
///       identifier: ee-instance-replica
///       instanceClass: ${["custom-oracle"].instanceClass}
///       kmsKeyId: ${byId.arn}
///       multiAz: false # Custom for Oracle does not support multi-az
///       skipFinalSnapshot: true
///       storageEncrypted: true
/// variables:
///   # Lookup the available instance classes for the custom engine for the region being operated in
///   custom-oracle:
///     fn::invoke:
///       function: aws:rds:getOrderableDbInstance
///       arguments:
///         engine: custom-oracle-ee
///         engineVersion: 19.c.ee.002
///         licenseModel: bring-your-own-license
///         storageType: gp3
///         preferredInstanceClasses:
///           - db.r5.xlarge
///           - db.r5.2xlarge
///           - db.r5.4xlarge
///   # The RDS instance resource requires an ARN. Look up the ARN of the KMS key associated with the CEV.
///   byId:
///     fn::invoke:
///       function: aws:kms:getKey
///       arguments:
///         keyId: example-ef278353ceba4a5a97de6784565b9f78
/// ```
///
///
/// ### RDS Custom for SQL Server
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Lookup the available instance classes for the custom engine for the region being operated in
/// const custom_sqlserver = aws.rds.getOrderableDbInstance({
///     engine: "custom-sqlserver-se",
///     engineVersion: "15.00.4249.2.v1",
///     storageType: "gp3",
///     preferredInstanceClasses: [
///         "db.r5.xlarge",
///         "db.r5.2xlarge",
///         "db.r5.4xlarge",
///     ],
/// });
/// // The RDS instance resource requires an ARN. Look up the ARN of the KMS key.
/// const byId = aws.kms.getKey({
///     keyId: "example-ef278353ceba4a5a97de6784565b9f78",
/// });
/// const example = new aws.rds.Instance("example", {
///     allocatedStorage: 500,
///     autoMinorVersionUpgrade: false,
///     customIamInstanceProfile: "AWSRDSCustomSQLServerInstanceProfile",
///     backupRetentionPeriod: 7,
///     dbSubnetGroupName: dbSubnetGroupName,
///     engine: custom_sqlserver.then(custom_sqlserver => custom_sqlserver.engine),
///     engineVersion: custom_sqlserver.then(custom_sqlserver => custom_sqlserver.engineVersion),
///     identifier: "sql-instance-demo",
///     instanceClass: aws.rds.InstanceType[custom_sqlserver.then(custom_sqlserver => custom_sqlserver.instanceClass)],
///     kmsKeyId: byId.then(byId => byId.arn),
///     multiAz: false,
///     password: "avoid-plaintext-passwords",
///     storageEncrypted: true,
///     username: "test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Lookup the available instance classes for the custom engine for the region being operated in
/// custom_sqlserver = aws.rds.get_orderable_db_instance(engine="custom-sqlserver-se",
///     engine_version="15.00.4249.2.v1",
///     storage_type="gp3",
///     preferred_instance_classes=[
///         "db.r5.xlarge",
///         "db.r5.2xlarge",
///         "db.r5.4xlarge",
///     ])
/// # The RDS instance resource requires an ARN. Look up the ARN of the KMS key.
/// by_id = aws.kms.get_key(key_id="example-ef278353ceba4a5a97de6784565b9f78")
/// example = aws.rds.Instance("example",
///     allocated_storage=500,
///     auto_minor_version_upgrade=False,
///     custom_iam_instance_profile="AWSRDSCustomSQLServerInstanceProfile",
///     backup_retention_period=7,
///     db_subnet_group_name=db_subnet_group_name,
///     engine=custom_sqlserver.engine,
///     engine_version=custom_sqlserver.engine_version,
///     identifier="sql-instance-demo",
///     instance_class=aws.rds.InstanceType(custom_sqlserver.instance_class),
///     kms_key_id=by_id.arn,
///     multi_az=False,
///     password="avoid-plaintext-passwords",
///     storage_encrypted=True,
///     username="test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Lookup the available instance classes for the custom engine for the region being operated in
///     var custom_sqlserver = Aws.Rds.GetOrderableDbInstance.Invoke(new()
///     {
///         Engine = "custom-sqlserver-se",
///         EngineVersion = "15.00.4249.2.v1",
///         StorageType = "gp3",
///         PreferredInstanceClasses = new[]
///         {
///             "db.r5.xlarge",
///             "db.r5.2xlarge",
///             "db.r5.4xlarge",
///         },
///     });
///
///     // The RDS instance resource requires an ARN. Look up the ARN of the KMS key.
///     var byId = Aws.Kms.GetKey.Invoke(new()
///     {
///         KeyId = "example-ef278353ceba4a5a97de6784565b9f78",
///     });
///
///     var example = new Aws.Rds.Instance("example", new()
///     {
///         AllocatedStorage = 500,
///         AutoMinorVersionUpgrade = false,
///         CustomIamInstanceProfile = "AWSRDSCustomSQLServerInstanceProfile",
///         BackupRetentionPeriod = 7,
///         DbSubnetGroupName = dbSubnetGroupName,
///         Engine = custom_sqlserver.Apply(custom_sqlserver => custom_sqlserver.Apply(getOrderableDbInstanceResult => getOrderableDbInstanceResult.Engine)),
///         EngineVersion = custom_sqlserver.Apply(custom_sqlserver => custom_sqlserver.Apply(getOrderableDbInstanceResult => getOrderableDbInstanceResult.EngineVersion)),
///         Identifier = "sql-instance-demo",
///         InstanceClass = custom_sqlserver.Apply(custom_sqlserver => custom_sqlserver.Apply(getOrderableDbInstanceResult => getOrderableDbInstanceResult.InstanceClass)).Apply(System.Enum.Parse<Aws.Rds.InstanceType>),
///         KmsKeyId = byId.Apply(getKeyResult => getKeyResult.Arn),
///         MultiAz = false,
///         Password = "avoid-plaintext-passwords",
///         StorageEncrypted = true,
///         Username = "test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Lookup the available instance classes for the custom engine for the region being operated in
/// 		custom_sqlserver, err := rds.GetOrderableDbInstance(ctx, &rds.GetOrderableDbInstanceArgs{
/// 			Engine:        "custom-sqlserver-se",
/// 			EngineVersion: pulumi.StringRef("15.00.4249.2.v1"),
/// 			StorageType:   pulumi.StringRef("gp3"),
/// 			PreferredInstanceClasses: []string{
/// 				"db.r5.xlarge",
/// 				"db.r5.2xlarge",
/// 				"db.r5.4xlarge",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// The RDS instance resource requires an ARN. Look up the ARN of the KMS key.
/// 		byId, err := kms.LookupKey(ctx, &kms.LookupKeyArgs{
/// 			KeyId: "example-ef278353ceba4a5a97de6784565b9f78",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewInstance(ctx, "example", &rds.InstanceArgs{
/// 			AllocatedStorage:         pulumi.Int(500),
/// 			AutoMinorVersionUpgrade:  pulumi.Bool(false),
/// 			CustomIamInstanceProfile: pulumi.String("AWSRDSCustomSQLServerInstanceProfile"),
/// 			BackupRetentionPeriod:    pulumi.Int(7),
/// 			DbSubnetGroupName:        pulumi.Any(dbSubnetGroupName),
/// 			Engine:                   pulumi.String(custom_sqlserver.Engine),
/// 			EngineVersion:            pulumi.String(custom_sqlserver.EngineVersion),
/// 			Identifier:               pulumi.String("sql-instance-demo"),
/// 			InstanceClass:            custom_sqlserver.InstanceClass.ApplyT(func(x *string) rds.InstanceType { return rds.InstanceType(*x) }).(rds.InstanceTypeOutput),
/// 			KmsKeyId:                 pulumi.String(byId.Arn),
/// 			MultiAz:                  pulumi.Bool(false),
/// 			Password:                 pulumi.String("avoid-plaintext-passwords"),
/// 			StorageEncrypted:         pulumi.Bool(true),
/// 			Username:                 pulumi.String("test"),
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
/// data "aws_rds_getorderabledbinstance" "custom-sqlserver" {
///   engine                     = "custom-sqlserver-se"
///   engine_version             = "15.00.4249.2.v1"
///   storage_type               = "gp3"
///   preferred_instance_classes = ["db.r5.xlarge", "db.r5.2xlarge", "db.r5.4xlarge"]
/// }
/// data "aws_kms_getkey" "byId" {
///   key_id = "example-ef278353ceba4a5a97de6784565b9f78"
/// }
///
/// resource "aws_rds_instance" "example" {
///   allocated_storage           = 500
///   auto_minor_version_upgrade  = false # Custom for SQL Server does not support minor version upgrades
///   custom_iam_instance_profile = "AWSRDSCustomSQLServerInstanceProfile"
///   backup_retention_period     = 7
///   db_subnet_group_name        = dbSubnetGroupName
///   engine                      = data.aws_rds_getorderabledbinstance.custom-sqlserver.engine
///   engine_version              = data.aws_rds_getorderabledbinstance.custom-sqlserver.engine_version
///   identifier                  = "sql-instance-demo"
///   instance_class              = data.aws_rds_getorderabledbinstance.custom-sqlserver.instance_class
///   kms_key_id                  = data.aws_kms_getkey.byId.arn
///   multi_az                    = false # Custom for SQL Server does support multi-az
///   password                    = "avoid-plaintext-passwords"
///   storage_encrypted           = true
///   username                    = "test"
/// }
/// # Lookup the available instance classes for the custom engine for the region being operated in
/// # CEV engine to be used
/// # CEV engine version to be used
/// # The RDS instance resource requires an ARN. Look up the ARN of the KMS key.
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetOrderableDbInstanceArgs;
/// import com.pulumi.aws.kms.KmsFunctions;
/// import com.pulumi.aws.kms.inputs.GetKeyArgs;
/// import com.pulumi.aws.rds.Instance;
/// import com.pulumi.aws.rds.InstanceArgs;
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
///         // Lookup the available instance classes for the custom engine for the region being operated in
///         final var custom-sqlserver = RdsFunctions.getOrderableDbInstance(GetOrderableDbInstanceArgs.builder()
///             .engine("custom-sqlserver-se")
///             .engineVersion("15.00.4249.2.v1")
///             .storageType("gp3")
///             .preferredInstanceClasses(
///                 "db.r5.xlarge",
///                 "db.r5.2xlarge",
///                 "db.r5.4xlarge")
///             .build());
///
///         // The RDS instance resource requires an ARN. Look up the ARN of the KMS key.
///         final var byId = KmsFunctions.getKey(GetKeyArgs.builder()
///             .keyId("example-ef278353ceba4a5a97de6784565b9f78")
///             .build());
///
///         var example = new Instance("example", InstanceArgs.builder()
///             .allocatedStorage(500)
///             .autoMinorVersionUpgrade(false)
///             .customIamInstanceProfile("AWSRDSCustomSQLServerInstanceProfile")
///             .backupRetentionPeriod(7)
///             .dbSubnetGroupName(dbSubnetGroupName)
///             .engine(custom_sqlserver.engine())
///             .engineVersion(custom_sqlserver.engineVersion())
///             .identifier("sql-instance-demo")
///             .instanceClass(custom_sqlserver.instanceClass())
///             .kmsKeyId(byId.arn())
///             .multiAz(false)
///             .password("avoid-plaintext-passwords")
///             .storageEncrypted(true)
///             .username("test")
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
///       allocatedStorage: 500
///       autoMinorVersionUpgrade: false # Custom for SQL Server does not support minor version upgrades
///       customIamInstanceProfile: AWSRDSCustomSQLServerInstanceProfile
///       backupRetentionPeriod: 7
///       dbSubnetGroupName: ${dbSubnetGroupName}
///       engine: ${["custom-sqlserver"].engine}
///       engineVersion: ${["custom-sqlserver"].engineVersion}
///       identifier: sql-instance-demo
///       instanceClass: ${["custom-sqlserver"].instanceClass}
///       kmsKeyId: ${byId.arn}
///       multiAz: false # Custom for SQL Server does support multi-az
///       password: avoid-plaintext-passwords
///       storageEncrypted: true
///       username: test
/// variables:
///   # Lookup the available instance classes for the custom engine for the region being operated in
///   custom-sqlserver:
///     fn::invoke:
///       function: aws:rds:getOrderableDbInstance
///       arguments:
///         engine: custom-sqlserver-se
///         engineVersion: 15.00.4249.2.v1
///         storageType: gp3
///         preferredInstanceClasses:
///           - db.r5.xlarge
///           - db.r5.2xlarge
///           - db.r5.4xlarge
///   # The RDS instance resource requires an ARN. Look up the ARN of the KMS key.
///   byId:
///     fn::invoke:
///       function: aws:kms:getKey
///       arguments:
///         keyId: example-ef278353ceba4a5a97de6784565b9f78
/// ```
///
///
/// ### RDS Db2 Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Lookup the default version for the engine. Db2 Standard Edition is `db2-se`, Db2 Advanced Edition is `db2-ae`.
/// const _default = aws.rds.getEngineVersion({
///     engine: "db2-se",
/// });
/// // Lookup the available instance classes for the engine in the region being operated in
/// const example = _default.then(_default => aws.rds.getOrderableDbInstance({
///     engine: _default.engine,
///     engineVersion: _default.version,
///     licenseModel: "bring-your-own-license",
///     storageType: "gp3",
///     preferredInstanceClasses: [
///         "db.t3.small",
///         "db.r6i.large",
///         "db.m6i.large",
///     ],
/// }));
/// // The RDS Db2 instance resource requires licensing information. Create a new parameter group using the default paramater group as a source, and set license information.
/// const exampleParameterGroup = new aws.rds.ParameterGroup("example", {
///     name: "db-db2-params",
///     family: _default.then(_default => _default.parameterGroupFamily),
///     parameters: [
///         {
///             applyMethod: "immediate",
///             name: "rds.ibm_customer_id",
///             value: "0",
///         },
///         {
///             applyMethod: "immediate",
///             name: "rds.ibm_site_id",
///             value: "0",
///         },
///     ],
/// });
/// // Create the RDS Db2 instance, use the data sources defined to set attributes
/// const exampleInstance = new aws.rds.Instance("example", {
///     allocatedStorage: 100,
///     backupRetentionPeriod: 7,
///     dbName: "test",
///     engine: example.then(example => example.engine),
///     engineVersion: example.then(example => example.engineVersion),
///     identifier: "db2-instance-demo",
///     instanceClass: aws.rds.InstanceType[example.then(example => example.instanceClass)],
///     parameterGroupName: exampleParameterGroup.name,
///     password: "avoid-plaintext-passwords",
///     username: "test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Lookup the default version for the engine. Db2 Standard Edition is `db2-se`, Db2 Advanced Edition is `db2-ae`.
/// default = aws.rds.get_engine_version(engine="db2-se")
/// # Lookup the available instance classes for the engine in the region being operated in
/// example = aws.rds.get_orderable_db_instance(engine=default.engine,
///     engine_version=default.version,
///     license_model="bring-your-own-license",
///     storage_type="gp3",
///     preferred_instance_classes=[
///         "db.t3.small",
///         "db.r6i.large",
///         "db.m6i.large",
///     ])
/// # The RDS Db2 instance resource requires licensing information. Create a new parameter group using the default paramater group as a source, and set license information.
/// example_parameter_group = aws.rds.ParameterGroup("example",
///     name="db-db2-params",
///     family=default.parameter_group_family,
///     parameters=[
///         {
///             "apply_method": "immediate",
///             "name": "rds.ibm_customer_id",
///             "value": "0",
///         },
///         {
///             "apply_method": "immediate",
///             "name": "rds.ibm_site_id",
///             "value": "0",
///         },
///     ])
/// # Create the RDS Db2 instance, use the data sources defined to set attributes
/// example_instance = aws.rds.Instance("example",
///     allocated_storage=100,
///     backup_retention_period=7,
///     db_name="test",
///     engine=example.engine,
///     engine_version=example.engine_version,
///     identifier="db2-instance-demo",
///     instance_class=aws.rds.InstanceType(example.instance_class),
///     parameter_group_name=example_parameter_group.name,
///     password="avoid-plaintext-passwords",
///     username="test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Lookup the default version for the engine. Db2 Standard Edition is `db2-se`, Db2 Advanced Edition is `db2-ae`.
///     var @default = Aws.Rds.GetEngineVersion.Invoke(new()
///     {
///         Engine = "db2-se",
///     });
///
///     // Lookup the available instance classes for the engine in the region being operated in
///     var example = Aws.Rds.GetOrderableDbInstance.Invoke(new()
///     {
///         Engine = @default.Apply(getEngineVersionResult => getEngineVersionResult.Engine),
///         EngineVersion = @default.Apply(getEngineVersionResult => getEngineVersionResult.Version),
///         LicenseModel = "bring-your-own-license",
///         StorageType = "gp3",
///         PreferredInstanceClasses = new[]
///         {
///             "db.t3.small",
///             "db.r6i.large",
///             "db.m6i.large",
///         },
///     });
///
///     // The RDS Db2 instance resource requires licensing information. Create a new parameter group using the default paramater group as a source, and set license information.
///     var exampleParameterGroup = new Aws.Rds.ParameterGroup("example", new()
///     {
///         Name = "db-db2-params",
///         Family = @default.Apply(@default => @default.Apply(getEngineVersionResult => getEngineVersionResult.ParameterGroupFamily)),
///         Parameters = new[]
///         {
///             new Aws.Rds.Inputs.ParameterGroupParameterArgs
///             {
///                 ApplyMethod = "immediate",
///                 Name = "rds.ibm_customer_id",
///                 Value = "0",
///             },
///             new Aws.Rds.Inputs.ParameterGroupParameterArgs
///             {
///                 ApplyMethod = "immediate",
///                 Name = "rds.ibm_site_id",
///                 Value = "0",
///             },
///         },
///     });
///
///     // Create the RDS Db2 instance, use the data sources defined to set attributes
///     var exampleInstance = new Aws.Rds.Instance("example", new()
///     {
///         AllocatedStorage = 100,
///         BackupRetentionPeriod = 7,
///         DbName = "test",
///         Engine = example.Apply(getOrderableDbInstanceResult => getOrderableDbInstanceResult.Engine),
///         EngineVersion = example.Apply(getOrderableDbInstanceResult => getOrderableDbInstanceResult.EngineVersion),
///         Identifier = "db2-instance-demo",
///         InstanceClass = example.Apply(getOrderableDbInstanceResult => getOrderableDbInstanceResult.InstanceClass).Apply(System.Enum.Parse<Aws.Rds.InstanceType>),
///         ParameterGroupName = exampleParameterGroup.Name,
///         Password = "avoid-plaintext-passwords",
///         Username = "test",
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
/// 		// Lookup the default version for the engine. Db2 Standard Edition is `db2-se`, Db2 Advanced Edition is `db2-ae`.
/// 		_default, err := rds.GetEngineVersion(ctx, &rds.GetEngineVersionArgs{
/// 			Engine: "db2-se",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Lookup the available instance classes for the engine in the region being operated in
/// 		example, err := rds.GetOrderableDbInstance(ctx, &rds.GetOrderableDbInstanceArgs{
/// 			Engine:        _default.Engine,
/// 			EngineVersion: pulumi.StringRef(_default.Version),
/// 			LicenseModel:  pulumi.StringRef("bring-your-own-license"),
/// 			StorageType:   pulumi.StringRef("gp3"),
/// 			PreferredInstanceClasses: []string{
/// 				"db.t3.small",
/// 				"db.r6i.large",
/// 				"db.m6i.large",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// The RDS Db2 instance resource requires licensing information. Create a new parameter group using the default paramater group as a source, and set license information.
/// 		exampleParameterGroup, err := rds.NewParameterGroup(ctx, "example", &rds.ParameterGroupArgs{
/// 			Name:   pulumi.String("db-db2-params"),
/// 			Family: pulumi.String(_default.ParameterGroupFamily),
/// 			Parameters: rds.ParameterGroupParameterArray{
/// 				&rds.ParameterGroupParameterArgs{
/// 					ApplyMethod: pulumi.String("immediate"),
/// 					Name:        pulumi.String("rds.ibm_customer_id"),
/// 					Value:       pulumi.String("0"),
/// 				},
/// 				&rds.ParameterGroupParameterArgs{
/// 					ApplyMethod: pulumi.String("immediate"),
/// 					Name:        pulumi.String("rds.ibm_site_id"),
/// 					Value:       pulumi.String("0"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create the RDS Db2 instance, use the data sources defined to set attributes
/// 		_, err = rds.NewInstance(ctx, "example", &rds.InstanceArgs{
/// 			AllocatedStorage:      pulumi.Int(100),
/// 			BackupRetentionPeriod: pulumi.Int(7),
/// 			DbName:                pulumi.String("test"),
/// 			Engine:                pulumi.String(example.Engine),
/// 			EngineVersion:         pulumi.String(example.EngineVersion),
/// 			Identifier:            pulumi.String("db2-instance-demo"),
/// 			InstanceClass:         example.InstanceClass.ApplyT(func(x *string) rds.InstanceType { return rds.InstanceType(*x) }).(rds.InstanceTypeOutput),
/// 			ParameterGroupName:    exampleParameterGroup.Name,
/// 			Password:              pulumi.String("avoid-plaintext-passwords"),
/// 			Username:              pulumi.String("test"),
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
/// data "aws_rds_getengineversion" "default" {
///   engine = "db2-se"
/// }
/// data "aws_rds_getorderabledbinstance" "example" {
///   engine                     = data.aws_rds_getengineversion.default.engine
///   engine_version             = data.aws_rds_getengineversion.default.version
///   license_model              = "bring-your-own-license"
///   storage_type               = "gp3"
///   preferred_instance_classes = ["db.t3.small", "db.r6i.large", "db.m6i.large"]
/// }
///
/// # The RDS Db2 instance resource requires licensing information. Create a new parameter group using the default paramater group as a source, and set license information.
/// resource "aws_rds_parametergroup" "example" {
///   name   = "db-db2-params"
///   family = data.aws_rds_getengineversion.default.parameter_group_family
///   parameters {
///     apply_method = "immediate"
///     name         = "rds.ibm_customer_id"
///     value        = 0
///   }
///   parameters {
///     apply_method = "immediate"
///     name         = "rds.ibm_site_id"
///     value        = 0
///   }
/// }
/// # Create the RDS Db2 instance, use the data sources defined to set attributes
/// resource "aws_rds_instance" "example" {
///   allocated_storage       = 100
///   backup_retention_period = 7
///   db_name                 = "test"
///   engine                  = data.aws_rds_getorderabledbinstance.example.engine
///   engine_version          = data.aws_rds_getorderabledbinstance.example.engine_version
///   identifier              = "db2-instance-demo"
///   instance_class          = data.aws_rds_getorderabledbinstance.example.instance_class
///   parameter_group_name    = aws_rds_parametergroup.example.name
///   password                = "avoid-plaintext-passwords"
///   username                = "test"
/// }
/// # Lookup the default version for the engine. Db2 Standard Edition is `db2-se`, Db2 Advanced Edition is `db2-ae`.
/// # Lookup the available instance classes for the engine in the region being operated in
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetEngineVersionArgs;
/// import com.pulumi.aws.rds.inputs.GetOrderableDbInstanceArgs;
/// import com.pulumi.aws.rds.ParameterGroup;
/// import com.pulumi.aws.rds.ParameterGroupArgs;
/// import com.pulumi.aws.rds.inputs.ParameterGroupParameterArgs;
/// import com.pulumi.aws.rds.Instance;
/// import com.pulumi.aws.rds.InstanceArgs;
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
///         // Lookup the default version for the engine. Db2 Standard Edition is `db2-se`, Db2 Advanced Edition is `db2-ae`.
///         final var default = RdsFunctions.getEngineVersion(GetEngineVersionArgs.builder()
///             .engine("db2-se")
///             .build());
///
///         // Lookup the available instance classes for the engine in the region being operated in
///         final var example = RdsFunctions.getOrderableDbInstance(GetOrderableDbInstanceArgs.builder()
///             .engine(default_.engine())
///             .engineVersion(default_.version())
///             .licenseModel("bring-your-own-license")
///             .storageType("gp3")
///             .preferredInstanceClasses(
///                 "db.t3.small",
///                 "db.r6i.large",
///                 "db.m6i.large")
///             .build());
///
///         // The RDS Db2 instance resource requires licensing information. Create a new parameter group using the default paramater group as a source, and set license information.
///         var exampleParameterGroup = new ParameterGroup("exampleParameterGroup", ParameterGroupArgs.builder()
///             .name("db-db2-params")
///             .family(default_.parameterGroupFamily())
///             .parameters(
///                 ParameterGroupParameterArgs.builder()
///                     .applyMethod("immediate")
///                     .name("rds.ibm_customer_id")
///                     .value("0")
///                     .build(),
///                 ParameterGroupParameterArgs.builder()
///                     .applyMethod("immediate")
///                     .name("rds.ibm_site_id")
///                     .value("0")
///                     .build())
///             .build());
///
///         // Create the RDS Db2 instance, use the data sources defined to set attributes
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .allocatedStorage(100)
///             .backupRetentionPeriod(7)
///             .dbName("test")
///             .engine(example.engine())
///             .engineVersion(example.engineVersion())
///             .identifier("db2-instance-demo")
///             .instanceClass(example.instanceClass())
///             .parameterGroupName(exampleParameterGroup.name())
///             .password("avoid-plaintext-passwords")
///             .username("test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # The RDS Db2 instance resource requires licensing information. Create a new parameter group using the default paramater group as a source, and set license information.
///   exampleParameterGroup:
///     type: aws:rds:ParameterGroup
///     name: example
///     properties:
///       name: db-db2-params
///       family: ${default.parameterGroupFamily}
///       parameters:
///         - applyMethod: immediate
///           name: rds.ibm_customer_id
///           value: 0
///         - applyMethod: immediate
///           name: rds.ibm_site_id
///           value: 0
///   # Create the RDS Db2 instance, use the data sources defined to set attributes
///   exampleInstance:
///     type: aws:rds:Instance
///     name: example
///     properties:
///       allocatedStorage: 100
///       backupRetentionPeriod: 7
///       dbName: test
///       engine: ${example.engine}
///       engineVersion: ${example.engineVersion}
///       identifier: db2-instance-demo
///       instanceClass: ${example.instanceClass}
///       parameterGroupName: ${exampleParameterGroup.name}
///       password: avoid-plaintext-passwords
///       username: test
/// variables:
///   # Lookup the default version for the engine. Db2 Standard Edition is `db2-se`, Db2 Advanced Edition is `db2-ae`.
///   default:
///     fn::invoke:
///       function: aws:rds:getEngineVersion
///       arguments:
///         engine: db2-se
///   # Lookup the available instance classes for the engine in the region being operated in
///   example:
///     fn::invoke:
///       function: aws:rds:getOrderableDbInstance
///       arguments:
///         engine: ${default.engine}
///         engineVersion: ${default.version}
///         licenseModel: bring-your-own-license
///         storageType: gp3
///         preferredInstanceClasses:
///           - db.t3.small
///           - db.r6i.large
///           - db.m6i.large
/// ```
///
///
/// ### Storage Autoscaling
///
/// To enable Storage Autoscaling with instances that support the feature, define the `maxAllocatedStorage` argument higher than the `allocatedStorage` argument. This provider will automatically hide differences with the `allocatedStorage` argument value if autoscaling occurs.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.Instance("example", {
///     allocatedStorage: 50,
///     maxAllocatedStorage: 100,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.Instance("example",
///     allocated_storage=50,
///     max_allocated_storage=100)
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
///         AllocatedStorage = 50,
///         MaxAllocatedStorage = 100,
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
/// 		_, err := rds.NewInstance(ctx, "example", &rds.InstanceArgs{
/// 			AllocatedStorage:    pulumi.Int(50),
/// 			MaxAllocatedStorage: pulumi.Int(100),
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
/// resource "aws_rds_instance" "example" {
///   allocated_storage     = 50
///   max_allocated_storage = 100
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
///             .allocatedStorage(50)
///             .maxAllocatedStorage(100)
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
///       allocatedStorage: 50
///       maxAllocatedStorage: 100
/// ```
///
///
/// ### Managed Master Passwords via Secrets Manager, default KMS Key
///
/// &gt; More information about RDS/Aurora Aurora integrates with Secrets Manager to manage master user passwords for your DB clusters can be found in the [RDS User Guide](https://aws.amazon.com/about-aws/whats-new/2022/12/amazon-rds-integration-aws-secrets-manager/) and [Aurora User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html).
///
/// You can specify the `manageMasterUserPassword` attribute to enable managing the master password with Secrets Manager. You can also update an existing cluster to use Secrets Manager by specify the `manageMasterUserPassword` attribute and removing the `password` attribute (removal is required).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.Instance("default", {
///     allocatedStorage: 10,
///     dbName: "mydb",
///     engine: "mysql",
///     engineVersion: "8.0",
///     instanceClass: aws.rds.InstanceType.T3_Micro,
///     manageMasterUserPassword: true,
///     username: "foo",
///     parameterGroupName: "default.mysql8.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.Instance("default",
///     allocated_storage=10,
///     db_name="mydb",
///     engine="mysql",
///     engine_version="8.0",
///     instance_class=aws.rds.InstanceType.T3_MICRO,
///     manage_master_user_password=True,
///     username="foo",
///     parameter_group_name="default.mysql8.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Rds.Instance("default", new()
///     {
///         AllocatedStorage = 10,
///         DbName = "mydb",
///         Engine = "mysql",
///         EngineVersion = "8.0",
///         InstanceClass = Aws.Rds.InstanceType.T3_Micro,
///         ManageMasterUserPassword = true,
///         Username = "foo",
///         ParameterGroupName = "default.mysql8.0",
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
/// 		_, err := rds.NewInstance(ctx, "default", &rds.InstanceArgs{
/// 			AllocatedStorage:         pulumi.Int(10),
/// 			DbName:                   pulumi.String("mydb"),
/// 			Engine:                   pulumi.String("mysql"),
/// 			EngineVersion:            pulumi.String("8.0"),
/// 			InstanceClass:            pulumi.String(rds.InstanceType_T3_Micro),
/// 			ManageMasterUserPassword: pulumi.Bool(true),
/// 			Username:                 pulumi.String("foo"),
/// 			ParameterGroupName:       pulumi.String("default.mysql8.0"),
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
/// resource "aws_rds_instance" "default" {
///   allocated_storage           = 10
///   db_name                     = "mydb"
///   engine                      = "mysql"
///   engine_version              = "8.0"
///   instance_class              = "db.t3.micro"
///   manage_master_user_password = true
///   username                    = "foo"
///   parameter_group_name        = "default.mysql8.0"
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .allocatedStorage(10)
///             .dbName("mydb")
///             .engine("mysql")
///             .engineVersion("8.0")
///             .instanceClass("db.t3.micro")
///             .manageMasterUserPassword(true)
///             .username("foo")
///             .parameterGroupName("default.mysql8.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:rds:Instance
///     properties:
///       allocatedStorage: 10
///       dbName: mydb
///       engine: mysql
///       engineVersion: '8.0'
///       instanceClass: db.t3.micro
///       manageMasterUserPassword: true
///       username: foo
///       parameterGroupName: default.mysql8.0
/// ```
///
///
/// ### Managed Master Passwords via Secrets Manager, specific KMS Key
///
/// &gt; More information about RDS/Aurora Aurora integrates with Secrets Manager to manage master user passwords for your DB clusters can be found in the [RDS User Guide](https://aws.amazon.com/about-aws/whats-new/2022/12/amazon-rds-integration-aws-secrets-manager/) and [Aurora User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html).
///
/// You can specify the `masterUserSecretKmsKeyId` attribute to specify a specific KMS Key.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {description: "Example KMS Key"});
/// const _default = new aws.rds.Instance("default", {
///     allocatedStorage: 10,
///     dbName: "mydb",
///     engine: "mysql",
///     engineVersion: "8.0",
///     instanceClass: aws.rds.InstanceType.T3_Micro,
///     manageMasterUserPassword: true,
///     masterUserSecretKmsKeyId: example.keyId,
///     username: "foo",
///     parameterGroupName: "default.mysql8.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example", description="Example KMS Key")
/// default = aws.rds.Instance("default",
///     allocated_storage=10,
///     db_name="mydb",
///     engine="mysql",
///     engine_version="8.0",
///     instance_class=aws.rds.InstanceType.T3_MICRO,
///     manage_master_user_password=True,
///     master_user_secret_kms_key_id=example.key_id,
///     username="foo",
///     parameter_group_name="default.mysql8.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "Example KMS Key",
///     });
///
///     var @default = new Aws.Rds.Instance("default", new()
///     {
///         AllocatedStorage = 10,
///         DbName = "mydb",
///         Engine = "mysql",
///         EngineVersion = "8.0",
///         InstanceClass = Aws.Rds.InstanceType.T3_Micro,
///         ManageMasterUserPassword = true,
///         MasterUserSecretKmsKeyId = example.KeyId,
///         Username = "foo",
///         ParameterGroupName = "default.mysql8.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description: pulumi.String("Example KMS Key"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewInstance(ctx, "default", &rds.InstanceArgs{
/// 			AllocatedStorage:         pulumi.Int(10),
/// 			DbName:                   pulumi.String("mydb"),
/// 			Engine:                   pulumi.String("mysql"),
/// 			EngineVersion:            pulumi.String("8.0"),
/// 			InstanceClass:            pulumi.String(rds.InstanceType_T3_Micro),
/// 			ManageMasterUserPassword: pulumi.Bool(true),
/// 			MasterUserSecretKmsKeyId: example.KeyId,
/// 			Username:                 pulumi.String("foo"),
/// 			ParameterGroupName:       pulumi.String("default.mysql8.0"),
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
/// resource "aws_kms_key" "example" {
///   description = "Example KMS Key"
/// }
/// resource "aws_rds_instance" "default" {
///   allocated_storage             = 10
///   db_name                       = "mydb"
///   engine                        = "mysql"
///   engine_version                = "8.0"
///   instance_class                = "db.t3.micro"
///   manage_master_user_password   = true
///   master_user_secret_kms_key_id = aws_kms_key.example.key_id
///   username                      = "foo"
///   parameter_group_name          = "default.mysql8.0"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.rds.Instance;
/// import com.pulumi.aws.rds.InstanceArgs;
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("Example KMS Key")
///             .build());
///
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .allocatedStorage(10)
///             .dbName("mydb")
///             .engine("mysql")
///             .engineVersion("8.0")
///             .instanceClass("db.t3.micro")
///             .manageMasterUserPassword(true)
///             .masterUserSecretKmsKeyId(example.keyId())
///             .username("foo")
///             .parameterGroupName("default.mysql8.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: Example KMS Key
///   default:
///     type: aws:rds:Instance
///     properties:
///       allocatedStorage: 10
///       dbName: mydb
///       engine: mysql
///       engineVersion: '8.0'
///       instanceClass: db.t3.micro
///       manageMasterUserPassword: true
///       masterUserSecretKmsKeyId: ${example.keyId}
///       username: foo
///       parameterGroupName: default.mysql8.0
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DB Instances using the `identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/instance:Instance default mydb-rds-instance
/// ```
class Instance extends pulumi.CustomResource {
  /// Specifies the DNS address of the DB instance.
  late final pulumi.Output<String> address;
  /// The allocated storage in gibibytes. If `maxAllocatedStorage` is configured, this argument represents the initial storage allocation and differences from the configuration will be ignored automatically when Storage Autoscaling occurs. If `replicateSourceDb` is set, the value is ignored during the creation of the instance.
  late final pulumi.Output<int> allocatedStorage;
  /// Indicates that major version
  /// upgrades are allowed. Changing this parameter does not result in an outage and
  /// the change is asynchronously applied as soon as possible.
  late final pulumi.Output<bool?> allowMajorVersionUpgrade;
  /// Specifies whether any database modifications
  /// are applied immediately, or during the next maintenance window. Default is
  /// `false`. See [Amazon RDS Documentation for more
  /// information.](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html)
  late final pulumi.Output<bool?> applyImmediately;
  /// The ARN of the RDS instance.
  late final pulumi.Output<String> arn;
  /// Indicates that minor engine upgrades
  /// will be applied automatically to the DB instance during the maintenance window.
  /// Defaults to true.
  late final pulumi.Output<bool?> autoMinorVersionUpgrade;
  /// The AZ for the RDS instance.
  late final pulumi.Output<String> availabilityZone;
  /// The days to retain backups for.
  /// Must be between `0` and `35`.
  /// Default is `0`.
  /// Must be greater than `0` if the database is used as a source for a [Read Replica][instance-replication],
  /// uses low-downtime updates,
  /// or will use [RDS Blue/Green deployments][blue-green].
  late final pulumi.Output<int> backupRetentionPeriod;
  /// Specifies where automated backups and manual snapshots are stored. Possible values are `region` (default) and `outposts`. See [Working with Amazon RDS on AWS Outposts](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html) for more information.
  late final pulumi.Output<String> backupTarget;
  /// The daily time range (in UTC) during which automated backups are created if they are enabled.
  /// Example: "09:46-10:16". Must not overlap with `maintenanceWindow`.
  late final pulumi.Output<String> backupWindow;
  /// Enables low-downtime updates using [RDS Blue/Green deployments][blue-green].
  /// See `blueGreenUpdate` below.
  late final pulumi.Output<InstanceBlueGreenUpdate?> blueGreenUpdate;
  /// The identifier of the CA certificate for the DB instance.
  late final pulumi.Output<String> caCertIdentifier;
  /// The character set name to use for DB encoding in Oracle and Microsoft SQL instances (collation).
  /// This can't be changed.
  /// See [Oracle Character Sets Supported in Amazon RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.OracleCharacterSets.html) or
  /// [Server-Level Collation for Microsoft SQL Server](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.SQLServer.CommonDBATasks.Collation.html) for more information.
  /// Cannot be set  with `replicateSourceDb`, `restoreToPointInTime`, `s3Import`, or `snapshotIdentifier`.
  late final pulumi.Output<String> characterSetName;
  /// Copy all Instance `tags` to snapshots. Default is `false`.
  late final pulumi.Output<bool?> copyTagsToSnapshot;
  /// The instance profile associated with the underlying Amazon EC2 instance of an RDS Custom DB instance.
  late final pulumi.Output<String?> customIamInstanceProfile;
  /// Indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance. See [CoIP for RDS on Outposts](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html#rds-on-outposts.coip) for more information.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official
  /// documentation](http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html).
  ///
  /// &gt; **NOTE:** Removing the `replicateSourceDb` attribute from an existing RDS
  /// Replicate database managed by the provider will promote the database to a fully
  /// standalone database.
  late final pulumi.Output<bool?> customerOwnedIpEnabled;
  /// The mode of Database Insights that is enabled for the instance. Valid values: `standard`, `advanced` .
  late final pulumi.Output<String> databaseInsightsMode;
  /// The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance. Note that this does not apply for Oracle or SQL Server engines. See the [AWS documentation](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/rds/create-db-instance.html) for more details on what applies for those engines. If you are providing an Oracle db name, it needs to be in all upper case. Cannot be specified for a replica.
  late final pulumi.Output<String> dbName;
  /// Name of DB subnet group.
  /// DB instance will be created in the VPC associated with the DB subnet group.
  /// If unspecified, will be created in the `default` Subnet Group.
  /// When working with read replicas created in the same region, defaults to the Subnet Group Name of the source DB.
  /// When working with read replicas created in a different region, defaults to the `default` Subnet Group.
  /// See [DBSubnetGroupName in API action CreateDBInstanceReadReplica](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstanceReadReplica.html) for additional read replica constraints.
  late final pulumi.Output<String> dbSubnetGroupName;
  /// Use a dedicated log volume (DLV) for the DB instance. Requires Provisioned IOPS. See the [AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.dlv) for more details.
  late final pulumi.Output<bool?> dedicatedLogVolume;
  /// Specifies whether to remove automated backups immediately after the DB instance is deleted. Default is `true`.
  late final pulumi.Output<bool?> deleteAutomatedBackups;
  /// If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  late final pulumi.Output<bool?> deletionProtection;
  /// The ID of the Directory Service Active Directory domain to create the instance in. Conflicts with `domainFqdn`, `domainOu`, `domainAuthSecretArn` and a `domainDnsIps`.
  late final pulumi.Output<String?> domain;
  /// The ARN for the Secrets Manager secret with the self managed Active Directory credentials for the user joining the domain. Conflicts with `domain` and `domainIamRoleName`.
  late final pulumi.Output<String?> domainAuthSecretArn;
  /// The IPv4 DNS IP addresses of your primary and secondary self managed Active Directory domain controllers. Two IP addresses must be provided. If there isn't a secondary domain controller, use the IP address of the primary domain controller for both entries in the list. Conflicts with `domain` and `domainIamRoleName`.
  late final pulumi.Output<List<String>?> domainDnsIps;
  /// The fully qualified domain name (FQDN) of the self managed Active Directory domain. Conflicts with `domain` and `domainIamRoleName`.
  late final pulumi.Output<String> domainFqdn;
  /// The name of the IAM role to be used when making API calls to the Directory Service. Conflicts with `domainFqdn`, `domainOu`, `domainAuthSecretArn` and a `domainDnsIps`.
  late final pulumi.Output<String?> domainIamRoleName;
  /// The self managed Active Directory organizational unit for your DB instance to join. Conflicts with `domain` and `domainIamRoleName`.
  late final pulumi.Output<String?> domainOu;
  /// Set of log types to enable for exporting to CloudWatch logs. If omitted, no logs will be exported. For supported values, see the EnableCloudwatchLogsExports.member.N parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html).
  late final pulumi.Output<List<String>?> enabledCloudwatchLogsExports;
  /// The connection endpoint in `address:port` format.
  late final pulumi.Output<String> endpoint;
  /// The database engine to use. For supported values, see the Engine parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html). Note that for Amazon Aurora instances the engine must match the DB cluster's engine'. For information on the difference between the available Aurora MySQL engines see [Comparison between Aurora MySQL 1 and Aurora MySQL 2](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Updates.20180206.html) in the Amazon RDS User Guide.
  late final pulumi.Output<String> engine;
  /// The life cycle type for this DB instance. This setting applies only to RDS for MySQL and RDS for PostgreSQL. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  late final pulumi.Output<String> engineLifecycleSupport;
  /// The engine version to use. If `autoMinorVersionUpgrade` is enabled, you can provide a prefix of the version such as `8.0` (for `8.0.36`). The actual engine version used is returned in the attribute `engineVersionActual`, see Attribute Reference below. For supported values, see the EngineVersion parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html). Note that for Amazon Aurora instances the engine version must match the DB cluster's engine version'.
  late final pulumi.Output<String> engineVersion;
  /// The running version of the database.
  late final pulumi.Output<String> engineVersionActual;
  /// The name of your final DB snapshot
  /// when this DB instance is deleted. Must be provided if `skipFinalSnapshot` is
  /// set to `false`. The value must begin with a letter, only contain alphanumeric characters and hyphens, and not end with a hyphen or contain two consecutive hyphens. Must not be provided when deleting a read replica.
  late final pulumi.Output<String?> finalSnapshotIdentifier;
  /// Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.
  late final pulumi.Output<String> hostedZoneId;
  /// Specifies whether mappings of AWS Identity and Access Management (IAM) accounts to database
  /// accounts is enabled.
  late final pulumi.Output<bool?> iamDatabaseAuthenticationEnabled;
  /// The name of the RDS instance, if omitted, this provider will assign a random, unique identifier. Required if `restoreToPointInTime` is specified.
  late final pulumi.Output<String> identifier;
  /// Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  late final pulumi.Output<String> identifierPrefix;
  /// The instance type of the RDS instance.
  late final pulumi.Output<String> instanceClass;
  /// The amount of provisioned IOPS. Setting this implies a
  /// storageType of "io1" or "io2". Can only be set when `storageType` is `"io1"`, `"io2` or `"gp3"`.
  /// Cannot be specified for gp3 storage if the `allocatedStorage` value is below a per-`engine` threshold.
  /// See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#gp3-storage) for details.
  late final pulumi.Output<int> iops;
  /// The ARN for the KMS encryption key. If creating an
  /// encrypted replica, set this to the destination KMS ARN.
  late final pulumi.Output<String> kmsKeyId;
  /// The latest time, in UTC [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8), to which a database can be restored with point-in-time restore.
  late final pulumi.Output<String> latestRestorableTime;
  /// License model information for this DB instance. Valid values for this field are as follows:
  /// * RDS for MariaDB: `general-public-license`
  /// * RDS for Microsoft SQL Server: `license-included`
  /// * RDS for MySQL: `general-public-license`
  /// * RDS for Oracle: `bring-your-own-license | license-included`
  /// * RDS for PostgreSQL: `postgresql-license`
  late final pulumi.Output<String> licenseModel;
  /// Specifies the listener connection endpoint for SQL Server Always On. See endpoint below.
  late final pulumi.Output<List<Map<String, dynamic>>> listenerEndpoints;
  /// The window to perform maintenance in.
  /// Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00". See [RDS
  /// Maintenance Window
  /// docs](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow)
  /// for more information.
  late final pulumi.Output<String> maintenanceWindow;
  /// Set to true to allow RDS to manage the master user password in Secrets Manager. Cannot be set if `password` or `passwordWo` is provided.
  late final pulumi.Output<bool?> manageMasterUserPassword;
  /// The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN. If not specified, the default KMS key for your Amazon Web Services account is used.
  late final pulumi.Output<String> masterUserSecretKmsKeyId;
  /// A block that specifies the master user secret. Only available when `manageMasterUserPassword` is set to true. Documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> masterUserSecrets;
  /// Specifies the maximum storage (in GiB) that Amazon RDS can automatically scale to for this DB instance. By default, Storage Autoscaling is disabled. To enable Storage Autoscaling, set `maxAllocatedStorage` to **greater than or equal to** `allocatedStorage`. Setting `maxAllocatedStorage` to 0 explicitly disables Storage Autoscaling. When configured, changes to `allocatedStorage` will be automatically ignored as the storage can dynamically scale.
  late final pulumi.Output<int?> maxAllocatedStorage;
  /// The interval, in seconds, between points
  /// when Enhanced Monitoring metrics are collected for the DB instance. To disable
  /// collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid
  /// Values: 0, 1, 5, 10, 15, 30, 60.
  late final pulumi.Output<int?> monitoringInterval;
  /// The ARN for the IAM role that permits RDS
  /// to send enhanced monitoring metrics to CloudWatch Logs. You can find more
  /// information on the [AWS
  /// Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html)
  /// what IAM permissions are needed to allow Enhanced Monitoring for RDS Instances.
  late final pulumi.Output<String> monitoringRoleArn;
  /// Specifies if the RDS instance is multi-AZ
  late final pulumi.Output<bool> multiAz;
  /// The national character set is used in the NCHAR, NVARCHAR2, and NCLOB data types for Oracle instances. This can't be changed. See [Oracle Character Sets
  /// Supported in Amazon RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.OracleCharacterSets.html).
  late final pulumi.Output<String> ncharCharacterSetName;
  /// The network type of the DB instance. Valid values: `IPV4`, `DUAL`.
  late final pulumi.Output<String> networkType;
  /// Name of the DB option group to associate.
  late final pulumi.Output<String> optionGroupName;
  /// Name of the DB parameter group to associate.
  late final pulumi.Output<String> parameterGroupName;
  /// Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Cannot be set if `manageMasterUserPassword` is set to `true`.
  late final pulumi.Output<String?> password;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Cannot be set if `manageMasterUserPassword` is set to `true`.
  late final pulumi.Output<String?> passwordWo;
  /// Used together with `passwordWo` to trigger an update. Increment this value when an update to `passwordWo` is required.
  late final pulumi.Output<int?> passwordWoVersion;
  /// Specifies whether Performance Insights are enabled. Defaults to false.
  late final pulumi.Output<bool?> performanceInsightsEnabled;
  /// The ARN for the KMS key to encrypt Performance Insights data. When specifying `performanceInsightsKmsKeyId`, `performanceInsightsEnabled` needs to be set to true. Once KMS key is set, it can never be changed.
  late final pulumi.Output<String> performanceInsightsKmsKeyId;
  /// Amount of time in days to retain Performance Insights data. Valid values are `7`, `731` (2 years) or a multiple of `31`. When specifying `performanceInsightsRetentionPeriod`, `performanceInsightsEnabled` needs to be set to true. Defaults to '7'.
  late final pulumi.Output<int> performanceInsightsRetentionPeriod;
  /// The port on which the DB accepts connections.
  late final pulumi.Output<int> port;
  /// Bool to control if instance is publicly
  /// accessible. Default is `false`.
  late final pulumi.Output<bool?> publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specifies whether the replica is in either `mounted` or `open-read-only` mode. This attribute
  /// is only supported by Oracle instances. Oracle replicas operate in `open-read-only` mode unless otherwise specified. See [Working with Oracle Read Replicas](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html) for more information.
  late final pulumi.Output<String> replicaMode;
  late final pulumi.Output<List<String>> replicas;
  /// Specifies that this resource is a Replica database, and to use this value as the source database.
  /// If replicating an Amazon RDS Database Instance in the same region, use the `identifier` of the source DB, unless also specifying the `dbSubnetGroupName`.
  /// If specifying the `dbSubnetGroupName` in the same region, use the `arn` of the source DB.
  /// If replicating an Instance in a different region, use the `arn` of the source DB.
  /// Note that if you are creating a cross-region replica of an encrypted database you will also need to specify a `kmsKeyId`.
  /// See [DB Instance Replication][instance-replication] and [Working with PostgreSQL and MySQL Read Replicas](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html) for more information on using Replication.
  late final pulumi.Output<String?> replicateSourceDb;
  /// The RDS Resource ID of this instance.
  late final pulumi.Output<String> resourceId;
  /// A configuration block for restoring a DB instance to an arbitrary point in time.
  /// Requires the `identifier` argument to be set with the name of the new DB instance to be created.
  /// See Restore To Point In Time below for details.
  late final pulumi.Output<InstanceRestoreToPointInTime?> restoreToPointInTime;
  /// Restore from a Percona Xtrabackup in S3.  See [Importing Data into an Amazon RDS MySQL DB Instance](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MySQL.Procedural.Importing.html)
  late final pulumi.Output<InstanceS3Import?> s3Import;
  /// Determines whether a final DB snapshot is
  /// created before the DB instance is deleted. If true is specified, no DBSnapshot
  /// is created. If false is specified, a DB snapshot is created before the DB
  /// instance is deleted, using the value from `finalSnapshotIdentifier`. Default
  /// is `false`.
  late final pulumi.Output<bool?> skipFinalSnapshot;
  /// Specifies whether or not to create this database from a snapshot.
  /// This corresponds to the snapshot ID you'd find in the RDS console, e.g: rds:production-2015-06-26-06-05.
  late final pulumi.Output<String> snapshotIdentifier;
  /// The RDS instance status.
  late final pulumi.Output<String> status;
  /// Specifies whether the DB instance is
  /// encrypted. Note that if you are creating a cross-region read replica this field
  /// is ignored and you should instead declare `kmsKeyId` with a valid ARN. The
  /// default is `false` if not specified.
  late final pulumi.Output<bool?> storageEncrypted;
  /// The storage throughput value for the DB instance. Can only be set when `storageType` is `"gp3"`. Cannot be specified if the `allocatedStorage` value is below a per-`engine` threshold. See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#gp3-storage) for details.
  late final pulumi.Output<int> storageThroughput;
  /// One of "standard" (magnetic), "gp2" (general
  /// purpose SSD), "gp3" (general purpose SSD that needs `iops` independently)
  /// "io1" (provisioned IOPS SSD) or "io2" (block express storage provisioned IOPS
  /// SSD). The default is "io1" if `iops` is specified, "gp2" if not.
  late final pulumi.Output<String> storageType;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Time zone of the DB instance. `timezone` is currently
  /// only supported by Microsoft SQL Server. The `timezone` can only be set on
  /// creation. See [MSSQL User
  /// Guide](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone)
  /// for more information.
  late final pulumi.Output<String> timezone;
  /// Order in which the instances are upgraded (`first`, `second`, `last`). See [the AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Maintenance.AMVU.UpgradeRollout.html) for details.
  late final pulumi.Output<String> upgradeRolloutOrder;
  /// Whether to upgrade the storage file system configuration on the read replica.
  /// Can only be set with `replicateSourceDb`.
  late final pulumi.Output<bool?> upgradeStorageConfig;
  /// (Required unless a `snapshotIdentifier` or `replicateSourceDb`
  /// is provided) Username for the master DB user. Cannot be specified for a replica.
  late final pulumi.Output<String> username;
  /// List of VPC security groups to
  /// associate.
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_rds_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    address = registerOutput<String>('address');
    allocatedStorage = registerOutput<int>('allocatedStorage');
    allowMajorVersionUpgrade = registerOutput<bool?>('allowMajorVersionUpgrade');
    applyImmediately = registerOutput<bool?>('applyImmediately');
    arn = registerOutput<String>('arn');
    autoMinorVersionUpgrade = registerOutput<bool?>('autoMinorVersionUpgrade');
    availabilityZone = registerOutput<String>('availabilityZone');
    backupRetentionPeriod = registerOutput<int>('backupRetentionPeriod');
    backupTarget = registerOutput<String>('backupTarget');
    backupWindow = registerOutput<String>('backupWindow');
    blueGreenUpdate = registerOutput<InstanceBlueGreenUpdate?>('blueGreenUpdate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceBlueGreenUpdate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    caCertIdentifier = registerOutput<String>('caCertIdentifier');
    characterSetName = registerOutput<String>('characterSetName');
    copyTagsToSnapshot = registerOutput<bool?>('copyTagsToSnapshot');
    customIamInstanceProfile = registerOutput<String?>('customIamInstanceProfile');
    customerOwnedIpEnabled = registerOutput<bool?>('customerOwnedIpEnabled');
    databaseInsightsMode = registerOutput<String>('databaseInsightsMode');
    dbName = registerOutput<String>('dbName');
    dbSubnetGroupName = registerOutput<String>('dbSubnetGroupName');
    dedicatedLogVolume = registerOutput<bool?>('dedicatedLogVolume');
    deleteAutomatedBackups = registerOutput<bool?>('deleteAutomatedBackups');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    domain = registerOutput<String?>('domain');
    domainAuthSecretArn = registerOutput<String?>('domainAuthSecretArn');
    domainDnsIps = registerOutput<List<String>?>('domainDnsIps');
    domainFqdn = registerOutput<String>('domainFqdn');
    domainIamRoleName = registerOutput<String?>('domainIamRoleName');
    domainOu = registerOutput<String?>('domainOu');
    enabledCloudwatchLogsExports = registerOutput<List<String>?>('enabledCloudwatchLogsExports');
    endpoint = registerOutput<String>('endpoint');
    engine = registerOutput<String>('engine');
    engineLifecycleSupport = registerOutput<String>('engineLifecycleSupport');
    engineVersion = registerOutput<String>('engineVersion');
    engineVersionActual = registerOutput<String>('engineVersionActual');
    finalSnapshotIdentifier = registerOutput<String?>('finalSnapshotIdentifier');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    iamDatabaseAuthenticationEnabled = registerOutput<bool?>('iamDatabaseAuthenticationEnabled');
    identifier = registerOutput<String>('identifier');
    identifierPrefix = registerOutput<String>('identifierPrefix');
    instanceClass = registerOutput<String>('instanceClass');
    iops = registerOutput<int>('iops');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    latestRestorableTime = registerOutput<String>('latestRestorableTime');
    licenseModel = registerOutput<String>('licenseModel');
    listenerEndpoints = registerOutput<List<Map<String, dynamic>>>('listenerEndpoints');
    maintenanceWindow = registerOutput<String>('maintenanceWindow');
    manageMasterUserPassword = registerOutput<bool?>('manageMasterUserPassword');
    masterUserSecretKmsKeyId = registerOutput<String>('masterUserSecretKmsKeyId');
    masterUserSecrets = registerOutput<List<Map<String, dynamic>>>('masterUserSecrets');
    maxAllocatedStorage = registerOutput<int?>('maxAllocatedStorage');
    monitoringInterval = registerOutput<int?>('monitoringInterval');
    monitoringRoleArn = registerOutput<String>('monitoringRoleArn');
    multiAz = registerOutput<bool>('multiAz');
    ncharCharacterSetName = registerOutput<String>('ncharCharacterSetName');
    networkType = registerOutput<String>('networkType');
    optionGroupName = registerOutput<String>('optionGroupName');
    parameterGroupName = registerOutput<String>('parameterGroupName');
    password = registerOutput<String?>('password');
    passwordWo = registerOutput<String?>('passwordWo');
    passwordWoVersion = registerOutput<int?>('passwordWoVersion');
    performanceInsightsEnabled = registerOutput<bool?>('performanceInsightsEnabled');
    performanceInsightsKmsKeyId = registerOutput<String>('performanceInsightsKmsKeyId');
    performanceInsightsRetentionPeriod = registerOutput<int>('performanceInsightsRetentionPeriod');
    port = registerOutput<int>('port');
    publiclyAccessible = registerOutput<bool?>('publiclyAccessible');
    region = registerOutput<String>('region');
    replicaMode = registerOutput<String>('replicaMode');
    replicas = registerOutput<List<String>>('replicas');
    replicateSourceDb = registerOutput<String?>('replicateSourceDb');
    resourceId = registerOutput<String>('resourceId');
    restoreToPointInTime = registerOutput<InstanceRestoreToPointInTime?>('restoreToPointInTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceRestoreToPointInTime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    s3Import = registerOutput<InstanceS3Import?>('s3Import', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceS3Import.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    snapshotIdentifier = registerOutput<String>('snapshotIdentifier');
    status = registerOutput<String>('status');
    storageEncrypted = registerOutput<bool?>('storageEncrypted');
    storageThroughput = registerOutput<int>('storageThroughput');
    storageType = registerOutput<String>('storageType');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timezone = registerOutput<String>('timezone');
    upgradeRolloutOrder = registerOutput<String>('upgradeRolloutOrder');
    upgradeStorageConfig = registerOutput<bool?>('upgradeStorageConfig');
    username = registerOutput<String>('username');
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    address = registerOutput<String>('address');
    allocatedStorage = registerOutput<int>('allocatedStorage');
    allowMajorVersionUpgrade = registerOutput<bool?>('allowMajorVersionUpgrade');
    applyImmediately = registerOutput<bool?>('applyImmediately');
    arn = registerOutput<String>('arn');
    autoMinorVersionUpgrade = registerOutput<bool?>('autoMinorVersionUpgrade');
    availabilityZone = registerOutput<String>('availabilityZone');
    backupRetentionPeriod = registerOutput<int>('backupRetentionPeriod');
    backupTarget = registerOutput<String>('backupTarget');
    backupWindow = registerOutput<String>('backupWindow');
    blueGreenUpdate = registerOutput<InstanceBlueGreenUpdate?>('blueGreenUpdate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceBlueGreenUpdate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    caCertIdentifier = registerOutput<String>('caCertIdentifier');
    characterSetName = registerOutput<String>('characterSetName');
    copyTagsToSnapshot = registerOutput<bool?>('copyTagsToSnapshot');
    customIamInstanceProfile = registerOutput<String?>('customIamInstanceProfile');
    customerOwnedIpEnabled = registerOutput<bool?>('customerOwnedIpEnabled');
    databaseInsightsMode = registerOutput<String>('databaseInsightsMode');
    dbName = registerOutput<String>('dbName');
    dbSubnetGroupName = registerOutput<String>('dbSubnetGroupName');
    dedicatedLogVolume = registerOutput<bool?>('dedicatedLogVolume');
    deleteAutomatedBackups = registerOutput<bool?>('deleteAutomatedBackups');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    domain = registerOutput<String?>('domain');
    domainAuthSecretArn = registerOutput<String?>('domainAuthSecretArn');
    domainDnsIps = registerOutput<List<String>?>('domainDnsIps');
    domainFqdn = registerOutput<String>('domainFqdn');
    domainIamRoleName = registerOutput<String?>('domainIamRoleName');
    domainOu = registerOutput<String?>('domainOu');
    enabledCloudwatchLogsExports = registerOutput<List<String>?>('enabledCloudwatchLogsExports');
    endpoint = registerOutput<String>('endpoint');
    engine = registerOutput<String>('engine');
    engineLifecycleSupport = registerOutput<String>('engineLifecycleSupport');
    engineVersion = registerOutput<String>('engineVersion');
    engineVersionActual = registerOutput<String>('engineVersionActual');
    finalSnapshotIdentifier = registerOutput<String?>('finalSnapshotIdentifier');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    iamDatabaseAuthenticationEnabled = registerOutput<bool?>('iamDatabaseAuthenticationEnabled');
    identifier = registerOutput<String>('identifier');
    identifierPrefix = registerOutput<String>('identifierPrefix');
    instanceClass = registerOutput<String>('instanceClass');
    iops = registerOutput<int>('iops');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    latestRestorableTime = registerOutput<String>('latestRestorableTime');
    licenseModel = registerOutput<String>('licenseModel');
    listenerEndpoints = registerOutput<List<Map<String, dynamic>>>('listenerEndpoints');
    maintenanceWindow = registerOutput<String>('maintenanceWindow');
    manageMasterUserPassword = registerOutput<bool?>('manageMasterUserPassword');
    masterUserSecretKmsKeyId = registerOutput<String>('masterUserSecretKmsKeyId');
    masterUserSecrets = registerOutput<List<Map<String, dynamic>>>('masterUserSecrets');
    maxAllocatedStorage = registerOutput<int?>('maxAllocatedStorage');
    monitoringInterval = registerOutput<int?>('monitoringInterval');
    monitoringRoleArn = registerOutput<String>('monitoringRoleArn');
    multiAz = registerOutput<bool>('multiAz');
    ncharCharacterSetName = registerOutput<String>('ncharCharacterSetName');
    networkType = registerOutput<String>('networkType');
    optionGroupName = registerOutput<String>('optionGroupName');
    parameterGroupName = registerOutput<String>('parameterGroupName');
    password = registerOutput<String?>('password');
    passwordWo = registerOutput<String?>('passwordWo');
    passwordWoVersion = registerOutput<int?>('passwordWoVersion');
    performanceInsightsEnabled = registerOutput<bool?>('performanceInsightsEnabled');
    performanceInsightsKmsKeyId = registerOutput<String>('performanceInsightsKmsKeyId');
    performanceInsightsRetentionPeriod = registerOutput<int>('performanceInsightsRetentionPeriod');
    port = registerOutput<int>('port');
    publiclyAccessible = registerOutput<bool?>('publiclyAccessible');
    region = registerOutput<String>('region');
    replicaMode = registerOutput<String>('replicaMode');
    replicas = registerOutput<List<String>>('replicas');
    replicateSourceDb = registerOutput<String?>('replicateSourceDb');
    resourceId = registerOutput<String>('resourceId');
    restoreToPointInTime = registerOutput<InstanceRestoreToPointInTime?>('restoreToPointInTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceRestoreToPointInTime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    s3Import = registerOutput<InstanceS3Import?>('s3Import', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceS3Import.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    snapshotIdentifier = registerOutput<String>('snapshotIdentifier');
    status = registerOutput<String>('status');
    storageEncrypted = registerOutput<bool?>('storageEncrypted');
    storageThroughput = registerOutput<int>('storageThroughput');
    storageType = registerOutput<String>('storageType');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timezone = registerOutput<String>('timezone');
    upgradeRolloutOrder = registerOutput<String>('upgradeRolloutOrder');
    upgradeStorageConfig = registerOutput<bool?>('upgradeStorageConfig');
    username = registerOutput<String>('username');
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
  }
}
