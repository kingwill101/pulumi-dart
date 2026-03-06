// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_videosurveillance_system_group_system_group_args_doc}
/// The set of arguments for SystemGroup.
/// {@endtemplate}
/// {@macro pulumi_videosurveillance_system_group_system_group_args_doc}
class SystemGroupArgs {
  /// The space within the device status update of the callback, need to start with http:// or https:// at the beginning.
  final pulumi.Input<String>? callback;
  /// The description of Group.
  final pulumi.Input<String>? description;
  /// Whether to open Group.
  final pulumi.Input<bool>? enabled;
  /// The Group Name.
  final pulumi.Input<String> groupName;
  /// The use of the access protocol support gb28181, Real Time Messaging Protocol (rtmp). Valid values: `gb28181`, `rtmp`.
  final pulumi.Input<String> inProtocol;
  /// The playback protocol used by the space, multiple values are separated by commas (,). Valid values: `flv`,`hls`, `rtmp`.
  final pulumi.Input<String> outProtocol;
  /// The domain name of plan streaming used by the group.
  final pulumi.Input<String> playDomain;
  /// The domain name of push streaming used by the group.
  final pulumi.Input<String> pushDomain;

  /// Creates a new [SystemGroupArgs].
  /// [callback] The space within the device status update of the callback, need to start with http:// or https:// at the beginning.
  /// [description] The description of Group.
  /// [enabled] Whether to open Group.
  /// [groupName] The Group Name.
  /// [inProtocol] The use of the access protocol support gb28181, Real Time Messaging Protocol (rtmp). Valid values: `gb28181`, `rtmp`.
  /// [outProtocol] The playback protocol used by the space, multiple values are separated by commas (,). Valid values: `flv`,`hls`, `rtmp`.
  /// [playDomain] The domain name of plan streaming used by the group.
  /// [pushDomain] The domain name of push streaming used by the group.
  const SystemGroupArgs({
    this.callback,
    this.description,
    this.enabled,
    required this.groupName,
    required this.inProtocol,
    required this.outProtocol,
    required this.playDomain,
    required this.pushDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callback': ?callback,
      'description': ?description,
      'enabled': ?enabled,
      'groupName': groupName,
      'inProtocol': inProtocol,
      'outProtocol': outProtocol,
      'playDomain': playDomain,
      'pushDomain': pushDomain,
    };
  }

  factory SystemGroupArgs.fromMap(Map<String, dynamic> map) {
    return SystemGroupArgs(
      callback: (() { final guardedValue = map['callback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      inProtocol: pulumi.Input.fromValue(map['inProtocol'] as String),
      outProtocol: pulumi.Input.fromValue(map['outProtocol'] as String),
      playDomain: pulumi.Input.fromValue(map['playDomain'] as String),
      pushDomain: pulumi.Input.fromValue(map['pushDomain'] as String),
    );
  }
}

