// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Backend address pool settings of an application gateway.
class ApplicationGatewayBackendSettingsResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Server name indication to be sent to the backend servers for Tls protocol.
  final pulumi.Input<String>? hostName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the backend settings that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Whether to pick server name indication from the host name of the backend server for Tls protocol. Default value is false.
  final pulumi.Input<bool>? pickHostNameFromBackendAddress;
  /// The destination port on the backend.
  final pulumi.Input<int>? port;
  /// Probe resource of an application gateway.
  final pulumi.Input<SubResourceResponse>? probe;
  /// The protocol used to communicate with the backend.
  final pulumi.Input<String>? protocol;
  /// The provisioning state of the backend HTTP settings resource.
  final pulumi.Input<String> provisioningState;
  /// Connection timeout in seconds. Application Gateway will fail the request if response is not received within ConnectionTimeout. Acceptable values are from 1 second to 86400 seconds.
  final pulumi.Input<int>? timeout;
  /// Array of references to application gateway trusted root certificates.
  final pulumi.Input<List<SubResourceResponse>>? trustedRootCertificates;
  /// Type of the resource.
  final pulumi.Input<String> type;

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
  const ApplicationGatewayBackendSettingsResponse({
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
      'probe': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(probe, (value) => value.toMap()),
      'protocol': ?protocol,
      'provisioningState': provisioningState,
      'timeout': ?timeout,
      'trustedRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(trustedRootCertificates, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory ApplicationGatewayBackendSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayBackendSettingsResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pickHostNameFromBackendAddress: (() { final guardedValue = map['pickHostNameFromBackendAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      probe: (() { final guardedValue = map['probe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      trustedRootCertificates: (() { final guardedValue = map['trustedRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

