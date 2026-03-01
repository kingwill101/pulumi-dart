import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';
import 'snapshot_state.dart';

/// Creates a new Amazon Redshift Serverless Snapshot.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshiftserverless.Snapshot("example", {
///     namespaceName: exampleAwsRedshiftserverlessWorkgroup.namespaceName,
///     snapshotName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshiftserverless.Snapshot("example",
///     namespace_name=example_aws_redshiftserverless_workgroup["namespaceName"],
///     snapshot_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedshiftServerless.Snapshot("example", new()
///     {
///         NamespaceName = exampleAwsRedshiftserverlessWorkgroup.NamespaceName,
///         SnapshotName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshiftserverless.NewSnapshot(ctx, "example", &redshiftserverless.SnapshotArgs{
/// 			NamespaceName: pulumi.Any(exampleAwsRedshiftserverlessWorkgroup.NamespaceName),
/// 			SnapshotName:  pulumi.String("example"),
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
/// import com.pulumi.aws.redshiftserverless.Snapshot;
/// import com.pulumi.aws.redshiftserverless.SnapshotArgs;
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
///         var example = new Snapshot("example", SnapshotArgs.builder()
///             .namespaceName(exampleAwsRedshiftserverlessWorkgroup.namespaceName())
///             .snapshotName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshiftserverless:Snapshot
///     properties:
///       namespaceName: ${exampleAwsRedshiftserverlessWorkgroup.namespaceName}
///       snapshotName: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Serverless Snapshots using the `snapshot_name`. For example:
///
/// ```sh
/// $ pulumi import aws:redshiftserverless/snapshot:Snapshot example example
/// ```
class Snapshot extends pulumi.CustomResource {
  /// All of the Amazon Web Services accounts that have access to restore a snapshot to a provisioned cluster.
  late final pulumi.Output<List<String>> accountsWithProvisionedRestoreAccesses;
  /// All of the Amazon Web Services accounts that have access to restore a snapshot to a namespace.
  late final pulumi.Output<List<String>> accountsWithRestoreAccesses;
  /// The username of the database within a snapshot.
  late final pulumi.Output<String> adminUsername;
  /// The Amazon Resource Name (ARN) of the snapshot.
  late final pulumi.Output<String> arn;
  /// The unique identifier of the KMS key used to encrypt the snapshot.
  late final pulumi.Output<String> kmsKeyId;
  /// The Amazon Resource Name (ARN) of the namespace the snapshot was created from.
  late final pulumi.Output<String> namespaceArn;
  /// The namespace to create a snapshot for.
  late final pulumi.Output<String> namespaceName;
  /// The owner Amazon Web Services; account of the snapshot.
  late final pulumi.Output<String> ownerAccount;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// How long to retain the created snapshot. Default value is `-1`.
  late final pulumi.Output<int?> retentionPeriod;
  /// The name of the snapshot.
  late final pulumi.Output<String> snapshotName;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_redshiftserverless_snapshot_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountsWithProvisionedRestoreAccesses = registerOutput<List<String>>('accountsWithProvisionedRestoreAccesses');
    this.accountsWithRestoreAccesses = registerOutput<List<String>>('accountsWithRestoreAccesses');
    this.adminUsername = registerOutput<String>('adminUsername');
    this.arn = registerOutput<String>('arn');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.namespaceArn = registerOutput<String>('namespaceArn');
    this.namespaceName = registerOutput<String>('namespaceName');
    this.ownerAccount = registerOutput<String>('ownerAccount');
    this.region = registerOutput<String>('region');
    this.retentionPeriod = registerOutput<int?>('retentionPeriod');
    this.snapshotName = registerOutput<String>('snapshotName');
  }

  /// Gets an existing [Snapshot] resource's state with the given [name] and [id].
  static Snapshot get(
    String name,
    pulumi.Input<String> id, {
    SnapshotState? state,
  }) {
    return Snapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Snapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountsWithProvisionedRestoreAccesses = registerOutput<List<String>>('accountsWithProvisionedRestoreAccesses');
    this.accountsWithRestoreAccesses = registerOutput<List<String>>('accountsWithRestoreAccesses');
    this.adminUsername = registerOutput<String>('adminUsername');
    this.arn = registerOutput<String>('arn');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.namespaceArn = registerOutput<String>('namespaceArn');
    this.namespaceName = registerOutput<String>('namespaceName');
    this.ownerAccount = registerOutput<String>('ownerAccount');
    this.region = registerOutput<String>('region');
    this.retentionPeriod = registerOutput<int?>('retentionPeriod');
    this.snapshotName = registerOutput<String>('snapshotName');
  }
}
