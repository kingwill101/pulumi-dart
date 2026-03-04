// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFileSystemLifecyclePolicy {
  final pulumi.Input<String> transitionToArchive;
  final pulumi.Input<String> transitionToIa;
  final pulumi.Input<String> transitionToPrimaryStorageClass;

  /// Creates a new [GetFileSystemLifecyclePolicy].
  /// [transitionToArchive] Required.
  /// [transitionToIa] Required.
  /// [transitionToPrimaryStorageClass] Required.
  GetFileSystemLifecyclePolicy({
    required this.transitionToArchive,
    required this.transitionToIa,
    required this.transitionToPrimaryStorageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transitionToArchive': transitionToArchive,
      'transitionToIa': transitionToIa,
      'transitionToPrimaryStorageClass': transitionToPrimaryStorageClass,
    };
  }

  factory GetFileSystemLifecyclePolicy.fromMap(Map<String, dynamic> map) {
    return GetFileSystemLifecyclePolicy(
      transitionToArchive: pulumi.Input.fromValue(
        map['transitionToArchive'] as String,
      ),
      transitionToIa: pulumi.Input.fromValue(map['transitionToIa'] as String),
      transitionToPrimaryStorageClass: pulumi.Input.fromValue(
        map['transitionToPrimaryStorageClass'] as String,
      ),
    );
  }
}
