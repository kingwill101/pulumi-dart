// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication certificates of an application gateway.
class ApplicationGatewayAuthenticationCertificateResponse {
  /// Certificate public data.
  final pulumi.Input<String>? data;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the authentication certificate that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// The provisioning state of the authentication certificate resource.
  final pulumi.Input<String> provisioningState;
  /// Type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [ApplicationGatewayAuthenticationCertificateResponse].
  /// [data] Certificate public data.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the authentication certificate that is unique within an Application Gateway.
  /// [provisioningState] The provisioning state of the authentication certificate resource.
  /// [type] Type of the resource.
  const ApplicationGatewayAuthenticationCertificateResponse({
    this.data,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ApplicationGatewayAuthenticationCertificateResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayAuthenticationCertificateResponse(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
