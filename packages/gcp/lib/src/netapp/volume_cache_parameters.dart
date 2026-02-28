// ignore_for_file: unused_element, unnecessary_cast

import 'volume_cache_parameters_cache_config.dart';

class VolumeCacheParameters {
  /// Optional. Configuration of the cache volume.
  /// Structure is documented below.
  final VolumeCacheParametersCacheConfig? cacheConfig;

  /// (Output)
  /// State of the cache volume indicating the peering status.
  final String? cacheState;

  /// (Output)
  /// Copy-paste-able commands to be used on user's ONTAP to accept peering requests.
  final String? command;

  /// Optional. Field indicating whether cache volume as global file lock enabled.
  final bool? enableGlobalFileLock;

  /// (Output)
  /// Temporary passphrase generated to accept cluster peering command.
  final String? passphrase;

  /// Required. Name of the origin volume's ONTAP cluster.
  final String? peerClusterName;

  /// Required. List of IC LIF addresses of the origin volume's ONTAP cluster.
  final List<String>? peerIpAddresses;

  /// Required. Name of the origin volume's SVM.
  final String? peerSvmName;

  /// Required. Name of the origin volume for the cache volume.
  final String? peerVolumeName;

  /// Optional. Expiration time for the peering command to be executed on user's ONTAP. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  final String? peeringCommandExpiryTime;

  /// (Output)
  /// Detailed description of the current cache state.
  final String? stateDetails;

  /// Creates a new [VolumeCacheParameters].
  /// [cacheConfig] Optional. Configuration of the cache volume.
  /// [cacheState] (Output)
  /// [command] (Output)
  /// [enableGlobalFileLock] Optional. Field indicating whether cache volume as global file lock enabled.
  /// [passphrase] (Output)
  /// [peerClusterName] Required. Name of the origin volume's ONTAP cluster.
  /// [peerIpAddresses] Required. List of IC LIF addresses of the origin volume's ONTAP cluster.
  /// [peerSvmName] Required. Name of the origin volume's SVM.
  /// [peerVolumeName] Required. Name of the origin volume for the cache volume.
  /// [peeringCommandExpiryTime] Optional. Expiration time for the peering command to be executed on user's ONTAP. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  /// [stateDetails] (Output)
  VolumeCacheParameters({
    this.cacheConfig,
    this.cacheState,
    this.command,
    this.enableGlobalFileLock,
    this.passphrase,
    this.peerClusterName,
    this.peerIpAddresses,
    this.peerSvmName,
    this.peerVolumeName,
    this.peeringCommandExpiryTime,
    this.stateDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cacheConfigValue = cacheConfig;
    if (cacheConfigValue != null) {
      map['cacheConfig'] = cacheConfigValue.toMap();
    }
    final cacheStateValue = cacheState;
    if (cacheStateValue != null) {
      map['cacheState'] = cacheStateValue;
    }
    final commandValue = command;
    if (commandValue != null) {
      map['command'] = commandValue;
    }
    final enableGlobalFileLockValue = enableGlobalFileLock;
    if (enableGlobalFileLockValue != null) {
      map['enableGlobalFileLock'] = enableGlobalFileLockValue;
    }
    final passphraseValue = passphrase;
    if (passphraseValue != null) {
      map['passphrase'] = passphraseValue;
    }
    final peerClusterNameValue = peerClusterName;
    if (peerClusterNameValue != null) {
      map['peerClusterName'] = peerClusterNameValue;
    }
    final peerIpAddressesValue = peerIpAddresses;
    if (peerIpAddressesValue != null) {
      map['peerIpAddresses'] = peerIpAddressesValue;
    }
    final peerSvmNameValue = peerSvmName;
    if (peerSvmNameValue != null) {
      map['peerSvmName'] = peerSvmNameValue;
    }
    final peerVolumeNameValue = peerVolumeName;
    if (peerVolumeNameValue != null) {
      map['peerVolumeName'] = peerVolumeNameValue;
    }
    final peeringCommandExpiryTimeValue = peeringCommandExpiryTime;
    if (peeringCommandExpiryTimeValue != null) {
      map['peeringCommandExpiryTime'] = peeringCommandExpiryTimeValue;
    }
    final stateDetailsValue = stateDetails;
    if (stateDetailsValue != null) {
      map['stateDetails'] = stateDetailsValue;
    }
    return map;
  }

  factory VolumeCacheParameters.fromMap(Map<String, dynamic> map) {
    return VolumeCacheParameters(
      cacheConfig: map['cacheConfig'] == null
          ? null
          : VolumeCacheParametersCacheConfig.fromMap(
              (map['cacheConfig'] as Map).cast<String, dynamic>()),
      cacheState:
          map['cacheState'] == null ? null : map['cacheState'] as String,
      command: map['command'] == null ? null : map['command'] as String,
      enableGlobalFileLock: map['enableGlobalFileLock'] == null
          ? null
          : map['enableGlobalFileLock'] as bool,
      passphrase:
          map['passphrase'] == null ? null : map['passphrase'] as String,
      peerClusterName: map['peerClusterName'] == null
          ? null
          : map['peerClusterName'] as String,
      peerIpAddresses: map['peerIpAddresses'] == null
          ? null
          : (map['peerIpAddresses'] as List).cast<String>(),
      peerSvmName:
          map['peerSvmName'] == null ? null : map['peerSvmName'] as String,
      peerVolumeName: map['peerVolumeName'] == null
          ? null
          : map['peerVolumeName'] as String,
      peeringCommandExpiryTime: map['peeringCommandExpiryTime'] == null
          ? null
          : map['peeringCommandExpiryTime'] as String,
      stateDetails:
          map['stateDetails'] == null ? null : map['stateDetails'] as String,
    );
  }
}
