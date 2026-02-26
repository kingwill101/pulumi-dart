import 'package:pulumi/pulumi.dart';
import 'snapshot_copy_grant_args.dart';

/// Creates a snapshot copy grant that allows AWS Redshift to encrypt copied snapshots with a customer master key from AWS KMS in a destination region.
///
/// Note that the grant must exist in the destination region, and not in the region of the cluster.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.redshift.SnapshotCopyGrant("test", {snapshotCopyGrantName: "my-grant"});
/// const testCluster = new aws.redshift.Cluster("test", {snapshotCopy: [{
/// destinationRegion: "us-east-2",
/// grantName: test.snapshotCopyGrantName,
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.redshift.SnapshotCopyGrant("test", snapshot_copy_grant_name="my-grant")
/// test_cluster = aws.redshift.Cluster("test", snapshot_copy=[{
/// "destinationRegion": "us-east-2",
/// "grantName": test.snapshot_copy_grant_name,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.RedShift.SnapshotCopyGrant("test", new()
/// {
/// SnapshotCopyGrantName = "my-grant",
/// });
///
/// var testCluster = new Aws.RedShift.Cluster("test", new()
/// {
/// SnapshotCopy = new[]
/// {
///
/// {
/// { "destinationRegion", "us-east-2" },
/// { "grantName", test.SnapshotCopyGrantName },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := redshift.NewSnapshotCopyGrant(ctx, "test", &redshift.SnapshotCopyGrantArgs{
/// SnapshotCopyGrantName: pulumi.String("my-grant"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = redshift.NewCluster(ctx, "test", &redshift.ClusterArgs{
/// SnapshotCopy: []map[string]interface{}{
/// map[string]interface{}{
/// "destinationRegion": "us-east-2",
/// "grantName":         test.SnapshotCopyGrantName,
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.SnapshotCopyGrant;
/// import com.pulumi.aws.redshift.SnapshotCopyGrantArgs;
/// import com.pulumi.aws.redshift.Cluster;
/// import com.pulumi.aws.redshift.ClusterArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new SnapshotCopyGrant("test", SnapshotCopyGrantArgs.builder()
/// .snapshotCopyGrantName("my-grant")
/// .build());
///
/// var testCluster = new Cluster("testCluster", ClusterArgs.builder()
/// .snapshotCopy(List.of(Map.ofEntries(
/// Map.entry("destinationRegion", "us-east-2"),
/// Map.entry("grantName", test.snapshotCopyGrantName())
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:redshift:SnapshotCopyGrant
/// properties:
/// snapshotCopyGrantName: my-grant
/// testCluster:
/// type: aws:redshift:Cluster
/// name: test
/// properties:
/// snapshotCopy:
/// - destinationRegion: us-east-2
/// grantName: ${test.snapshotCopyGrantName}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Snapshot Copy Grants by name. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/snapshotCopyGrant:SnapshotCopyGrant test my-grant
/// ```
class SnapshotCopyGrant extends CustomResource {
  /// Amazon Resource Name (ARN) of snapshot copy grant
  late final Output<String> arn;

  /// The unique identifier for the customer master key (CMK) that the grant applies to. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN. If not specified, the default key is used.
  late final Output<String> kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A friendly name for identifying the grant.
  late final Output<String> snapshotCopyGrantName;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  SnapshotCopyGrant(
    String name, {
    SnapshotCopyGrantArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/snapshotCopyGrant:SnapshotCopyGrant',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.kmsKeyId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.snapshotCopyGrantName = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
