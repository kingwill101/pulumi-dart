// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_tls_info.dart';
import 'target_server_protocol.dart';

/// The set of arguments for TargetServer.
class TargetServerArgs {
  /// Optional. A human-readable description of this TargetServer.
  final pulumi.Input<String>? description;
  final pulumi.Input<String> environmentId;

  /// The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  final pulumi.Input<String> host;

  /// Optional. Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.
  final pulumi.Input<bool>? isEnabled;

  /// The resource id of this target server. Values must match the regular expression
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  final pulumi.Input<int> port;

  /// Immutable. The protocol used by this TargetServer.
  final pulumi.Input<TargetServerProtocol>? protocol;

  /// Optional. Specifies TLS configuration info for this TargetServer. The JSON name is `sSLInfo` for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.
  final pulumi.Input<GoogleCloudApigeeV1TlsInfo>? sSLInfo;

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
          pulumi.Input.mapOptionalInputValue<TargetServerProtocol, String>(
              protocolValue, (value) => value.value);
    }
    final sSLInfoValue = sSLInfo;
    if (sSLInfoValue != null) {
      map['sSLInfo'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudApigeeV1TlsInfo,
          Map<String, dynamic>>(sSLInfoValue, (value) => value.toMap());
    }
    return map;
  }

  factory TargetServerArgs.fromMap(Map<String, dynamic> map) {
    return TargetServerArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      host: pulumi.Input.asInput<String>(map['host']),
      isEnabled: pulumi.Input.asOptionalInput<bool>(map['isEnabled']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      port: pulumi.Input.asInput<int>(map['port']),
      protocol:
          pulumi.Input.asOptionalInput<TargetServerProtocol>(map['protocol']),
      sSLInfo: pulumi.Input.asOptionalInput<GoogleCloudApigeeV1TlsInfo>(
          map['sSLInfo']),
    );
  }
}
