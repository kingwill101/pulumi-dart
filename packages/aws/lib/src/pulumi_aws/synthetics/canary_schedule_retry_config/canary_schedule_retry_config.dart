// ignore_for_file: unused_element, unnecessary_cast

class CanaryScheduleRetryConfig {
  /// Maximum number of retries. The value must be less than or equal to <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>. If <span pulumi-lang-nodejs="`maxRetries`" pulumi-lang-dotnet="`MaxRetries`" pulumi-lang-go="`maxRetries`" pulumi-lang-python="`max_retries`" pulumi-lang-yaml="`maxRetries`" pulumi-lang-java="`maxRetries`">`max_retries`</span> is <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>, `run_config.timeout_in_seconds` should be less than 600 seconds. Defaults to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  final int maxRetries;

  CanaryScheduleRetryConfig({
    required this.maxRetries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxRetries'] = maxRetries;
    return map;
  }

  factory CanaryScheduleRetryConfig.fromMap(Map<String, dynamic> map) {
    return CanaryScheduleRetryConfig(
      maxRetries: map['maxRetries'] as int,
    );
  }
}
