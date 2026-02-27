// ignore_for_file: unused_element, unnecessary_cast

class ModelContainerAdditionalModelDataSourceS3DataSourceModelAccessConfig {
  /// Specifies agreement to the model end-user license agreement (EULA). The value must be set to `true` in order to accept the EULA that this model requires. You are responsible for reviewing and complying with any applicable license terms and making sure they are acceptable for your use case before downloading or using a model.
  final bool acceptEula;

  ModelContainerAdditionalModelDataSourceS3DataSourceModelAccessConfig({
    required this.acceptEula,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceptEula'] = acceptEula;
    return map;
  }

  factory ModelContainerAdditionalModelDataSourceS3DataSourceModelAccessConfig.fromMap(
      Map<String, dynamic> map) {
    return ModelContainerAdditionalModelDataSourceS3DataSourceModelAccessConfig(
      acceptEula: map['acceptEula'] as bool,
    );
  }
}
