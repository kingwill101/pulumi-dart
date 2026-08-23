// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSnapshotsSnapshotTagList {
  /// Key of the tag.
  final pulumi.Input<String> key;
  /// Value of the tag.
  final pulumi.Input<String> value;

  /// Creates a new [GetSnapshotsSnapshotTagList].
  /// [key] Key of the tag.
  /// [value] Value of the tag.
  const GetSnapshotsSnapshotTagList({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetSnapshotsSnapshotTagList.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsSnapshotTagList(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
