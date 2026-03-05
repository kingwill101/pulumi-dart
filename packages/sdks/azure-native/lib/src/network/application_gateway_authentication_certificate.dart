// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication certificates of an application gateway.
class ApplicationGatewayAuthenticationCertificate {
  /// Certificate public data.
  final pulumi.Input<String>? data;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the authentication certificate that is unique within an Application Gateway.
  final pulumi.Input<String>? name;

  /// Creates a new [ApplicationGatewayAuthenticationCertificate].
  /// [data] Certificate public data.
  /// [id] Resource ID.
  /// [name] Name of the authentication certificate that is unique within an Application Gateway.
  ApplicationGatewayAuthenticationCertificate({
    this.data,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'id': ?id,
      'name': ?name,
    };
  }

  factory ApplicationGatewayAuthenticationCertificate.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayAuthenticationCertificate(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

