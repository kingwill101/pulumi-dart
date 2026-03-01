// ignore_for_file: unused_element, unnecessary_cast


/// Properties describing the software upgrade state of the cache.
class CacheUpgradeStatusResponse {
  /// Version string of the firmware currently installed on this cache.
  final String currentFirmwareVersion;
  /// Time at which the pending firmware update will automatically be installed on the cache.
  final String firmwareUpdateDeadline;
  /// True if there is a firmware update ready to install on this cache. The firmware will automatically be installed after firmwareUpdateDeadline if not triggered earlier via the upgrade operation.
  final String firmwareUpdateStatus;
  /// Time of the last successful firmware update.
  final String lastFirmwareUpdate;
  /// When firmwareUpdateAvailable is true, this field holds the version string for the update.
  final String pendingFirmwareVersion;

  /// Creates a new [CacheUpgradeStatusResponse].
  /// [currentFirmwareVersion] Version string of the firmware currently installed on this cache.
  /// [firmwareUpdateDeadline] Time at which the pending firmware update will automatically be installed on the cache.
  /// [firmwareUpdateStatus] True if there is a firmware update ready to install on this cache. The firmware will automatically be installed after firmwareUpdateDeadline if not triggered earlier via the upgrade operation.
  /// [lastFirmwareUpdate] Time of the last successful firmware update.
  /// [pendingFirmwareVersion] When firmwareUpdateAvailable is true, this field holds the version string for the update.
  CacheUpgradeStatusResponse({
    required this.currentFirmwareVersion,
    required this.firmwareUpdateDeadline,
    required this.firmwareUpdateStatus,
    required this.lastFirmwareUpdate,
    required this.pendingFirmwareVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentFirmwareVersion': currentFirmwareVersion,
      'firmwareUpdateDeadline': firmwareUpdateDeadline,
      'firmwareUpdateStatus': firmwareUpdateStatus,
      'lastFirmwareUpdate': lastFirmwareUpdate,
      'pendingFirmwareVersion': pendingFirmwareVersion,
    };
  }

  factory CacheUpgradeStatusResponse.fromMap(Map<String, dynamic> map) {
    return CacheUpgradeStatusResponse(
      currentFirmwareVersion: map['currentFirmwareVersion'] as String,
      firmwareUpdateDeadline: map['firmwareUpdateDeadline'] as String,
      firmwareUpdateStatus: map['firmwareUpdateStatus'] as String,
      lastFirmwareUpdate: map['lastFirmwareUpdate'] as String,
      pendingFirmwareVersion: map['pendingFirmwareVersion'] as String,
    );
  }
}

