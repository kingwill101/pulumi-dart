// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpclattice_get_service_network_get_service_network_args_doc}
/// Arguments for getServiceNetwork.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_get_service_network_get_service_network_args_doc}
class GetServiceNetworkArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the service network.
  final pulumi.Input<String> serviceNetworkIdentifier;
  /// Map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetServiceNetworkArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceNetworkIdentifier] Identifier of the service network.
  /// [tags] Map of tags assigned to the resource.
  const GetServiceNetworkArgs({
    this.region,
    required this.serviceNetworkIdentifier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'serviceNetworkIdentifier': serviceNetworkIdentifier,
      'tags': ?tags,
    };
  }

  factory GetServiceNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceNetworkArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceNetworkIdentifier: pulumi.Input.fromValue(map['serviceNetworkIdentifier'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
