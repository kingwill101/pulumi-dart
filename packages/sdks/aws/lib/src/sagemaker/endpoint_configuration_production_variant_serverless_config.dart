// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointConfigurationProductionVariantServerlessConfig {
  /// Maximum number of concurrent invocations your serverless endpoint can process. Valid values are between `1` and `200`.
  final pulumi.Input<int> maxConcurrency;
  /// Memory size of your serverless endpoint. Valid values are in 1 GB increments: `1024` MB, `2048` MB, `3072` MB, `4096` MB, `5120` MB, or `6144` MB.
  final pulumi.Input<int> memorySizeInMb;
  /// Amount of provisioned concurrency to allocate for the serverless endpoint. Should be less than or equal to `max_concurrency`. Valid values are between `1` and `200`.
  final pulumi.Input<int>? provisionedConcurrency;

  /// Creates a new [EndpointConfigurationProductionVariantServerlessConfig].
  /// [maxConcurrency] Maximum number of concurrent invocations your serverless endpoint can process. Valid values are between `1` and `200`.
  /// [memorySizeInMb] Memory size of your serverless endpoint. Valid values are in 1 GB increments: `1024` MB, `2048` MB, `3072` MB, `4096` MB, `5120` MB, or `6144` MB.
  /// [provisionedConcurrency] Amount of provisioned concurrency to allocate for the serverless endpoint. Should be less than or equal to `max_concurrency`. Valid values are between `1` and `200`.
  EndpointConfigurationProductionVariantServerlessConfig({
    required this.maxConcurrency,
    required this.memorySizeInMb,
    this.provisionedConcurrency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConcurrency': maxConcurrency,
      'memorySizeInMb': memorySizeInMb,
      'provisionedConcurrency': ?provisionedConcurrency,
    };
  }

  factory EndpointConfigurationProductionVariantServerlessConfig.fromMap(Map<String, dynamic> map) {
    return EndpointConfigurationProductionVariantServerlessConfig(
      maxConcurrency: pulumi.Input.fromValue(map['maxConcurrency'] as int),
      memorySizeInMb: pulumi.Input.fromValue(map['memorySizeInMb'] as int),
      provisionedConcurrency: (() { final guardedValue = map['provisionedConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

