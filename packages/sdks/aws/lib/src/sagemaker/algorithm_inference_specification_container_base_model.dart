// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmInferenceSpecificationContainerBaseModel {
  /// Name of the SageMaker AI Hub content.
  final pulumi.Input<String?>? hubContentName;
  /// Version of the SageMaker AI Hub content.
  final pulumi.Input<String?>? hubContentVersion;
  /// Recipe name associated with the base model.
  final pulumi.Input<String?>? recipeName;

  /// Creates a new [AlgorithmInferenceSpecificationContainerBaseModel].
  /// [hubContentName] Name of the SageMaker AI Hub content.
  /// [hubContentVersion] Version of the SageMaker AI Hub content.
  /// [recipeName] Recipe name associated with the base model.
  const AlgorithmInferenceSpecificationContainerBaseModel({
    this.hubContentName,
    this.hubContentVersion,
    this.recipeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubContentName': ?hubContentName,
      'hubContentVersion': ?hubContentVersion,
      'recipeName': ?recipeName,
    };
  }

  factory AlgorithmInferenceSpecificationContainerBaseModel.fromMap(Map<String, dynamic> map) {
    return AlgorithmInferenceSpecificationContainerBaseModel(
      hubContentName: (() { final guardedValue = map['hubContentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hubContentVersion: (() { final guardedValue = map['hubContentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recipeName: (() { final guardedValue = map['recipeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
