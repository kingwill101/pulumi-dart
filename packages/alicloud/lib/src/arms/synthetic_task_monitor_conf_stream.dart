// ignore_for_file: unused_element, unnecessary_cast


class SyntheticTaskMonitorConfStream {
  /// Custom header, in JSON Map format.
  final Map<String, String>? customHeaderContent;
  /// Player, do not pass the default 12.
  /// - 12:VLC
  /// - 2:FlashPlayer.
  final int? playerType;
  /// Resource address type:
  /// - 1: Resource address.
  /// - 0: page address, not 0 by default.
  final int? streamAddressType;
  /// Monitoring duration, in seconds, up to 60s, not 60 by default.
  final int? streamMonitorTimeout;
  /// Audio and video flags: 0-video, 1-audio.
  final int? streamType;
  /// The target URL.
  final String? targetUrl;
  /// DNS hijack whitelist. Match rules support IP, IP wildcard, subnet mask, and CNAME. Multiple match rules can be filled in. Multiple match rules are separated by vertical bars (|). For example, www.aliyun.com:203.0.3.55 | 203.3.44.67 indicates that all other IP addresses under the www.aliyun.com domain except 203.0.3.55 and 203.3.44.67 are hijacked.
  final String? whiteList;

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
      customHeaderContent: map['customHeaderContent'] == null ? null : (map['customHeaderContent'] as Map).cast<String, String>(),
      playerType: map['playerType'] == null ? null : map['playerType'] as int,
      streamAddressType: map['streamAddressType'] == null ? null : map['streamAddressType'] as int,
      streamMonitorTimeout: map['streamMonitorTimeout'] == null ? null : map['streamMonitorTimeout'] as int,
      streamType: map['streamType'] == null ? null : map['streamType'] as int,
      targetUrl: map['targetUrl'] == null ? null : map['targetUrl'] as String,
      whiteList: map['whiteList'] == null ? null : map['whiteList'] as String,
    );
  }
}

