import 'package:pulumi/pulumi.dart';
import '../cluster_encryption_detail/cluster_encryption_detail.dart';
import '../cluster_multi_region_properties/cluster_multi_region_properties.dart';
import '../cluster_timeouts/cluster_timeouts.dart';
import 'cluster_args4.dart';

/// Resource for managing an Amazon Aurora DSQL Cluster.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dsql.Cluster("example", {
/// deletionProtectionEnabled: true,
/// tags: {
/// Name: "TestCluster",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dsql.Cluster("example",
/// deletion_protection_enabled=True,
/// tags={
/// "Name": "TestCluster",
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
/// var example = new Aws.Dsql.Cluster("example", new()
/// {
/// DeletionProtectionEnabled = true,
/// Tags =
/// {
/// { "Name", "TestCluster" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dsql"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dsql.NewCluster(ctx, "example", &dsql.ClusterArgs{
/// DeletionProtectionEnabled: pulumi.Bool(true),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("TestCluster"),
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
/// import com.pulumi.aws.dsql.Cluster;
/// import com.pulumi.aws.dsql.ClusterArgs;
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
/// var example = new Cluster("example", ClusterArgs.builder()
/// .deletionProtectionEnabled(true)
/// .tags(Map.of("Name", "TestCluster"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:dsql:Cluster
/// properties:
/// deletionProtectionEnabled: true
/// tags:
/// Name: TestCluster
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DSQL Cluster using the <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:dsql/cluster:Cluster example abcde1f234ghijklmnop5qr6st
/// ```
class Cluster4 extends CustomResource {
  /// ARN of the Cluster.
  late final Output<String> arn;

  /// Whether deletion protection is enabled in this cluster.
  /// Default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> deletionProtectionEnabled;

  /// Encryption configuration details for the DSQL Cluster.
  late final Output<List<ClusterEncryptionDetail>> encryptionDetails;

  /// Destroys cluster even if <span pulumi-lang-nodejs="`deletionProtectionEnabled`" pulumi-lang-dotnet="`DeletionProtectionEnabled`" pulumi-lang-go="`deletionProtectionEnabled`" pulumi-lang-python="`deletion_protection_enabled`" pulumi-lang-yaml="`deletionProtectionEnabled`" pulumi-lang-java="`deletionProtectionEnabled`">`deletion_protection_enabled`</span> is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  /// Default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> forceDestroy;

  /// Cluster Identifier.
  late final Output<String> identifier;

  /// The ARN of the AWS KMS key that encrypts data in the DSQL Cluster, or `"AWS_OWNED_KMS_KEY"`.
  late final Output<String> kmsEncryptionKey;

  /// Multi-region properties of the DSQL Cluster.
  late final Output<ClusterMultiRegionProperties?> multiRegionProperties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Set of tags to be associated with the AWS DSQL Cluster resource.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ClusterTimeouts?> timeouts;

  /// The DSQL Cluster's VPC endpoint service name.
  late final Output<String> vpcEndpointServiceName;

  Cluster4(
    String name, {
    ClusterArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dsql/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.deletionProtectionEnabled = Output.createUnknown<bool>();
    this.encryptionDetails =
        Output.createUnknown<List<ClusterEncryptionDetail>>();
    this.forceDestroy = Output.createUnknown<bool>();
    this.identifier = Output.createUnknown<String>();
    this.kmsEncryptionKey = Output.createUnknown<String>();
    this.multiRegionProperties =
        Output.createUnknown<ClusterMultiRegionProperties?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<ClusterTimeouts?>();
    this.vpcEndpointServiceName = Output.createUnknown<String>();
  }
}
