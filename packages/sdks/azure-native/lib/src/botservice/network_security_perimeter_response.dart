// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about Network Security Perimeter
class NetworkSecurityPerimeterResponse {
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final pulumi.Input<String> id;

  /// Location of the Network Security Perimeter
  final pulumi.Input<String>? location;

  /// Guid of the Network Security Perimeter
  final pulumi.Input<String>? perimeterGuid;

  /// Creates a new [NetworkSecurityPerimeterResponse].
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] Location of the Network Security Perimeter
  /// [perimeterGuid] Guid of the Network Security Perimeter
  NetworkSecurityPerimeterResponse({
    required this.id,
    this.location,
    this.perimeterGuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': ?location,
      'perimeterGuid': ?perimeterGuid,
    };
  }

  factory NetworkSecurityPerimeterResponse.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      perimeterGuid: (() {
        final guardedValue = map['perimeterGuid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
