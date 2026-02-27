import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_domain_args.dart';

/// Manages an EC2 Transit Gateway Multicast Domain.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.MulticastDomain` using the EC2 Transit Gateway Multicast Domain identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/multicastDomain:MulticastDomain example tgw-mcast-domain-12345
/// ```
class MulticastDomain extends pulumi.CustomResource {
  /// EC2 Transit Gateway Multicast Domain Amazon Resource Name (ARN).
  late final pulumi.Output<String> arn;

  /// Whether to automatically accept cross-account subnet associations that are associated with the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  late final pulumi.Output<String?> autoAcceptSharedAssociations;

  /// Whether to enable Internet Group Management Protocol (IGMP) version 2 for the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  late final pulumi.Output<String?> igmpv2Support;

  /// Identifier of the AWS account that owns the EC2 Transit Gateway Multicast Domain.
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Whether to enable support for statically configuring multicast group sources for the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  late final pulumi.Output<String?> staticSourcesSupport;

  /// Key-value tags for the EC2 Transit Gateway Multicast Domain. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// EC2 Transit Gateway identifier. The EC2 Transit Gateway must have `multicast_support` enabled.
  late final pulumi.Output<String> transitGatewayId;

  MulticastDomain(
    String name, {
    MulticastDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/multicastDomain:MulticastDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoAcceptSharedAssociations =
        registerOutput<String?>('autoAcceptSharedAssociations');
    this.igmpv2Support = registerOutput<String?>('igmpv2Support');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.staticSourcesSupport = registerOutput<String?>('staticSourcesSupport');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
  }
}
