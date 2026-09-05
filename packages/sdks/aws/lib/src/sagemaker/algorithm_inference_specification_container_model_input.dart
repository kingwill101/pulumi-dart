// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmInferenceSpecificationContainerModelInput {
  /// Input configuration for the model.
  final pulumi.Input<String?>? dataInputConfig;

  /// Creates a new [AlgorithmInferenceSpecificationContainerModelInput].
  /// [dataInputConfig] Input configuration for the model.
  const AlgorithmInferenceSpecificationContainerModelInput({
    this.dataInputConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataInputConfig': ?dataInputConfig,
    };
  }

  factory AlgorithmInferenceSpecificationContainerModelInput.fromMap(Map<String, dynamic> map) {
    return AlgorithmInferenceSpecificationContainerModelInput(
      dataInputConfig: (() { final guardedValue = map['dataInputConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
