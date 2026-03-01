// ignore_for_file: unused_element, unnecessary_cast


/// An iSCSI volume from Microsoft.StoragePool provider
class DiskPoolVolume {
  /// Name of the LUN to be used for datastore
  final String lunName;
  /// Mode that describes whether the LUN has to be mounted as a datastore or
  /// attached as a LUN
  final String? mountOption;
  /// Azure resource ID of the iSCSI target
  final String targetId;

  /// Creates a new [DiskPoolVolume].
  /// [lunName] Name of the LUN to be used for datastore
  /// [mountOption] Mode that describes whether the LUN has to be mounted as a datastore or
  /// [targetId] Azure resource ID of the iSCSI target
  DiskPoolVolume({
    required this.lunName,
    this.mountOption,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lunName': lunName,
      'mountOption': ?mountOption,
      'targetId': targetId,
    };
  }

  factory DiskPoolVolume.fromMap(Map<String, dynamic> map) {
    return DiskPoolVolume(
      lunName: map['lunName'] as String,
      mountOption: map['mountOption'] == null ? null : map['mountOption'] as String,
      targetId: map['targetId'] as String,
    );
  }
}

