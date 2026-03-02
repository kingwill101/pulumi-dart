// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SyntheticTaskMonitorConfStream {
  /// Custom header, in JSON Map format.
  final pulumi.Input<Map<String, String>>? customHeaderContent;
  /// Player, do not pass the default 12.
  /// - 12:VLC
  /// - 2:FlashPlayer.
  final pulumi.Input<int>? playerType;
  /// Resource address type:
  /// - 1: Resource address.
  /// - 0: page address, not 0 by default.
  final pulumi.Input<int>? streamAddressType;
  /// Monitoring duration, in seconds, up to 60s, not 60 by default.
  final pulumi.Input<int>? streamMonitorTimeout;
  /// Audio and video flags: 0-video, 1-audio.
  final pulumi.Input<int>? streamType;
  /// The target URL.
  final pulumi.Input<String>? targetUrl;
  /// DNS hijack whitelist. Match rules support IP, IP wildcard, subnet mask, and CNAME. Multiple match rules can be filled in. Multiple match rules are separated by vertical bars (|). For example, www.aliyun.com:203.0.3.55 | 203.3.44.67 indicates that all other IP addresses under the www.aliyun.com domain except 203.0.3.55 and 203.3.44.67 are hijacked.
  final pulumi.Input<String>? whiteList;

  /// Creates a new [SyntheticTaskMonitorConfStream].
  /// [customHeaderContent] Custom header, in JSON Map format.
  /// [playerType] Player, do not pass the default 12.
  /// [streamAddressType] Resource address type:
  /// [streamMonitorTimeout] Monitoring duration, in seconds, up to 60s, not 60 by default.
  /// [streamType] Audio and video flags: 0-video, 1-audio.
  /// [targetUrl] The target URL.
  /// [whiteList] DNS hijack whitelist. Match rules support IP, IP wildcard, subnet mask, and CNAME. Multiple match rules can be filled in. Multiple match rules are separated by vertical bars (|). For example, www.aliyun.com:203.0.3.55 | 203.3.44.67 indicates that all other IP addresses under the www.aliyun.com domain except 203.0.3.55 and 203.3.44.67 are hijacked.
  SyntheticTaskMonitorConfStream({
    this.customHeaderContent,
    this.playerType,
    this.streamAddressType,
    this.streamMonitorTimeout,
    this.streamType,
    this.targetUrl,
    this.whiteList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customHeaderContent': ?customHeaderContent,
      'playerType': ?playerType,
      'streamAddressType': ?streamAddressType,
      'streamMonitorTimeout': ?streamMonitorTimeout,
      'streamType': ?streamType,
      'targetUrl': ?targetUrl,
      'whiteList': ?whiteList,
    };
  }

  factory SyntheticTaskMonitorConfStream.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskMonitorConfStream(
      customHeaderContent: map['customHeaderContent'] == null ? null : ((map['customHeaderContent'] as Map).cast<String, String>()).input(),
      playerType: map['playerType'] == null ? null : (map['playerType'] as int).input(),
      streamAddressType: map['streamAddressType'] == null ? null : (map['streamAddressType'] as int).input(),
      streamMonitorTimeout: map['streamMonitorTimeout'] == null ? null : (map['streamMonitorTimeout'] as int).input(),
      streamType: map['streamType'] == null ? null : (map['streamType'] as int).input(),
      targetUrl: map['targetUrl'] == null ? null : (map['targetUrl'] as String).input(),
      whiteList: map['whiteList'] == null ? null : (map['whiteList'] as String).input(),
    );
  }
}

