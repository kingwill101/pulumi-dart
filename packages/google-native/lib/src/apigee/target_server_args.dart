// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_tls_info.dart';
import 'target_server_protocol.dart';

/// {@template pulumi_apigee_v1_target_server_args_doc}
/// The set of arguments for TargetServer.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_target_server_args_doc}
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

  /// Creates a new [TargetServerArgs].
  /// [description] Optional. A human-readable description of this TargetServer.
  /// [environmentId] Required.
  /// [host] The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  /// [isEnabled] Optional. Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.
  /// [name] The resource id of this target server. Values must match the regular expression
  /// [organizationId] Required.
  /// [port] The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  /// [protocol] Immutable. The protocol used by this TargetServer.
  /// [sSLInfo] Optional. Specifies TLS configuration info for this TargetServer. The JSON name is `sSLInfo` for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.
  TargetServerArgs({
    String? description,
    required String environmentId,
    required String host,
    bool? isEnabled,
    String? name,
    required String organizationId,
    required int port,
    TargetServerProtocol? protocol,
    GoogleCloudApigeeV1TlsInfo? sSLInfo,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       environmentId = pulumi.Input.asInput<String>(environmentId),
       host = pulumi.Input.asInput<String>(host),
       isEnabled = pulumi.Input.asOptionalInput<bool>(isEnabled),
       name = pulumi.Input.asOptionalInput<String>(name),
       organizationId = pulumi.Input.asInput<String>(organizationId),
       port = pulumi.Input.asInput<int>(port),
       protocol = pulumi.Input.asOptionalInput<TargetServerProtocol>(protocol),
       sSLInfo = pulumi.Input.asOptionalInput<GoogleCloudApigeeV1TlsInfo>(
         sSLInfo,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'environmentId': environmentId,
      'host': host,
      'isEnabled': ?isEnabled,
      'name': ?name,
      'organizationId': organizationId,
      'port': port,
      'protocol':
          ?pulumi.Input.mapOptionalInputValue<TargetServerProtocol, String>(
            protocol,
            (value) => value.value,
          ),
      'sSLInfo':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudApigeeV1TlsInfo,
            Map<String, dynamic>
          >(sSLInfo, (value) => value.toMap()),
    };
  }

  factory TargetServerArgs.fromMap(Map<String, dynamic> map) {
    return TargetServerArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      environmentId: map['environmentId'] as String,
      host: map['host'] as String,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
      port: map['port'] as int,
      protocol: map['protocol'] == null
          ? null
          : TargetServerProtocol.fromValue(map['protocol'] as String),
      sSLInfo: map['sSLInfo'] == null
          ? null
          : GoogleCloudApigeeV1TlsInfo.fromMap(
              (map['sSLInfo'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
