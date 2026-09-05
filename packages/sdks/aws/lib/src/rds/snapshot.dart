import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';
import 'snapshot_state.dart';

/// Manages an RDS database instance snapshot. For managing RDS database cluster snapshots, see the `aws.rds.ClusterSnapshot` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = new aws.rds.Instance("bar", {
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
/// const test = new aws.rds.Snapshot("test", {
///     dbInstanceIdentifier: bar.identifier,
///     dbSnapshotIdentifier: "testsnapshot1234",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.rds.Instance("bar",
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
/// test = aws.rds.Snapshot("test",
///     db_instance_identifier=bar.identifier,
///     db_snapshot_identifier="testsnapshot1234")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bar = new Aws.Rds.Instance("bar", new()
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
///     var test = new Aws.Rds.Snapshot("test", new()
///     {
///         DbInstanceIdentifier = bar.Identifier,
///         DbSnapshotIdentifier = "testsnapshot1234",
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
/// 		bar, err := rds.NewInstance(ctx, "bar", &rds.InstanceArgs{
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
/// 		_, err = rds.NewSnapshot(ctx, "test", &rds.SnapshotArgs{
/// 			DbInstanceIdentifier: bar.Identifier,
/// 			DbSnapshotIdentifier: pulumi.String("testsnapshot1234"),
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
/// resource "aws_rds_instance" "bar" {
///   allocated_storage       = 10
///   engine                  = "mysql"
///   engine_version          = "5.6.21"
///   instance_class          = "db.t2.micro"
///   db_name                 = "baz"
///   password                = "barbarbarbar"
///   username                = "foo"
///   maintenance_window      = "Fri:09:00-Fri:09:30"
///   backup_retention_period = 0
///   parameter_group_name    = "default.mysql5.6"
/// }
/// resource "aws_rds_snapshot" "test" {
///   db_instance_identifier = aws_rds_instance.bar.identifier
///   db_snapshot_identifier = "testsnapshot1234"
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
///         var bar = new Instance("bar", InstanceArgs.builder()
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
///         var test = new Snapshot("test", SnapshotArgs.builder()
///             .dbInstanceIdentifier(bar.identifier())
///             .dbSnapshotIdentifier("testsnapshot1234")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bar:
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
///   test:
///     type: aws:rds:Snapshot
///     properties:
///       dbInstanceIdentifier: ${bar.identifier}
///       dbSnapshotIdentifier: testsnapshot1234
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.rds.Snapshot` using the snapshot identifier. For example:
///
/// ```sh
/// $ pulumi import aws:rds/snapshot:Snapshot example my-snapshot
/// ```
class Snapshot extends pulumi.CustomResource {
  /// Specifies the allocated storage size in gigabytes (GB).
  late final pulumi.Output<int> allocatedStorage;
  /// Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.
  late final pulumi.Output<String> availabilityZone;
  /// The DB Instance Identifier from which to take the snapshot.
  late final pulumi.Output<String> dbInstanceIdentifier;
  /// ARN for the DB snapshot.
  late final pulumi.Output<String> dbSnapshotArn;
  /// The Identifier for the snapshot.
  late final pulumi.Output<String> dbSnapshotIdentifier;
  /// Specifies whether the DB snapshot is encrypted.
  late final pulumi.Output<bool> encrypted;
  /// Specifies the name of the database engine.
  late final pulumi.Output<String> engine;
  /// Specifies the version of the database engine.
  late final pulumi.Output<String> engineVersion;
  /// Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.
  late final pulumi.Output<int> iops;
  /// The ARN for the KMS encryption key.
  late final pulumi.Output<String> kmsKeyId;
  /// License model information for the restored DB instance.
  late final pulumi.Output<String> licenseModel;
  /// Provides the option group name for the DB snapshot.
  late final pulumi.Output<String> optionGroupName;
  late final pulumi.Output<int> port;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of AWS Account IDs to share the snapshot with. Use `all` to make the snapshot public.
  late final pulumi.Output<List<String>?> sharedAccounts;
  late final pulumi.Output<String> snapshotType;
  /// The DB snapshot Arn that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy.
  late final pulumi.Output<String> sourceDbSnapshotIdentifier;
  /// The region that the DB snapshot was created in or copied from.
  late final pulumi.Output<String> sourceRegion;
  /// Specifies the status of this DB snapshot.
  late final pulumi.Output<String> status;
  /// Specifies the storage type associated with DB snapshot.
  late final pulumi.Output<String> storageType;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Provides the VPC ID associated with the DB snapshot.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_rds_snapshot_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    allocatedStorage = registerOutput<int>('allocatedStorage');
    availabilityZone = registerOutput<String>('availabilityZone');
    dbInstanceIdentifier = registerOutput<String>('dbInstanceIdentifier');
    dbSnapshotArn = registerOutput<String>('dbSnapshotArn');
    dbSnapshotIdentifier = registerOutput<String>('dbSnapshotIdentifier');
    encrypted = registerOutput<bool>('encrypted');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    iops = registerOutput<int>('iops');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    licenseModel = registerOutput<String>('licenseModel');
    optionGroupName = registerOutput<String>('optionGroupName');
    port = registerOutput<int>('port');
    region = registerOutput<String>('region');
    sharedAccounts = registerOutput<List<String>?>('sharedAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    snapshotType = registerOutput<String>('snapshotType');
    sourceDbSnapshotIdentifier = registerOutput<String>('sourceDbSnapshotIdentifier');
    sourceRegion = registerOutput<String>('sourceRegion');
    status = registerOutput<String>('status');
    storageType = registerOutput<String>('storageType');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [Snapshot] resource's state with the given [name] and [id].
  static Snapshot get(
    String name,
    pulumi.Input<String> id, {
    SnapshotState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Snapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Snapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocatedStorage = registerOutput<int>('allocatedStorage');
    availabilityZone = registerOutput<String>('availabilityZone');
    dbInstanceIdentifier = registerOutput<String>('dbInstanceIdentifier');
    dbSnapshotArn = registerOutput<String>('dbSnapshotArn');
    dbSnapshotIdentifier = registerOutput<String>('dbSnapshotIdentifier');
    encrypted = registerOutput<bool>('encrypted');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    iops = registerOutput<int>('iops');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    licenseModel = registerOutput<String>('licenseModel');
    optionGroupName = registerOutput<String>('optionGroupName');
    port = registerOutput<int>('port');
    region = registerOutput<String>('region');
    sharedAccounts = registerOutput<List<String>?>('sharedAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    snapshotType = registerOutput<String>('snapshotType');
    sourceDbSnapshotIdentifier = registerOutput<String>('sourceDbSnapshotIdentifier');
    sourceRegion = registerOutput<String>('sourceRegion');
    status = registerOutput<String>('status');
    storageType = registerOutput<String>('storageType');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }

  /// Creates a typed reference to an existing [Snapshot] resource.
  Snapshot.reference(String urn)
    : super(
        'aws:rds/snapshot:Snapshot',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allocatedStorage = registerOutput<int>('allocatedStorage');
    availabilityZone = registerOutput<String>('availabilityZone');
    dbInstanceIdentifier = registerOutput<String>('dbInstanceIdentifier');
    dbSnapshotArn = registerOutput<String>('dbSnapshotArn');
    dbSnapshotIdentifier = registerOutput<String>('dbSnapshotIdentifier');
    encrypted = registerOutput<bool>('encrypted');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    iops = registerOutput<int>('iops');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    licenseModel = registerOutput<String>('licenseModel');
    optionGroupName = registerOutput<String>('optionGroupName');
    port = registerOutput<int>('port');
    region = registerOutput<String>('region');
    sharedAccounts = registerOutput<List<String>?>('sharedAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    snapshotType = registerOutput<String>('snapshotType');
    sourceDbSnapshotIdentifier = registerOutput<String>('sourceDbSnapshotIdentifier');
    sourceRegion = registerOutput<String>('sourceRegion');
    status = registerOutput<String>('status');
    storageType = registerOutput<String>('storageType');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }
}
