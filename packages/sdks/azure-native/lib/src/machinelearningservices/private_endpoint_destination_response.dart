// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private Endpoint destination for a Private Endpoint Outbound Rule for the managed network of a machine learning workspace.
class PrivateEndpointDestinationResponse {
  /// A type definition that refers the id to an Azure Resource Manager resource.
  final pulumi.Input<String?>? serviceResourceId;
  final pulumi.Input<bool?>? sparkEnabled;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  final pulumi.Input<String?>? sparkStatus;
  final pulumi.Input<String?>? subresourceTarget;

  /// Creates a new [PrivateEndpointDestinationResponse].
  /// [serviceResourceId] A type definition that refers the id to an Azure Resource Manager resource.
  /// [sparkEnabled] Optional.
  /// [sparkStatus] Type of a managed network Outbound Rule of a machine learning workspace.
  /// [subresourceTarget] Optional.
  const PrivateEndpointDestinationResponse({
    this.serviceResourceId,
    this.sparkEnabled,
    this.sparkStatus,
    this.subresourceTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceResourceId': ?serviceResourceId,
      'sparkEnabled': ?sparkEnabled,
      'sparkStatus': ?sparkStatus,
      'subresourceTarget': ?subresourceTarget,
    };
  }

  factory PrivateEndpointDestinationResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointDestinationResponse(
      serviceResourceId: (() { final guardedValue = map['serviceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sparkEnabled: (() { final guardedValue = map['sparkEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sparkStatus: (() { final guardedValue = map['sparkStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subresourceTarget: (() { final guardedValue = map['subresourceTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
