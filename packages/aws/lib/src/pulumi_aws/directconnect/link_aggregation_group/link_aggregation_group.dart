import 'package:pulumi/pulumi.dart';
import 'link_aggregation_group_args.dart';

/// Provides a Direct Connect LAG. Connections can be added to the LAG via the <span pulumi-lang-nodejs="`aws.directconnect.Connection`" pulumi-lang-dotnet="`aws.directconnect.Connection`" pulumi-lang-go="`directconnect.Connection`" pulumi-lang-python="`directconnect.Connection`" pulumi-lang-yaml="`aws.directconnect.Connection`" pulumi-lang-java="`aws.directconnect.Connection`">`aws.directconnect.Connection`</span> and <span pulumi-lang-nodejs="`aws.directconnect.ConnectionAssociation`" pulumi-lang-dotnet="`aws.directconnect.ConnectionAssociation`" pulumi-lang-go="`directconnect.ConnectionAssociation`" pulumi-lang-python="`directconnect.ConnectionAssociation`" pulumi-lang-yaml="`aws.directconnect.ConnectionAssociation`" pulumi-lang-java="`aws.directconnect.ConnectionAssociation`">`aws.directconnect.ConnectionAssociation`</span> resources.
///
/// > *NOTE:* When creating a LAG, if no existing connection is specified, Direct Connect will create a connection and this provider will remove this unmanaged connection during resource creation.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const hoge = new aws.directconnect.LinkAggregationGroup("hoge", {
/// name: "tf-dx-lag",
/// connectionsBandwidth: "1Gbps",
/// location: "EqDC2",
/// forceDestroy: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// hoge = aws.directconnect.LinkAggregationGroup("hoge",
/// name="tf-dx-lag",
/// connections_bandwidth="1Gbps",
/// location="EqDC2",
/// force_destroy=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var hoge = new Aws.DirectConnect.LinkAggregationGroup("hoge", new()
/// {
/// Name = "tf-dx-lag",
/// ConnectionsBandwidth = "1Gbps",
/// Location = "EqDC2",
/// ForceDestroy = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := directconnect.NewLinkAggregationGroup(ctx, "hoge", &directconnect.LinkAggregationGroupArgs{
/// Name:                 pulumi.String("tf-dx-lag"),
/// ConnectionsBandwidth: pulumi.String("1Gbps"),
/// Location:             pulumi.String("EqDC2"),
/// ForceDestroy:         pulumi.Bool(true),
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
/// import com.pulumi.aws.directconnect.LinkAggregationGroup;
/// import com.pulumi.aws.directconnect.LinkAggregationGroupArgs;
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
/// var hoge = new LinkAggregationGroup("hoge", LinkAggregationGroupArgs.builder()
/// .name("tf-dx-lag")
/// .connectionsBandwidth("1Gbps")
/// .location("EqDC2")
/// .forceDestroy(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// hoge:
/// type: aws:directconnect:LinkAggregationGroup
/// properties:
/// name: tf-dx-lag
/// connectionsBandwidth: 1Gbps
/// location: EqDC2
/// forceDestroy: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect LAGs using the LAG <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/linkAggregationGroup:LinkAggregationGroup test_lag dxlag-fgnsp5rq
/// ```
class LinkAggregationGroup extends CustomResource {
  /// The ARN of the LAG.
  late final Output<String> arn;

  /// The ID of an existing dedicated connection to migrate to the LAG.
  late final Output<String?> connectionId;

  /// The bandwidth of the individual dedicated connections bundled by the LAG. Valid values: 1Gbps, 10Gbps, 100Gbps, and 400Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Dedicated Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/dedicated_connection.html).
  late final Output<String> connectionsBandwidth;

  /// A boolean that indicates all connections associated with the LAG should be deleted so that the LAG can be destroyed without error. These objects are *not* recoverable.
  late final Output<bool?> forceDestroy;

  /// Indicates whether the LAG supports a secondary BGP peer in the same address family (IPv4/IPv6).
  late final Output<String> hasLogicalRedundancy;

  /// Indicates whether jumbo frames (9001 MTU) are supported.
  late final Output<bool> jumboFrameCapable;

  /// The AWS Direct Connect location in which the LAG should be allocated. See [DescribeLocations](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLocations.html) for the list of AWS Direct Connect locations. Use `locationCode`.
  late final Output<String> location;

  /// The name of the LAG.
  late final Output<String> name;

  /// The ID of the AWS account that owns the LAG.
  late final Output<String> ownerAccountId;

  /// The name of the service provider associated with the LAG.
  late final Output<String> providerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  LinkAggregationGroup(
    String name, {
    LinkAggregationGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/linkAggregationGroup:LinkAggregationGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.connectionId = Output.createUnknown<String?>();
    this.connectionsBandwidth = Output.createUnknown<String>();
    this.forceDestroy = Output.createUnknown<bool?>();
    this.hasLogicalRedundancy = Output.createUnknown<String>();
    this.jumboFrameCapable = Output.createUnknown<bool>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.ownerAccountId = Output.createUnknown<String>();
    this.providerName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
