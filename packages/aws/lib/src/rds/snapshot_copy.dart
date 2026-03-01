import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_copy_args.dart';

/// Manages an RDS database instance snapshot copy. For managing RDS database cluster snapshots, see the `aws.rds.ClusterSnapshot` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.Instance("example", {
///     allocatedStorage: 10,
///     engine: "mysql",
///     engineVersion: "5.6.21",
///     instanceClass: aws.rds.InstanceType.T2_Micro,
///     dbName: "baz",
///     password: "barbarbarbar",
///     username: "foo",
///     maintenanceWindow: "Fri:09:00-Fri:09:30",
///     backupRetentionPeriod: 0,
///     parameterGroupName: "default.mysql5.6",
/// });
/// const exampleSnapshot = new aws.rds.Snapshot("example", {
///     dbInstanceIdentifier: example.identifier,
///     dbSnapshotIdentifier: "testsnapshot1234",
/// });
/// const exampleSnapshotCopy = new aws.rds.SnapshotCopy("example", {
///     sourceDbSnapshotIdentifier: exampleSnapshot.dbSnapshotArn,
///     targetDbSnapshotIdentifier: "testsnapshot1234-copy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.Instance("example",
///     allocated_storage=10,
///     engine="mysql",
///     engine_version="5.6.21",
///     instance_class=aws.rds.InstanceType.T2_MICRO,
///     db_name="baz",
///     password="barbarbarbar",
///     username="foo",
///     maintenance_window="Fri:09:00-Fri:09:30",
///     backup_retention_period=0,
///     parameter_group_name="default.mysql5.6")
/// example_snapshot = aws.rds.Snapshot("example",
///     db_instance_identifier=example.identifier,
///     db_snapshot_identifier="testsnapshot1234")
/// example_snapshot_copy = aws.rds.SnapshotCopy("example",
///     source_db_snapshot_identifier=example_snapshot.db_snapshot_arn,
///     target_db_snapshot_identifier="testsnapshot1234-copy")
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
///         AllocatedStorage = 10,
///         Engine = "mysql",
///         EngineVersion = "5.6.21",
///         InstanceClass = Aws.Rds.InstanceType.T2_Micro,
///         DbName = "baz",
///         Password = "barbarbarbar",
///         Username = "foo",
///         MaintenanceWindow = "Fri:09:00-Fri:09:30",
///         BackupRetentionPeriod = 0,
///         ParameterGroupName = "default.mysql5.6",
///     });
///
///     var exampleSnapshot = new Aws.Rds.Snapshot("example", new()
///     {
///         DbInstanceIdentifier = example.Identifier,
///         DbSnapshotIdentifier = "testsnapshot1234",
///     });
///
///     var exampleSnapshotCopy = new Aws.Rds.SnapshotCopy("example", new()
///     {
///         SourceDbSnapshotIdentifier = exampleSnapshot.DbSnapshotArn,
///         TargetDbSnapshotIdentifier = "testsnapshot1234-copy",
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
/// 			AllocatedStorage:      pulumi.Int(10),
/// 			Engine:                pulumi.String("mysql"),
/// 			EngineVersion:         pulumi.String("5.6.21"),
/// 			InstanceClass:         pulumi.String(rds.InstanceType_T2_Micro),
/// 			DbName:                pulumi.String("baz"),
/// 			Password:              pulumi.String("barbarbarbar"),
/// 			Username:              pulumi.String("foo"),
/// 			MaintenanceWindow:     pulumi.String("Fri:09:00-Fri:09:30"),
/// 			BackupRetentionPeriod: pulumi.Int(0),
/// 			ParameterGroupName:    pulumi.String("default.mysql5.6"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSnapshot, err := rds.NewSnapshot(ctx, "example", &rds.SnapshotArgs{
/// 			DbInstanceIdentifier: example.Identifier,
/// 			DbSnapshotIdentifier: pulumi.String("testsnapshot1234"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewSnapshotCopy(ctx, "example", &rds.SnapshotCopyArgs{
/// 			SourceDbSnapshotIdentifier: exampleSnapshot.DbSnapshotArn,
/// 			TargetDbSnapshotIdentifier: pulumi.String("testsnapshot1234-copy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.aws.rds.Snapshot;
/// import com.pulumi.aws.rds.SnapshotArgs;
/// import com.pulumi.aws.rds.SnapshotCopy;
/// import com.pulumi.aws.rds.SnapshotCopyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .allocatedStorage(10)
///             .engine("mysql")
///             .engineVersion("5.6.21")
///             .instanceClass("db.t2.micro")
///             .dbName("baz")
///             .password("barbarbarbar")
///             .username("foo")
///             .maintenanceWindow("Fri:09:00-Fri:09:30")
///             .backupRetentionPeriod(0)
///             .parameterGroupName("default.mysql5.6")
///             .build());
///
///         var exampleSnapshot = new Snapshot("exampleSnapshot", SnapshotArgs.builder()
///             .dbInstanceIdentifier(example.identifier())
///             .dbSnapshotIdentifier("testsnapshot1234")
///             .build());
///
///         var exampleSnapshotCopy = new SnapshotCopy("exampleSnapshotCopy", SnapshotCopyArgs.builder()
///             .sourceDbSnapshotIdentifier(exampleSnapshot.dbSnapshotArn())
///             .targetDbSnapshotIdentifier("testsnapshot1234-copy")
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
///       allocatedStorage: 10
///       engine: mysql
///       engineVersion: 5.6.21
///       instanceClass: db.t2.micro
///       dbName: baz
///       password: barbarbarbar
///       username: foo
///       maintenanceWindow: Fri:09:00-Fri:09:30
///       backupRetentionPeriod: 0
///       parameterGroupName: default.mysql5.6
///   exampleSnapshot:
///     type: aws:rds:Snapshot
///     name: example
///     properties:
///       dbInstanceIdentifier: ${example.identifier}
///       dbSnapshotIdentifier: testsnapshot1234
///   exampleSnapshotCopy:
///     type: aws:rds:SnapshotCopy
///     name: example
///     properties:
///       sourceDbSnapshotIdentifier: ${exampleSnapshot.dbSnapshotArn}
///       targetDbSnapshotIdentifier: testsnapshot1234-copy
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.rds.SnapshotCopy` using the snapshot identifier. For example:
///
/// ```sh
/// $ pulumi import aws:rds/snapshotCopy:SnapshotCopy example my-snapshot
/// ```
class SnapshotCopy extends pulumi.CustomResource {
  /// Specifies the allocated storage size in gigabytes (GB).
  late final pulumi.Output<int> allocatedStorage;

  /// Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.
  late final pulumi.Output<String> availabilityZone;

  /// Whether to copy existing tags. Defaults to `false`.
  late final pulumi.Output<bool?> copyTags;

  /// The Amazon Resource Name (ARN) for the DB snapshot.
  late final pulumi.Output<String> dbSnapshotArn;

  /// The Destination region to place snapshot copy.
  late final pulumi.Output<String?> destinationRegion;

  /// Specifies whether the DB snapshot is encrypted.
  late final pulumi.Output<bool> encrypted;

  /// Specifies the name of the database engine.
  late final pulumi.Output<String> engine;

  /// Specifies the version of the database engine.
  late final pulumi.Output<String> engineVersion;

  /// Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.
  late final pulumi.Output<int> iops;

  /// KMS key ID.
  late final pulumi.Output<String?> kmsKeyId;

  /// License model information for the restored DB instance.
  late final pulumi.Output<String> licenseModel;

  /// The name of an option group to associate with the copy of the snapshot.
  late final pulumi.Output<String> optionGroupName;
  late final pulumi.Output<int> port;

  /// he URL that contains a Signature Version 4 signed request.
  late final pulumi.Output<String?> presignedUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  late final pulumi.Output<List<String>?> sharedAccounts;
  late final pulumi.Output<String> snapshotType;

  /// Snapshot identifier of the source snapshot.
  late final pulumi.Output<String> sourceDbSnapshotIdentifier;

  /// The region that the DB snapshot was created in or copied from.
  late final pulumi.Output<String> sourceRegion;

  /// Specifies the storage type associated with DB snapshot.
  late final pulumi.Output<String> storageType;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The external custom Availability Zone.
  late final pulumi.Output<String?> targetCustomAvailabilityZone;

  /// The Identifier for the snapshot.
  late final pulumi.Output<String> targetDbSnapshotIdentifier;

  /// Provides the VPC ID associated with the DB snapshot.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [SnapshotCopy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnapshotCopy]. {@macro pulumi_rds_snapshot_copy_snapshot_copy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnapshotCopy(
    String name, {
    SnapshotCopyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:rds/snapshotCopy:SnapshotCopy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.allocatedStorage = registerOutput<int>('allocatedStorage');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.copyTags = registerOutput<bool?>('copyTags');
    this.dbSnapshotArn = registerOutput<String>('dbSnapshotArn');
    this.destinationRegion = registerOutput<String?>('destinationRegion');
    this.encrypted = registerOutput<bool>('encrypted');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.iops = registerOutput<int>('iops');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.licenseModel = registerOutput<String>('licenseModel');
    this.optionGroupName = registerOutput<String>('optionGroupName');
    this.port = registerOutput<int>('port');
    this.presignedUrl = registerOutput<String?>('presignedUrl');
    this.region = registerOutput<String>('region');
    this.sharedAccounts = registerOutput<List<String>?>('sharedAccounts');
    this.snapshotType = registerOutput<String>('snapshotType');
    this.sourceDbSnapshotIdentifier = registerOutput<String>(
      'sourceDbSnapshotIdentifier',
    );
    this.sourceRegion = registerOutput<String>('sourceRegion');
    this.storageType = registerOutput<String>('storageType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetCustomAvailabilityZone = registerOutput<String?>(
      'targetCustomAvailabilityZone',
    );
    this.targetDbSnapshotIdentifier = registerOutput<String>(
      'targetDbSnapshotIdentifier',
    );
    this.vpcId = registerOutput<String>('vpcId');
  }
}
