// ignore_for_file: unused_element, unnecessary_cast

class ServiceObservabilityConfiguration {
  /// ARN of the observability configuration that is associated with the service. Specified only when <span pulumi-lang-nodejs="`observabilityEnabled`" pulumi-lang-dotnet="`ObservabilityEnabled`" pulumi-lang-go="`observabilityEnabled`" pulumi-lang-python="`observability_enabled`" pulumi-lang-yaml="`observabilityEnabled`" pulumi-lang-java="`observabilityEnabled`">`observability_enabled`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final String? observabilityConfigurationArn;

  /// When <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, an observability configuration resource is associated with the service.
  final bool observabilityEnabled;

  ServiceObservabilityConfiguration({
    this.observabilityConfigurationArn,
    required this.observabilityEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final observabilityConfigurationArnValue = observabilityConfigurationArn;
    if (observabilityConfigurationArnValue != null) {
      map['observabilityConfigurationArn'] = observabilityConfigurationArnValue;
    }
    map['observabilityEnabled'] = observabilityEnabled;
    return map;
  }

  factory ServiceObservabilityConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceObservabilityConfiguration(
      observabilityConfigurationArn:
          map['observabilityConfigurationArn'] == null
              ? null
              : map['observabilityConfigurationArn'] as String,
      observabilityEnabled: map['observabilityEnabled'] as bool,
    );
  }
}
