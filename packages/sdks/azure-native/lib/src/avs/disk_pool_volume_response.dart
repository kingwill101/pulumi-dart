// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An iSCSI volume from Microsoft.StoragePool provider
class DiskPoolVolumeResponse {
  /// Name of the LUN to be used for datastore
  final pulumi.Input<String> lunName;
  /// Mode that describes whether the LUN has to be mounted as a datastore or
  /// attached as a LUN
  final pulumi.Input<String>? mountOption;
  /// Device path
  final pulumi.Input<String> path;
  /// Azure resource ID of the iSCSI target
  final pulumi.Input<String> targetId;

  /// Creates a new [DiskPoolVolumeResponse].
  /// [lunName] Name of the LUN to be used for datastore
  /// [mountOption] Mode that describes whether the LUN has to be mounted as a datastore or
  /// [path] Device path
  /// [targetId] Azure resource ID of the iSCSI target
  DiskPoolVolumeResponse({
    required this.lunName,
    this.mountOption,
    required this.path,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lunName': lunName,
      'mountOption': ?mountOption,
      'path': path,
      'targetId': targetId,
    };
  }

  factory DiskPoolVolumeResponse.fromMap(Map<String, dynamic> map) {
    return DiskPoolVolumeResponse(
      lunName: (map['lunName'] as String).input(),
      mountOption: map['mountOption'] == null ? null : (map['mountOption'] as String).input(),
      path: (map['path'] as String).input(),
      targetId: (map['targetId'] as String).input(),
    );
  }
}

