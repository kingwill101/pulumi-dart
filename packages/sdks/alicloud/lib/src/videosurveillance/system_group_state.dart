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
    this.callback,
    this.captureImage,
    this.captureInterval,
    this.captureOssBucket,
    this.captureOssPath,
    this.captureVideo,
    this.description,
    this.enabled,
    this.groupName,
    this.inProtocol,
    this.lazyPull,
    this.outProtocol,
    this.playDomain,
    this.pushDomain,
    this.status,
  });

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
      callback: map['callback'] == null ? null : (map['callback'] as String).input(),
      captureImage: map['captureImage'] == null ? null : (map['captureImage'] as int).input(),
      captureInterval: map['captureInterval'] == null ? null : (map['captureInterval'] as int).input(),
      captureOssBucket: map['captureOssBucket'] == null ? null : (map['captureOssBucket'] as String).input(),
      captureOssPath: map['captureOssPath'] == null ? null : (map['captureOssPath'] as String).input(),
      captureVideo: map['captureVideo'] == null ? null : (map['captureVideo'] as int).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      groupName: map['groupName'] == null ? null : (map['groupName'] as String).input(),
      inProtocol: map['inProtocol'] == null ? null : (map['inProtocol'] as String).input(),
      lazyPull: map['lazyPull'] == null ? null : (map['lazyPull'] as bool).input(),
      outProtocol: map['outProtocol'] == null ? null : (map['outProtocol'] as String).input(),
      playDomain: map['playDomain'] == null ? null : (map['playDomain'] as String).input(),
      pushDomain: map['pushDomain'] == null ? null : (map['pushDomain'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as bool).input(),
    );
  }
}

