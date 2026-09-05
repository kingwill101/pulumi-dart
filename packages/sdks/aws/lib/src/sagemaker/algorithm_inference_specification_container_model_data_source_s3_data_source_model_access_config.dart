// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSourceModelAccessConfig {
  /// Whether to accept the model end-user license agreement.
  final pulumi.Input<bool?>? acceptEula;

  /// Creates a new [AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSourceModelAccessConfig].
  /// [acceptEula] Whether to accept the model end-user license agreement.
  const AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSourceModelAccessConfig({
    this.acceptEula,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptEula': ?acceptEula,
    };
  }

  factory AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSourceModelAccessConfig.fromMap(Map<String, dynamic> map) {
    return AlgorithmInferenceSpecificationContainerModelDataSourceS3DataSourceModelAccessConfig(
      acceptEula: (() { final guardedValue = map['acceptEula']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
