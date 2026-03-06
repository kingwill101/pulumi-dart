// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ModelContainerModelDataSourceS3DataSourceModelAccessConfig {
  /// Specifies agreement to the model end-user license agreement (EULA). The value must be set to `true` in order to accept the EULA that this model requires. You are responsible for reviewing and complying with any applicable license terms and making sure they are acceptable for your use case before downloading or using a model.
  final pulumi.Input<bool> acceptEula;

  /// Creates a new [ModelContainerModelDataSourceS3DataSourceModelAccessConfig].
  /// [acceptEula] Specifies agreement to the model end-user license agreement (EULA). The value must be set to `true` in order to accept the EULA that this model requires. You are responsible for reviewing and complying with any applicable license terms and making sure they are acceptable for your use case before downloading or using a model.
  const ModelContainerModelDataSourceS3DataSourceModelAccessConfig({
    required this.acceptEula,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptEula': acceptEula,
    };
  }

  factory ModelContainerModelDataSourceS3DataSourceModelAccessConfig.fromMap(Map<String, dynamic> map) {
    return ModelContainerModelDataSourceS3DataSourceModelAccessConfig(
      acceptEula: pulumi.Input.fromValue(map['acceptEula'] as bool),
    );
  }
}

