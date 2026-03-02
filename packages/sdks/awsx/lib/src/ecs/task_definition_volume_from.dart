// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionVolumeFrom {
  final pulumi.Input<bool>? readOnly;
  final pulumi.Input<String>? sourceContainer;

  /// Creates a new [TaskDefinitionVolumeFrom].
  /// [readOnly] Optional.
  /// [sourceContainer] Optional.
  TaskDefinitionVolumeFrom({
    this.readOnly,
    this.sourceContainer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readOnly': ?readOnly,
      'sourceContainer': ?sourceContainer,
    };
  }

  factory TaskDefinitionVolumeFrom.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionVolumeFrom(
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
      sourceContainer: map['sourceContainer'] == null ? null : (map['sourceContainer']! as String).input(),
    );
  }
}

