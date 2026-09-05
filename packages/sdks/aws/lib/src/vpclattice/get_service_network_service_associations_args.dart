// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpclattice_get_service_network_service_associations_get_service_network_service_associations_args_doc}
/// Arguments for getServiceNetworkServiceAssociations.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_get_service_network_service_associations_get_service_network_service_associations_args_doc}
class GetServiceNetworkServiceAssociationsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID or ARN of the VPC Lattice Service for which you want to list the Service Network Service Associations. Use either `serviceIdentifier` or `serviceNetworkIdentifier` but not both.
  final pulumi.Input<String?>? serviceIdentifier;
  /// ID or ARN of the VPC Lattice Service Network for which you want to list the Service Network Service Associations. Use either `serviceNetworkIdentifier` or `serviceIdentifier` but not both.
  final pulumi.Input<String?>? serviceNetworkIdentifier;

  /// Creates a new [GetServiceNetworkServiceAssociationsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceIdentifier] ID or ARN of the VPC Lattice Service for which you want to list the Service Network Service Associations. Use either `serviceIdentifier` or `serviceNetworkIdentifier` but not both.
  /// [serviceNetworkIdentifier] ID or ARN of the VPC Lattice Service Network for which you want to list the Service Network Service Associations. Use either `serviceNetworkIdentifier` or `serviceIdentifier` but not both.
  const GetServiceNetworkServiceAssociationsArgs({
    this.region,
    this.serviceIdentifier,
    this.serviceNetworkIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'serviceIdentifier': ?serviceIdentifier,
      'serviceNetworkIdentifier': ?serviceNetworkIdentifier,
    };
  }

  factory GetServiceNetworkServiceAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceNetworkServiceAssociationsArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceIdentifier: (() { final guardedValue = map['serviceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceNetworkIdentifier: (() { final guardedValue = map['serviceNetworkIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
