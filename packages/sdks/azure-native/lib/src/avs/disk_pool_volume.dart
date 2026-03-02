// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An iSCSI volume from Microsoft.StoragePool provider
class DiskPoolVolume {
  /// Name of the LUN to be used for datastore
  final pulumi.Input<String> lunName;
  /// Mode that describes whether the LUN has to be mounted as a datastore or
  /// attached as a LUN
  final pulumi.Input<String>? mountOption;
  /// Azure resource ID of the iSCSI target
  final pulumi.Input<String> targetId;

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
      lunName: (map['lunName'] as String).input(),
      mountOption: map['mountOption'] == null ? null : (map['mountOption']! as String).input(),
      targetId: (map['targetId'] as String).input(),
    );
  }
}

