// ignore_for_file: unused_element, unnecessary_cast

/// ReleaseChannelConfig exposes configuration for a release channel.
class ReleaseChannelConfigResponse {
  /// The release channel this configuration applies to.
  final String channel;

  /// The default version for newly created clusters on the channel.
  final String defaultVersion;

  /// List of valid versions for the channel.
  final List<String> validVersions;

  ReleaseChannelConfigResponse({
    required this.channel,
    required this.defaultVersion,
    required this.validVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channel'] = channel;
    map['defaultVersion'] = defaultVersion;
    map['validVersions'] = validVersions;
    return map;
  }

  factory ReleaseChannelConfigResponse.fromMap(Map<String, dynamic> map) {
    return ReleaseChannelConfigResponse(
      channel: map['channel'] as String,
      defaultVersion: map['defaultVersion'] as String,
      validVersions: (map['validVersions'] as List).cast<String>(),
    );
  }
}
