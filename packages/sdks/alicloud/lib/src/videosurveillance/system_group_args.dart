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
  SystemGroupArgs({
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
      callback: map['callback'] == null ? null : (map['callback']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      groupName: (map['groupName'] as String).input(),
      inProtocol: (map['inProtocol'] as String).input(),
      outProtocol: (map['outProtocol'] as String).input(),
      playDomain: (map['playDomain'] as String).input(),
      pushDomain: (map['pushDomain'] as String).input(),
    );
  }
}

