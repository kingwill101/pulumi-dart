import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_aggregation_group_args.dart';

/// Provides a Direct Connect LAG. Connections can be added to the LAG via the `aws.directconnect.Connection` and `aws.directconnect.ConnectionAssociation` resources.
///
/// > *NOTE:* When creating a LAG, if no existing connection is specified, Direct Connect will create a connection and this provider will remove this unmanaged connection during resource creation.
///
/// ## Example Usage
///
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
    this.arn = registerOutput<String>('arn');
    this.connectionId = registerOutput<String?>('connectionId');
    this.connectionsBandwidth = registerOutput<String>('connectionsBandwidth');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.hasLogicalRedundancy = registerOutput<String>('hasLogicalRedundancy');
    this.jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.providerName = registerOutput<String>('providerName');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
