import 'package:pulumi/pulumi.dart';
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
class MulticastDomain extends CustomResource {
  /// EC2 Transit Gateway Multicast Domain Amazon Resource Name (ARN).
  late final Output<String> arn;

  /// Whether to automatically accept cross-account subnet associations that are associated with the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  late final Output<String?> autoAcceptSharedAssociations;

  /// Whether to enable Internet Group Management Protocol (IGMP) version 2 for the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  late final Output<String?> igmpv2Support;

  /// Identifier of the AWS account that owns the EC2 Transit Gateway Multicast Domain.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether to enable support for statically configuring multicast group sources for the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  late final Output<String?> staticSourcesSupport;

  /// Key-value tags for the EC2 Transit Gateway Multicast Domain. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// EC2 Transit Gateway identifier. The EC2 Transit Gateway must have `multicast_support` enabled.
  late final Output<String> transitGatewayId;

  MulticastDomain(
    String name, {
    MulticastDomainArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/multicastDomain:MulticastDomain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
