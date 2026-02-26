// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../target_server_ssl_info/target_server_ssl_info.dart';

/// The set of arguments for TargetServer.
class TargetServerArgs {
  /// A human-readable description of this TargetServer.
  final Input<String>? description;

  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final Input<String> envId;

  /// The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  final Input<String> host;

  /// Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.
  final Input<bool>? isEnabled;

  /// The resource id of this reference. Values must match the regular expression [\w\s-.]+.
  final Input<String>? name;

  /// The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  final Input<int> port;

  /// Immutable. The protocol used by this TargetServer.
  /// Possible values are: `HTTP`, `HTTP2`, `GRPC_TARGET`, `GRPC`, `EXTERNAL_CALLOUT`.
  final Input<String>? protocol;

  /// Specifies TLS configuration info for this TargetServer. The JSON name is sSLInfo for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.
  /// Structure is documented below.
  final Input<TargetServerSSlInfo>? sSlInfo;

  TargetServerArgs({
    this.description,
    required this.envId,
    required this.host,
    this.isEnabled,
    this.name,
    required this.port,
    this.protocol,
    this.sSlInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['envId'] = envId;
    map['host'] = host;
    final isEnabledValue = isEnabled;
    if (isEnabledValue != null) {
      map['isEnabled'] = isEnabledValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['port'] = port;
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final sSlInfoValue = sSlInfo;
    if (sSlInfoValue != null) {
      map['sSlInfo'] = Input.mapOptionalInputValue<TargetServerSSlInfo,
          Map<String, dynamic>>(sSlInfoValue, (value) => value.toMap());
    }
    return map;
  }

  factory TargetServerArgs.fromMap(Map<String, dynamic> map) {
    return TargetServerArgs(
      description: Input.asOptionalInput<String>(map['description']),
      envId: Input.asInput<String>(map['envId']),
      host: Input.asInput<String>(map['host']),
      isEnabled: Input.asOptionalInput<bool>(map['isEnabled']),
      name: Input.asOptionalInput<String>(map['name']),
      port: Input.asInput<int>(map['port']),
      protocol: Input.asOptionalInput<String>(map['protocol']),
      sSlInfo: Input.asOptionalInput<TargetServerSSlInfo>(map['sSlInfo']),
    );
  }
}
