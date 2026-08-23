// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobDebugHookConfigCollectionConfiguration {
  /// Name of the tensor collection.
  final pulumi.Input<String>? collectionName;
  /// Map of parameters for the tensor collection.
  final pulumi.Input<Map<String, String>>? collectionParameters;

  /// Creates a new [TrainingJobDebugHookConfigCollectionConfiguration].
  /// [collectionName] Name of the tensor collection.
  /// [collectionParameters] Map of parameters for the tensor collection.
  const TrainingJobDebugHookConfigCollectionConfiguration({
    this.collectionName,
    this.collectionParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionName': ?collectionName,
      'collectionParameters': ?collectionParameters,
    };
  }

  factory TrainingJobDebugHookConfigCollectionConfiguration.fromMap(Map<String, dynamic> map) {
    return TrainingJobDebugHookConfigCollectionConfiguration(
      collectionName: (() { final guardedValue = map['collectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collectionParameters: (() { final guardedValue = map['collectionParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
