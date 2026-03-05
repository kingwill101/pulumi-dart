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
      callback: (() { final guardedValue = map['callback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      captureImage: (() { final guardedValue = map['captureImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      captureInterval: (() { final guardedValue = map['captureInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      captureOssBucket: (() { final guardedValue = map['captureOssBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      captureOssPath: (() { final guardedValue = map['captureOssPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      captureVideo: (() { final guardedValue = map['captureVideo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inProtocol: (() { final guardedValue = map['inProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lazyPull: (() { final guardedValue = map['lazyPull']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      outProtocol: (() { final guardedValue = map['outProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      playDomain: (() { final guardedValue = map['playDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pushDomain: (() { final guardedValue = map['pushDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

