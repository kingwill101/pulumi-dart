// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Backend address pool settings of an application gateway.
class ApplicationGatewayBackendSettingsResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Server name indication to be sent to the backend servers for Tls protocol.
  final String? hostName;
  /// Resource ID.
  final String? id;
  /// Name of the backend settings that is unique within an Application Gateway.
  final String? name;
  /// Whether to pick server name indication from the host name of the backend server for Tls protocol. Default value is false.
  final bool? pickHostNameFromBackendAddress;
  /// The destination port on the backend.
  final int? port;
  /// Probe resource of an application gateway.
  final SubResourceResponse? probe;
  /// The protocol used to communicate with the backend.
  final String? protocol;
  /// The provisioning state of the backend HTTP settings resource.
  final String provisioningState;
  /// Connection timeout in seconds. Application Gateway will fail the request if response is not received within ConnectionTimeout. Acceptable values are from 1 second to 86400 seconds.
  final int? timeout;
  /// Array of references to application gateway trusted root certificates.
  final List<SubResourceResponse>? trustedRootCertificates;
  /// Type of the resource.
  final String type;

  /// Creates a new [ApplicationGatewayBackendSettingsResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [hostName] Server name indication to be sent to the backend servers for Tls protocol.
  /// [id] Resource ID.
  /// [name] Name of the backend settings that is unique within an Application Gateway.
  /// [pickHostNameFromBackendAddress] Whether to pick server name indication from the host name of the backend server for Tls protocol. Default value is false.
  /// [port] The destination port on the backend.
  /// [probe] Probe resource of an application gateway.
  /// [protocol] The protocol used to communicate with the backend.
  /// [provisioningState] The provisioning state of the backend HTTP settings resource.
  /// [timeout] Connection timeout in seconds. Application Gateway will fail the request if response is not received within ConnectionTimeout. Acceptable values are from 1 second to 86400 seconds.
  /// [trustedRootCertificates] Array of references to application gateway trusted root certificates.
  /// [type] Type of the resource.
  ApplicationGatewayBackendSettingsResponse({
    required this.etag,
    this.hostName,
    this.id,
    this.name,
    this.pickHostNameFromBackendAddress,
    this.port,
    this.probe,
    this.protocol,
    required this.provisioningState,
    this.timeout,
    this.trustedRootCertificates,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'hostName': ?hostName,
      'id': ?id,
      'name': ?name,
      'pickHostNameFromBackendAddress': ?pickHostNameFromBackendAddress,
      'port': ?port,
      'probe': ?probe == null ? null : probe!.toMap(),
      'protocol': ?protocol,
      'provisioningState': provisioningState,
      'timeout': ?timeout,
      'trustedRootCertificates': ?trustedRootCertificates == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(trustedRootCertificates!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ApplicationGatewayBackendSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayBackendSettingsResponse(
      etag: map['etag'] as String,
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      pickHostNameFromBackendAddress: map['pickHostNameFromBackendAddress'] == null ? null : map['pickHostNameFromBackendAddress'] as bool,
      port: map['port'] == null ? null : map['port'] as int,
      probe: map['probe'] == null ? null : SubResourceResponse.fromMap((map['probe'] as Map).cast<String, dynamic>()),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      provisioningState: map['provisioningState'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      trustedRootCertificates: map['trustedRootCertificates'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['trustedRootCertificates'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

