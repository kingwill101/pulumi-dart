// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpclattice_service_network_service_association_service_network_service_association_args_doc}
/// The set of arguments for ServiceNetworkServiceAssociation.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_service_network_service_association_service_network_service_association_args_doc}
class ServiceNetworkServiceAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID or Amazon Resource Identifier (ARN) of the service.
  final pulumi.Input<String> serviceIdentifier;
  /// ID or Amazon Resource Identifier (ARN) of the service network. You must use the ARN if the resources specified in the operation are in different accounts.
  final pulumi.Input<String> serviceNetworkIdentifier;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ServiceNetworkServiceAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceIdentifier] ID or Amazon Resource Identifier (ARN) of the service.
  /// [serviceNetworkIdentifier] ID or Amazon Resource Identifier (ARN) of the service network. You must use the ARN if the resources specified in the operation are in different accounts.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ServiceNetworkServiceAssociationArgs({
    this.region,
    required this.serviceIdentifier,
    required this.serviceNetworkIdentifier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'serviceIdentifier': serviceIdentifier,
      'serviceNetworkIdentifier': serviceNetworkIdentifier,
      'tags': ?tags,
    };
  }

  factory ServiceNetworkServiceAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkServiceAssociationArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceIdentifier: pulumi.Input.fromValue(map['serviceIdentifier'] as String),
      serviceNetworkIdentifier: pulumi.Input.fromValue(map['serviceNetworkIdentifier'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
