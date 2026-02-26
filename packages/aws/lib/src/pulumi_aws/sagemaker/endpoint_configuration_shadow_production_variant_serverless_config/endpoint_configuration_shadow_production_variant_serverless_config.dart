// ignore_for_file: unused_element, unnecessary_cast

class EndpointConfigurationShadowProductionVariantServerlessConfig {
  /// Maximum number of concurrent invocations your serverless endpoint can process. Valid values are between <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and <span pulumi-lang-nodejs="`200`" pulumi-lang-dotnet="`200`" pulumi-lang-go="`200`" pulumi-lang-python="`200`" pulumi-lang-yaml="`200`" pulumi-lang-java="`200`">`200`</span>.
  final int maxConcurrency;

  /// Memory size of your serverless endpoint. Valid values are in 1 GB increments: <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span> MB, <span pulumi-lang-nodejs="`2048`" pulumi-lang-dotnet="`2048`" pulumi-lang-go="`2048`" pulumi-lang-python="`2048`" pulumi-lang-yaml="`2048`" pulumi-lang-java="`2048`">`2048`</span> MB, <span pulumi-lang-nodejs="`3072`" pulumi-lang-dotnet="`3072`" pulumi-lang-go="`3072`" pulumi-lang-python="`3072`" pulumi-lang-yaml="`3072`" pulumi-lang-java="`3072`">`3072`</span> MB, <span pulumi-lang-nodejs="`4096`" pulumi-lang-dotnet="`4096`" pulumi-lang-go="`4096`" pulumi-lang-python="`4096`" pulumi-lang-yaml="`4096`" pulumi-lang-java="`4096`">`4096`</span> MB, <span pulumi-lang-nodejs="`5120`" pulumi-lang-dotnet="`5120`" pulumi-lang-go="`5120`" pulumi-lang-python="`5120`" pulumi-lang-yaml="`5120`" pulumi-lang-java="`5120`">`5120`</span> MB, or <span pulumi-lang-nodejs="`6144`" pulumi-lang-dotnet="`6144`" pulumi-lang-go="`6144`" pulumi-lang-python="`6144`" pulumi-lang-yaml="`6144`" pulumi-lang-java="`6144`">`6144`</span> MB.
  final int memorySizeInMb;

  /// Amount of provisioned concurrency to allocate for the serverless endpoint. Should be less than or equal to <span pulumi-lang-nodejs="`maxConcurrency`" pulumi-lang-dotnet="`MaxConcurrency`" pulumi-lang-go="`maxConcurrency`" pulumi-lang-python="`max_concurrency`" pulumi-lang-yaml="`maxConcurrency`" pulumi-lang-java="`maxConcurrency`">`max_concurrency`</span>. Valid values are between <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and <span pulumi-lang-nodejs="`200`" pulumi-lang-dotnet="`200`" pulumi-lang-go="`200`" pulumi-lang-python="`200`" pulumi-lang-yaml="`200`" pulumi-lang-java="`200`">`200`</span>.
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
