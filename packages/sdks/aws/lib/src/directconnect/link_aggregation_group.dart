import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_aggregation_group_args.dart';
import 'link_aggregation_group_state.dart';

/// Provides a Direct Connect LAG. Connections can be added to the LAG via the `aws.directconnect.Connection` and `aws.directconnect.ConnectionAssociation` resources.
///
/// &gt; *NOTE:* When creating a LAG, if no existing connection is specified, Direct Connect will create a connection and this provider will remove this unmanaged connection during resource creation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const hoge = new aws.directconnect.LinkAggregationGroup("hoge", {
///     name: "tf-dx-lag",
///     connectionsBandwidth: "1Gbps",
///     location: "EqDC2",
///     forceDestroy: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// hoge = aws.directconnect.LinkAggregationGroup("hoge",
///     name="tf-dx-lag",
///     connections_bandwidth="1Gbps",
///     location="EqDC2",
///     force_destroy=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hoge = new Aws.DirectConnect.LinkAggregationGroup("hoge", new()
///     {
///         Name = "tf-dx-lag",
///         ConnectionsBandwidth = "1Gbps",
///         Location = "EqDC2",
///         ForceDestroy = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := directconnect.NewLinkAggregationGroup(ctx, "hoge", &directconnect.LinkAggregationGroupArgs{
/// 			Name:                 pulumi.String("tf-dx-lag"),
/// 			ConnectionsBandwidth: pulumi.String("1Gbps"),
/// 			Location:             pulumi.String("EqDC2"),
/// 			ForceDestroy:         pulumi.Bool(true),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var hoge = new LinkAggregationGroup("hoge", LinkAggregationGroupArgs.builder()
///             .name("tf-dx-lag")
///             .connectionsBandwidth("1Gbps")
///             .location("EqDC2")
///             .forceDestroy(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   hoge:
///     type: aws:directconnect:LinkAggregationGroup
///     properties:
///       name: tf-dx-lag
///       connectionsBandwidth: 1Gbps
///       location: EqDC2
///       forceDestroy: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect LAGs using the LAG `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/linkAggregationGroup:LinkAggregationGroup test_lag dxlag-fgnsp5rq
/// ```
class LinkAggregationGroup extends pulumi.CustomResource {
  /// The ARN of the LAG.
  late final pulumi.Output<String> arn;
  /// The ID of an existing dedicated connection to migrate to the LAG.
  late final pulumi.Output<String?> connectionId;
  /// The bandwidth of the individual dedicated connections bundled by the LAG. Valid values: 1Gbps, 10Gbps, 100Gbps, and 400Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Dedicated Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/dedicated_connection.html).
  late final pulumi.Output<String> connectionsBandwidth;
  /// A boolean that indicates all connections associated with the LAG should be deleted so that the LAG can be destroyed without error. These objects are *not* recoverable.
  late final pulumi.Output<bool?> forceDestroy;
  /// Indicates whether the LAG supports a secondary BGP peer in the same address family (IPv4/IPv6).
  late final pulumi.Output<String> hasLogicalRedundancy;
  /// Indicates whether jumbo frames (9001 MTU) are supported.
  late final pulumi.Output<bool> jumboFrameCapable;
  /// The AWS Direct Connect location in which the LAG should be allocated. See [DescribeLocations](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLocations.html) for the list of AWS Direct Connect locations. Use `locationCode`.
  late final pulumi.Output<String> location;
  /// The name of the LAG.
  late final pulumi.Output<String> name;
  /// The ID of the AWS account that owns the LAG.
  late final pulumi.Output<String> ownerAccountId;
  /// The name of the service provider associated with the LAG.
  late final pulumi.Output<String> providerName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [LinkAggregationGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkAggregationGroup]. {@macro pulumi_directconnect_link_aggregation_group_link_aggregation_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkAggregationGroup(
    String name, {
    LinkAggregationGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/linkAggregationGroup:LinkAggregationGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    connectionId = registerOutput<String?>('connectionId');
    connectionsBandwidth = registerOutput<String>('connectionsBandwidth');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    hasLogicalRedundancy = registerOutput<String>('hasLogicalRedundancy');
    jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    providerName = registerOutput<String>('providerName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [LinkAggregationGroup] resource's state with the given [name] and [id].
  static LinkAggregationGroup get(
    String name,
    pulumi.Input<String> id, {
    LinkAggregationGroupState? state,
  }) {
    return LinkAggregationGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LinkAggregationGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/linkAggregationGroup:LinkAggregationGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    connectionId = registerOutput<String?>('connectionId');
    connectionsBandwidth = registerOutput<String>('connectionsBandwidth');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    hasLogicalRedundancy = registerOutput<String>('hasLogicalRedundancy');
    jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    providerName = registerOutput<String>('providerName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
