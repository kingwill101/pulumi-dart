// ignore_for_file: unused_element, unnecessary_cast

class ModelPrimaryContainerMultiModelConfig {
  /// Whether to cache models for a multi-model endpoint. By default, multi-model endpoints cache models so that a model does not have to be loaded into memory each time it is invoked. Some use cases do not benefit from model caching. For example, if an endpoint hosts a large number of models that are each invoked infrequently, the endpoint might perform better if you disable model caching. To disable model caching, set the value of this parameter to `Disabled`. Allowed values are: `Enabled` and `Disabled`.
  final String? modelCacheSetting;

  ModelPrimaryContainerMultiModelConfig({
    this.modelCacheSetting,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modelCacheSettingValue = modelCacheSetting;
    if (modelCacheSettingValue != null) {
      map['modelCacheSetting'] = modelCacheSettingValue;
    }
    return map;
  }

  factory ModelPrimaryContainerMultiModelConfig.fromMap(
      Map<String, dynamic> map) {
    return ModelPrimaryContainerMultiModelConfig(
      modelCacheSetting: map['modelCacheSetting'] == null
          ? null
          : map['modelCacheSetting'] as String,
    );
  }
}
