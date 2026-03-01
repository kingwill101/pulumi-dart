// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SystemGroup resources.
class SystemGroupState {
  /// The space within the device status update of the callback, need to start with http:// or https:// at the beginning.
  final pulumi.Input<String>? callback;
  /// The capture image.
  final pulumi.Input<int>? captureImage;
  /// The capture interval.
  final pulumi.Input<int>? captureInterval;
  /// The capture oss bucket.
  final pulumi.Input<String>? captureOssBucket;
  /// The capture oss path.
  final pulumi.Input<String>? captureOssPath;
  /// The capture video.
  final pulumi.Input<int>? captureVideo;
  /// The description of Group.
  final pulumi.Input<String>? description;
  /// Whether to open Group.
  final pulumi.Input<bool>? enabled;
  /// The Group Name.
  final pulumi.Input<String>? groupName;
  /// The use of the access protocol support gb28181, Real Time Messaging Protocol (rtmp). Valid values: `gb28181`, `rtmp`.
  final pulumi.Input<String>? inProtocol;
  /// Whether to enable on-demand streaming. Default value:`false`.
  final pulumi.Input<bool>? lazyPull;
  /// The playback protocol used by the space, multiple values are separated by commas (,). Valid values: `flv`,`hls`, `rtmp`.
  final pulumi.Input<String>? outProtocol;
  /// The domain name of plan streaming used by the group.
  final pulumi.Input<String>? playDomain;
  /// The domain name of push streaming used by the group.
  final pulumi.Input<String>? pushDomain;
  /// Whether to open Group. Valid values: `on`,`off`.
  final pulumi.Input<bool>? status;

  /// Creates a new [SystemGroupState].
  /// [callback] The space within the device status update of the callback, need to start with http:// or https:// at the beginning.
  /// [captureImage] The capture image.
  /// [captureInterval] The capture interval.
  /// [captureOssBucket] The capture oss bucket.
  /// [captureOssPath] The capture oss path.
  /// [captureVideo] The capture video.
  /// [description] The description of Group.
  /// [enabled] Whether to open Group.
  /// [groupName] The Group Name.
  /// [inProtocol] The use of the access protocol support gb28181, Real Time Messaging Protocol (rtmp). Valid values: `gb28181`, `rtmp`.
  /// [lazyPull] Whether to enable on-demand streaming. Default value:`false`.
  /// [outProtocol] The playback protocol used by the space, multiple values are separated by commas (,). Valid values: `flv`,`hls`, `rtmp`.
  /// [playDomain] The domain name of plan streaming used by the group.
  /// [pushDomain] The domain name of push streaming used by the group.
  /// [status] Whether to open Group. Valid values: `on`,`off`.
  SystemGroupState({
    pulumi.Output<String>? callback,
    pulumi.Output<int>? captureImage,
    pulumi.Output<int>? captureInterval,
    pulumi.Output<String>? captureOssBucket,
    pulumi.Output<String>? captureOssPath,
    pulumi.Output<int>? captureVideo,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? inProtocol,
    pulumi.Output<bool>? lazyPull,
    pulumi.Output<String>? outProtocol,
    pulumi.Output<String>? playDomain,
    pulumi.Output<String>? pushDomain,
    pulumi.Output<bool>? status,
  }) :
      callback = pulumi.Input.asOptionalInput<String>(callback),
      captureImage = pulumi.Input.asOptionalInput<int>(captureImage),
      captureInterval = pulumi.Input.asOptionalInput<int>(captureInterval),
      captureOssBucket = pulumi.Input.asOptionalInput<String>(captureOssBucket),
      captureOssPath = pulumi.Input.asOptionalInput<String>(captureOssPath),
      captureVideo = pulumi.Input.asOptionalInput<int>(captureVideo),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      inProtocol = pulumi.Input.asOptionalInput<String>(inProtocol),
      lazyPull = pulumi.Input.asOptionalInput<bool>(lazyPull),
      outProtocol = pulumi.Input.asOptionalInput<String>(outProtocol),
      playDomain = pulumi.Input.asOptionalInput<String>(playDomain),
      pushDomain = pulumi.Input.asOptionalInput<String>(pushDomain),
      status = pulumi.Input.asOptionalInput<bool>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callback': ?callback,
      'captureImage': ?captureImage,
      'captureInterval': ?captureInterval,
      'captureOssBucket': ?captureOssBucket,
      'captureOssPath': ?captureOssPath,
      'captureVideo': ?captureVideo,
      'description': ?description,
      'enabled': ?enabled,
      'groupName': ?groupName,
      'inProtocol': ?inProtocol,
      'lazyPull': ?lazyPull,
      'outProtocol': ?outProtocol,
      'playDomain': ?playDomain,
      'pushDomain': ?pushDomain,
      'status': ?status,
    };
  }

  factory SystemGroupState.fromMap(Map<String, dynamic> map) {
    return SystemGroupState(
      callback: map['callback'] == null ? null : pulumi.Output.create<String>(map['callback'] as String),
      captureImage: map['captureImage'] == null ? null : pulumi.Output.create<int>(map['captureImage'] as int),
      captureInterval: map['captureInterval'] == null ? null : pulumi.Output.create<int>(map['captureInterval'] as int),
      captureOssBucket: map['captureOssBucket'] == null ? null : pulumi.Output.create<String>(map['captureOssBucket'] as String),
      captureOssPath: map['captureOssPath'] == null ? null : pulumi.Output.create<String>(map['captureOssPath'] as String),
      captureVideo: map['captureVideo'] == null ? null : pulumi.Output.create<int>(map['captureVideo'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      inProtocol: map['inProtocol'] == null ? null : pulumi.Output.create<String>(map['inProtocol'] as String),
      lazyPull: map['lazyPull'] == null ? null : pulumi.Output.create<bool>(map['lazyPull'] as bool),
      outProtocol: map['outProtocol'] == null ? null : pulumi.Output.create<String>(map['outProtocol'] as String),
      playDomain: map['playDomain'] == null ? null : pulumi.Output.create<String>(map['playDomain'] as String),
      pushDomain: map['pushDomain'] == null ? null : pulumi.Output.create<String>(map['pushDomain'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<bool>(map['status'] as bool),
    );
  }
}

