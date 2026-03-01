// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_client_auth_configuration_response.dart';
import 'application_gateway_ssl_policy_response.dart';
import 'sub_resource_response.dart';

/// SSL profile of an application gateway.
class ApplicationGatewaySslProfileResponse {
  /// Client authentication configuration of the application gateway resource.
  final ApplicationGatewayClientAuthConfigurationResponse? clientAuthConfiguration;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Name of the SSL profile that is unique within an Application Gateway.
  final String? name;
  /// The provisioning state of the HTTP listener resource.
  final String provisioningState;
  /// SSL policy of the application gateway resource.
  final ApplicationGatewaySslPolicyResponse? sslPolicy;
  /// Array of references to application gateway trusted client certificates.
  final List<SubResourceResponse>? trustedClientCertificates;
  /// Type of the resource.
  final String type;

  /// Creates a new [ApplicationGatewaySslProfileResponse].
  /// [clientAuthConfiguration] Client authentication configuration of the application gateway resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the SSL profile that is unique within an Application Gateway.
  /// [provisioningState] The provisioning state of the HTTP listener resource.
  /// [sslPolicy] SSL policy of the application gateway resource.
  /// [trustedClientCertificates] Array of references to application gateway trusted client certificates.
  /// [type] Type of the resource.
  ApplicationGatewaySslProfileResponse({
    this.clientAuthConfiguration,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.sslPolicy,
    this.trustedClientCertificates,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientAuthConfiguration': ?clientAuthConfiguration == null ? null : clientAuthConfiguration!.toMap(),
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'sslPolicy': ?sslPolicy == null ? null : sslPolicy!.toMap(),
      'trustedClientCertificates': ?trustedClientCertificates == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(trustedClientCertificates!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ApplicationGatewaySslProfileResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewaySslProfileResponse(
      clientAuthConfiguration: map['clientAuthConfiguration'] == null ? null : ApplicationGatewayClientAuthConfigurationResponse.fromMap((map['clientAuthConfiguration'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sslPolicy: map['sslPolicy'] == null ? null : ApplicationGatewaySslPolicyResponse.fromMap((map['sslPolicy'] as Map).cast<String, dynamic>()),
      trustedClientCertificates: map['trustedClientCertificates'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['trustedClientCertificates'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

