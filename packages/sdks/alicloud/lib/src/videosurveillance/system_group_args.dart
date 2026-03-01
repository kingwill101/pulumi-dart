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
    pulumi.Output<String>? callback,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    required pulumi.Output<String> groupName,
    required pulumi.Output<String> inProtocol,
    required pulumi.Output<String> outProtocol,
    required pulumi.Output<String> playDomain,
    required pulumi.Output<String> pushDomain,
  }) :
      callback = pulumi.Input.asOptionalInput<String>(callback),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      groupName = pulumi.Input.asInput<String>(groupName),
      inProtocol = pulumi.Input.asInput<String>(inProtocol),
      outProtocol = pulumi.Input.asInput<String>(outProtocol),
      playDomain = pulumi.Input.asInput<String>(playDomain),
      pushDomain = pulumi.Input.asInput<String>(pushDomain);

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
      callback: map['callback'] == null ? null : pulumi.Output.create<String>(map['callback'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      inProtocol: pulumi.Output.create<String>(map['inProtocol'] as String),
      outProtocol: pulumi.Output.create<String>(map['outProtocol'] as String),
      playDomain: pulumi.Output.create<String>(map['playDomain'] as String),
      pushDomain: pulumi.Output.create<String>(map['pushDomain'] as String),
    );
  }
}

