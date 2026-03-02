// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Trusted client certificates of an application gateway.
class ApplicationGatewayTrustedClientCertificate {
  /// Certificate public data.
  final pulumi.Input<String>? data;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the trusted client certificate that is unique within an Application Gateway.
  final pulumi.Input<String>? name;

  /// Creates a new [ApplicationGatewayTrustedClientCertificate].
  /// [data] Certificate public data.
  /// [id] Resource ID.
  /// [name] Name of the trusted client certificate that is unique within an Application Gateway.
  ApplicationGatewayTrustedClientCertificate({
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

  factory ApplicationGatewayTrustedClientCertificate.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayTrustedClientCertificate(
      data: map['data'] == null ? null : (map['data']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

