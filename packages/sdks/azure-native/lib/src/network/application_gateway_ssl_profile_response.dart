// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_client_auth_configuration_response.dart';
import 'application_gateway_ssl_policy_response.dart';
import 'sub_resource_response.dart';

/// SSL profile of an application gateway.
class ApplicationGatewaySslProfileResponse {
  /// Client authentication configuration of the application gateway resource.
  final pulumi.Input<ApplicationGatewayClientAuthConfigurationResponse>? clientAuthConfiguration;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the SSL profile that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// The provisioning state of the HTTP listener resource.
  final pulumi.Input<String> provisioningState;
  /// SSL policy of the application gateway resource.
  final pulumi.Input<ApplicationGatewaySslPolicyResponse>? sslPolicy;
  /// Array of references to application gateway trusted client certificates.
  final pulumi.Input<List<SubResourceResponse>>? trustedClientCertificates;
  /// Type of the resource.
  final pulumi.Input<String> type;

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
      'clientAuthConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayClientAuthConfigurationResponse, Map<String, dynamic>>(clientAuthConfiguration, (value) => value.toMap()),
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'sslPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewaySslPolicyResponse, Map<String, dynamic>>(sslPolicy, (value) => value.toMap()),
      'trustedClientCertificates': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(trustedClientCertificates, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory ApplicationGatewaySslProfileResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewaySslProfileResponse(
      clientAuthConfiguration: map['clientAuthConfiguration'] == null ? null : (ApplicationGatewayClientAuthConfigurationResponse.fromMap((map['clientAuthConfiguration'] as Map).cast<String, dynamic>())).input(),
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      sslPolicy: map['sslPolicy'] == null ? null : (ApplicationGatewaySslPolicyResponse.fromMap((map['sslPolicy'] as Map).cast<String, dynamic>())).input(),
      trustedClientCertificates: map['trustedClientCertificates'] == null ? null : (pulumi.Input.decodeList<SubResourceResponse>(map['trustedClientCertificates'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
    );
  }
}

