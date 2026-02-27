import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_domain_association_args.dart';

/// Associates the specified subnet and transit gateway attachment with the specified transit gateway multicast domain.
class MulticastDomainAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the subnet to associate with the transit gateway multicast domain.
  late final pulumi.Output<String> subnetId;

  /// The ID of the transit gateway attachment.
  late final pulumi.Output<String> transitGatewayAttachmentId;

  /// The ID of the transit gateway multicast domain.
  late final pulumi.Output<String> transitGatewayMulticastDomainId;

  MulticastDomainAssociation(
    String name, {
    MulticastDomainAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/multicastDomainAssociation:MulticastDomainAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.subnetId = registerOutput<String>('subnetId');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
    this.transitGatewayMulticastDomainId =
        registerOutput<String>('transitGatewayMulticastDomainId');
  }
}
