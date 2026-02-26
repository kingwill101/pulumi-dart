// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_apigee_v1_tls_info.dart';
import 'target_server_protocol.dart';

/// The set of arguments for TargetServer.
class TargetServerArgs {
  /// Optional. A human-readable description of this TargetServer.
  final Input<String>? description;
  final Input<String> environmentId;

  /// The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  final Input<String> host;

  /// Optional. Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.
  final Input<bool>? isEnabled;

  /// The resource id of this target server. Values must match the regular expression
  final Input<String>? name;
  final Input<String> organizationId;

  /// The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  final Input<int> port;

  /// Immutable. The protocol used by this TargetServer.
  final Input<TargetServerProtocol>? protocol;

  /// Optional. Specifies TLS configuration info for this TargetServer. The JSON name is `sSLInfo` for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.
  final Input<GoogleCloudApigeeV1TlsInfo>? sSLInfo;

  TargetServerArgs({
    this.description,
    required this.environmentId,
    required this.host,
    this.isEnabled,
    this.name,
    required this.organizationId,
    required this.port,
    this.protocol,
    this.sSLInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['environmentId'] = environmentId;
    map['host'] = host;
    final isEnabledValue = isEnabled;
    if (isEnabledValue != null) {
      map['isEnabled'] = isEnabledValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    map['port'] = port;
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] =
          Input.mapOptionalInputValue<TargetServerProtocol, String>(
              protocolValue, (value) => value.value);
    }
    final sSLInfoValue = sSLInfo;
    if (sSLInfoValue != null) {
      map['sSLInfo'] = Input.mapOptionalInputValue<GoogleCloudApigeeV1TlsInfo,
          Map<String, dynamic>>(sSLInfoValue, (value) => value.toMap());
    }
    return map;
  }

  factory TargetServerArgs.fromMap(Map<String, dynamic> map) {
    return TargetServerArgs(
      description: Input.asOptionalInput<String>(map['description']),
      environmentId: Input.asInput<String>(map['environmentId']),
      host: Input.asInput<String>(map['host']),
      isEnabled: Input.asOptionalInput<bool>(map['isEnabled']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      port: Input.asInput<int>(map['port']),
      protocol: Input.asOptionalInput<TargetServerProtocol>(map['protocol']),
      sSLInfo:
          Input.asOptionalInput<GoogleCloudApigeeV1TlsInfo>(map['sSLInfo']),
    );
  }
}
