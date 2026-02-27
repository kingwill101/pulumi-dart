// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'release_channel_config_response2.dart';

/// Result data returned by getServerConfig.
class GetServerConfigResult2 {
  /// List of release channel configurations.
  final List<ReleaseChannelConfigResponse2> channels;

  /// Version of Kubernetes the service deploys by default.
  final String defaultClusterVersion;

  /// Default image type.
  final String defaultImageType;

  /// List of valid image types.
  final List<String> validImageTypes;

  /// List of valid master versions, in descending order.
  final List<String> validMasterVersions;

  /// List of valid node upgrade target versions, in descending order.
  final List<String> validNodeVersions;

  /// Maps of Kubernetes version and supported Windows server versions.
  final Map<String, String> windowsVersionMaps;

  GetServerConfigResult2({
    required this.channels,
    required this.defaultClusterVersion,
    required this.defaultImageType,
    required this.validImageTypes,
    required this.validMasterVersions,
    required this.validNodeVersions,
    required this.windowsVersionMaps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channels'] =
        Input.encodeList<ReleaseChannelConfigResponse2, Map<String, dynamic>>(
            channels, (value) => value.toMap());
    map['defaultClusterVersion'] = defaultClusterVersion;
    map['defaultImageType'] = defaultImageType;
    map['validImageTypes'] = validImageTypes;
    map['validMasterVersions'] = validMasterVersions;
    map['validNodeVersions'] = validNodeVersions;
    map['windowsVersionMaps'] = windowsVersionMaps;
    return map;
  }

  factory GetServerConfigResult2.fromMap(Map<String, dynamic> map) {
    return GetServerConfigResult2(
      channels: Input.decodeList<ReleaseChannelConfigResponse2>(
          map['channels'],
          (value) => ReleaseChannelConfigResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      defaultClusterVersion: map['defaultClusterVersion'] as String,
      defaultImageType: map['defaultImageType'] as String,
      validImageTypes: (map['validImageTypes'] as List).cast<String>(),
      validMasterVersions: (map['validMasterVersions'] as List).cast<String>(),
      validNodeVersions: (map['validNodeVersions'] as List).cast<String>(),
      windowsVersionMaps:
          (map['windowsVersionMaps'] as Map).cast<String, String>(),
    );
  }
}
