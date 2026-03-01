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
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetServiceNetworkArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceNetworkIdentifier] Identifier of the service network.
  /// [tags] Optional.
  GetServiceNetworkArgs({
    String? region,
    required String serviceNetworkIdentifier,
    Map<String, String>? tags,
  }) : region = pulumi.Input.asOptionalInput<String>(region),
       serviceNetworkIdentifier = pulumi.Input.asInput<String>(
         serviceNetworkIdentifier,
       ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'serviceNetworkIdentifier': serviceNetworkIdentifier,
      'tags': ?tags,
    };
  }

  factory GetServiceNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceNetworkArgs(
      region: map['region'] == null ? null : map['region'] as String,
      serviceNetworkIdentifier: map['serviceNetworkIdentifier'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
