// ignore_for_file: unused_element, unnecessary_cast


/// The Mobility Service update details.
class MobilityServiceUpdateResponse {
  /// The OS type.
  final String? osType;
  /// The reboot status of the update - whether it is required or not.
  final String? rebootStatus;
  /// The version of the latest update.
  final String? version;

  /// Creates a new [MobilityServiceUpdateResponse].
  /// [osType] The OS type.
  /// [rebootStatus] The reboot status of the update - whether it is required or not.
  /// [version] The version of the latest update.
  MobilityServiceUpdateResponse({
    this.osType,
    this.rebootStatus,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osType': ?osType,
      'rebootStatus': ?rebootStatus,
      'version': ?version,
    };
  }

  factory MobilityServiceUpdateResponse.fromMap(Map<String, dynamic> map) {
    return MobilityServiceUpdateResponse(
      osType: map['osType'] == null ? null : map['osType'] as String,
      rebootStatus: map['rebootStatus'] == null ? null : map['rebootStatus'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

