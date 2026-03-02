// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_client_auth_configuration.dart';
import 'application_gateway_ssl_policy.dart';
import 'sub_resource.dart';

/// SSL profile of an application gateway.
class ApplicationGatewaySslProfile {
  /// Client authentication configuration of the application gateway resource.
  final pulumi.Input<ApplicationGatewayClientAuthConfiguration>? clientAuthConfiguration;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the SSL profile that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// SSL policy of the application gateway resource.
  final pulumi.Input<ApplicationGatewaySslPolicy>? sslPolicy;
  /// Array of references to application gateway trusted client certificates.
  final pulumi.Input<List<SubResource>>? trustedClientCertificates;

  /// Creates a new [ApplicationGatewaySslProfile].
  /// [clientAuthConfiguration] Client authentication configuration of the application gateway resource.
  /// [id] Resource ID.
  /// [name] Name of the SSL profile that is unique within an Application Gateway.
  /// [sslPolicy] SSL policy of the application gateway resource.
  /// [trustedClientCertificates] Array of references to application gateway trusted client certificates.
  ApplicationGatewaySslProfile({
    this.clientAuthConfiguration,
    this.id,
    this.name,
    this.sslPolicy,
    this.trustedClientCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientAuthConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayClientAuthConfiguration, Map<String, dynamic>>(clientAuthConfiguration, (value) => value.toMap()),
      'id': ?id,
      'name': ?name,
      'sslPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewaySslPolicy, Map<String, dynamic>>(sslPolicy, (value) => value.toMap()),
      'trustedClientCertificates': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(trustedClientCertificates, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationGatewaySslProfile.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewaySslProfile(
      clientAuthConfiguration: map['clientAuthConfiguration'] == null ? null : (ApplicationGatewayClientAuthConfiguration.fromMap((map['clientAuthConfiguration'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      sslPolicy: map['sslPolicy'] == null ? null : (ApplicationGatewaySslPolicy.fromMap((map['sslPolicy'] as Map).cast<String, dynamic>())).input(),
      trustedClientCertificates: map['trustedClientCertificates'] == null ? null : (pulumi.Input.decodeList<SubResource>(map['trustedClientCertificates'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

