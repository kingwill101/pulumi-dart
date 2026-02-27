// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'available_version_response.dart';

/// ReleaseChannelConfig exposes configuration for a release channel.
class ReleaseChannelConfigResponse2 {
  /// Deprecated. This field has been deprecated and replaced with the valid_versions field.
  final List<AvailableVersionResponse> availableVersions;

  /// The release channel this configuration applies to.
  final String channel;

  /// The default version for newly created clusters on the channel.
  final String defaultVersion;

  /// List of valid versions for the channel.
  final List<String> validVersions;

  ReleaseChannelConfigResponse2({
    required this.availableVersions,
    required this.channel,
    required this.defaultVersion,
    required this.validVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availableVersions'] =
        Input.encodeList<AvailableVersionResponse, Map<String, dynamic>>(
            availableVersions, (value) => value.toMap());
    map['channel'] = channel;
    map['defaultVersion'] = defaultVersion;
    map['validVersions'] = validVersions;
    return map;
  }

  factory ReleaseChannelConfigResponse2.fromMap(Map<String, dynamic> map) {
    return ReleaseChannelConfigResponse2(
      availableVersions: Input.decodeList<AvailableVersionResponse>(
          map['availableVersions'],
          (value) => AvailableVersionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      channel: map['channel'] as String,
      defaultVersion: map['defaultVersion'] as String,
      validVersions: (map['validVersions'] as List).cast<String>(),
    );
  }
}
