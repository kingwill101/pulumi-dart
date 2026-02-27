import 'package:pulumi/pulumi.dart';
import 'multicast_domain_association_args.dart';

/// Associates the specified subnet and transit gateway attachment with the specified transit gateway multicast domain.
class MulticastDomainAssociation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the subnet to associate with the transit gateway multicast domain.
  late final Output<String> subnetId;

  /// The ID of the transit gateway attachment.
  late final Output<String> transitGatewayAttachmentId;

  /// The ID of the transit gateway multicast domain.
  late final Output<String> transitGatewayMulticastDomainId;

  MulticastDomainAssociation(
    String name, {
    MulticastDomainAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/multicastDomainAssociation:MulticastDomainAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.subnetId = registerOutput<String>('subnetId');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
    this.transitGatewayMulticastDomainId =
        registerOutput<String>('transitGatewayMulticastDomainId');
  }
}
