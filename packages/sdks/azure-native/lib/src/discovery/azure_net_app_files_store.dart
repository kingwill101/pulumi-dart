// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure NetApp Files properties.
class AzureNetAppFilesStore {
  /// The kind of the backing storage store.
  /// Expected value is 'AzureNetAppFiles'.
  final pulumi.Input<String> kind;
  /// The associated Azure NetApp Files volume ID.
  final pulumi.Input<String> netAppVolumeId;

  /// Creates a new [AzureNetAppFilesStore].
  /// [kind] The kind of the backing storage store.
  /// [netAppVolumeId] The associated Azure NetApp Files volume ID.
  const AzureNetAppFilesStore({
    required this.kind,
    required this.netAppVolumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'netAppVolumeId': netAppVolumeId,
    };
  }

  factory AzureNetAppFilesStore.fromMap(Map<String, dynamic> map) {
    return AzureNetAppFilesStore(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      netAppVolumeId: pulumi.Input.fromValue(map['netAppVolumeId'] as String),
    );
  }
}
