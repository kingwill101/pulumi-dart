// ignore_for_file: unused_element, unnecessary_cast

class EndpointConfigurationShadowProductionVariantServerlessConfig {
  /// Maximum number of concurrent invocations your serverless endpoint can process. Valid values are between `1` and `200`.
  final int maxConcurrency;

  /// Memory size of your serverless endpoint. Valid values are in 1 GB increments: `1024` MB, `2048` MB, `3072` MB, `4096` MB, `5120` MB, or `6144` MB.
  final int memorySizeInMb;

  /// Amount of provisioned concurrency to allocate for the serverless endpoint. Should be less than or equal to `max_concurrency`. Valid values are between `1` and `200`.
  final int? provisionedConcurrency;

  EndpointConfigurationShadowProductionVariantServerlessConfig({
    required this.maxConcurrency,
    required this.memorySizeInMb,
    this.provisionedConcurrency,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxConcurrency'] = maxConcurrency;
    map['memorySizeInMb'] = memorySizeInMb;
    final provisionedConcurrencyValue = provisionedConcurrency;
    if (provisionedConcurrencyValue != null) {
      map['provisionedConcurrency'] = provisionedConcurrencyValue;
    }
    return map;
  }

  factory EndpointConfigurationShadowProductionVariantServerlessConfig.fromMap(
      Map<String, dynamic> map) {
    return EndpointConfigurationShadowProductionVariantServerlessConfig(
      maxConcurrency: map['maxConcurrency'] as int,
      memorySizeInMb: map['memorySizeInMb'] as int,
      provisionedConcurrency: map['provisionedConcurrency'] == null
          ? null
          : map['provisionedConcurrency'] as int,
    );
  }
}
