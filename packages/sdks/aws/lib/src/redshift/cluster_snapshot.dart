import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_snapshot_args.dart';
import 'cluster_snapshot_state.dart';

/// Creates a Redshift cluster snapshot
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.ClusterSnapshot("example", {
///     clusterSnapshotName: "example",
///     clusterSnapshotContent: JSON.stringify({
///         AllowDBUserOverride: "1",
///         Client_ID: "ExampleClientID",
///         App_ID: "example",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.redshift.ClusterSnapshot("example",
///     cluster_snapshot_name="example",
///     cluster_snapshot_content=json.dumps({
///         "AllowDBUserOverride": "1",
///         "Client_ID": "ExampleClientID",
///         "App_ID": "example",
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedShift.ClusterSnapshot("example", new()
///     {
///         ClusterSnapshotName = "example",
///         ClusterSnapshotContent = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["AllowDBUserOverride"] = "1",
///             ["Client_ID"] = "ExampleClientID",
///             ["App_ID"] = "example",
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"AllowDBUserOverride": "1",
/// 			"Client_ID":           "ExampleClientID",
/// 			"App_ID":              "example",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = redshift.NewClusterSnapshot(ctx, "example", &redshift.ClusterSnapshotArgs{
/// 			ClusterSnapshotName:    "example",
/// 			ClusterSnapshotContent: json0,
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
/// import com.pulumi.aws.redshift.ClusterSnapshot;
/// import com.pulumi.aws.redshift.ClusterSnapshotArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new ClusterSnapshot("example", ClusterSnapshotArgs.builder()
///             .clusterSnapshotName("example")
///             .clusterSnapshotContent(serializeJson(
///                 jsonObject(
///                     jsonProperty("AllowDBUserOverride", "1"),
///                     jsonProperty("Client_ID", "ExampleClientID"),
///                     jsonProperty("App_ID", "example")
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:ClusterSnapshot
///     properties:
///       clusterSnapshotName: example
///       clusterSnapshotContent:
///         fn::toJSON:
///           AllowDBUserOverride: '1'
///           Client_ID: ExampleClientID
///           App_ID: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Cluster Snapshots using `snapshot_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/clusterSnapshot:ClusterSnapshot test example
/// ```
class ClusterSnapshot extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the snapshot.
  late final pulumi.Output<String> arn;
  /// The cluster identifier for which you want a snapshot.
  late final pulumi.Output<String> clusterIdentifier;
  /// The Key Management Service (KMS) key ID of the encryption key that was used to encrypt data in the cluster from which the snapshot was taken.
  late final pulumi.Output<String> kmsKeyId;
  /// The number of days that a manual snapshot is retained. If the value is `-1`, the manual snapshot is retained indefinitely. Valid values are -1 and between `1` and `3653`.
  late final pulumi.Output<int?> manualSnapshotRetentionPeriod;
  /// For manual snapshots, the Amazon Web Services account used to create or copy the snapshot. For automatic snapshots, the owner of the cluster. The owner can perform all snapshot actions, such as sharing a manual snapshot.
  late final pulumi.Output<String> ownerAccount;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the Amazon Web Services account.
  late final pulumi.Output<String> snapshotIdentifier;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ClusterSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterSnapshot]. {@macro pulumi_redshift_cluster_snapshot_cluster_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterSnapshot(
    String name, {
    ClusterSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/clusterSnapshot:ClusterSnapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.manualSnapshotRetentionPeriod = registerOutput<int?>('manualSnapshotRetentionPeriod');
    this.ownerAccount = registerOutput<String>('ownerAccount');
    this.region = registerOutput<String>('region');
    this.snapshotIdentifier = registerOutput<String>('snapshotIdentifier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [ClusterSnapshot] resource's state with the given [name] and [id].
  static ClusterSnapshot get(
    String name,
    pulumi.Input<String> id, {
    ClusterSnapshotState? state,
  }) {
    return ClusterSnapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClusterSnapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/clusterSnapshot:ClusterSnapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.manualSnapshotRetentionPeriod = registerOutput<int?>('manualSnapshotRetentionPeriod');
    this.ownerAccount = registerOutput<String>('ownerAccount');
    this.region = registerOutput<String>('region');
    this.snapshotIdentifier = registerOutput<String>('snapshotIdentifier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
