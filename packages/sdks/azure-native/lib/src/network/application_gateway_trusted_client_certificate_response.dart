// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Trusted client certificates of an application gateway.
class ApplicationGatewayTrustedClientCertificateResponse {
  /// Distinguished name of client certificate issuer.
  final pulumi.Input<String> clientCertIssuerDN;
  /// Certificate public data.
  final pulumi.Input<String>? data;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the trusted client certificate that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// The provisioning state of the trusted client certificate resource.
  final pulumi.Input<String> provisioningState;
  /// Type of the resource.
  final pulumi.Input<String> type;
  /// Validated certificate data.
  final pulumi.Input<String> validatedCertData;

  /// Creates a new [ApplicationGatewayTrustedClientCertificateResponse].
  /// [clientCertIssuerDN] Distinguished name of client certificate issuer.
  /// [data] Certificate public data.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the trusted client certificate that is unique within an Application Gateway.
  /// [provisioningState] The provisioning state of the trusted client certificate resource.
  /// [type] Type of the resource.
  /// [validatedCertData] Validated certificate data.
  const ApplicationGatewayTrustedClientCertificateResponse({
    required this.clientCertIssuerDN,
    this.data,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    required this.type,
    required this.validatedCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertIssuerDN': clientCertIssuerDN,
      'data': ?data,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
      'validatedCertData': validatedCertData,
    };
  }

  factory ApplicationGatewayTrustedClientCertificateResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayTrustedClientCertificateResponse(
      clientCertIssuerDN: pulumi.Input.fromValue(map['clientCertIssuerDN'] as String),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      validatedCertData: pulumi.Input.fromValue(map['validatedCertData'] as String),
    );
  }
}
