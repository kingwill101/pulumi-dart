// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionVolumeFrom {
  final pulumi.Input<bool>? readOnly;
  final pulumi.Input<String>? sourceContainer;

  /// Creates a new [TaskDefinitionVolumeFrom].
  /// [readOnly] Optional.
  /// [sourceContainer] Optional.
  const TaskDefinitionVolumeFrom({
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
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceContainer: (() { final guardedValue = map['sourceContainer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
