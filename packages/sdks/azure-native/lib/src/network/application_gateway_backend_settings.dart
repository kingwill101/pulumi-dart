// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Backend address pool settings of an application gateway.
class ApplicationGatewayBackendSettings {
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
  final pulumi.Input<SubResource>? probe;

  /// The protocol used to communicate with the backend.
  final pulumi.Input<String>? protocol;

  /// Connection timeout in seconds. Application Gateway will fail the request if response is not received within ConnectionTimeout. Acceptable values are from 1 second to 86400 seconds.
  final pulumi.Input<int>? timeout;

  /// Array of references to application gateway trusted root certificates.
  final pulumi.Input<List<SubResource>>? trustedRootCertificates;

  /// Creates a new [ApplicationGatewayBackendSettings].
  /// [hostName] Server name indication to be sent to the backend servers for Tls protocol.
  /// [id] Resource ID.
  /// [name] Name of the backend settings that is unique within an Application Gateway.
  /// [pickHostNameFromBackendAddress] Whether to pick server name indication from the host name of the backend server for Tls protocol. Default value is false.
  /// [port] The destination port on the backend.
  /// [probe] Probe resource of an application gateway.
  /// [protocol] The protocol used to communicate with the backend.
  /// [timeout] Connection timeout in seconds. Application Gateway will fail the request if response is not received within ConnectionTimeout. Acceptable values are from 1 second to 86400 seconds.
  /// [trustedRootCertificates] Array of references to application gateway trusted root certificates.
  ApplicationGatewayBackendSettings({
    this.hostName,
    this.id,
    this.name,
    this.pickHostNameFromBackendAddress,
    this.port,
    this.probe,
    this.protocol,
    this.timeout,
    this.trustedRootCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': ?hostName,
      'id': ?id,
      'name': ?name,
      'pickHostNameFromBackendAddress': ?pickHostNameFromBackendAddress,
      'port': ?port,
      'probe':
          ?pulumi.Input.mapOptionalInputValue<
            SubResource,
            Map<String, dynamic>
          >(probe, (value) => value.toMap()),
      'protocol': ?protocol,
      'timeout': ?timeout,
      'trustedRootCertificates':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubResource>,
            List<Map<String, dynamic>>
          >(
            trustedRootCertificates,
            (value) =>
                pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory ApplicationGatewayBackendSettings.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayBackendSettings(
      hostName: (() {
        final guardedValue = map['hostName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pickHostNameFromBackendAddress: (() {
        final guardedValue = map['pickHostNameFromBackendAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      probe: (() {
        final guardedValue = map['probe'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResource.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      trustedRootCertificates: (() {
        final guardedValue = map['trustedRootCertificates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubResource>(
            guardedValue,
            (value) =>
                SubResource.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
