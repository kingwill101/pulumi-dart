// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CanaryRunConfig {
  /// Whether this canary is to use active AWS X-Ray tracing when it runs. You can enable active tracing only for canaries that use version syn-nodejs-2.0 or later for their canary runtime.
  final pulumi.Input<bool>? activeTracing;
  /// Map of environment variables that are accessible from the canary during execution. Please see [AWS Docs](https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-runtime) for variables reserved for Lambda.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// Amount of ephemeral storage (in MB) allocated for the canary run during execution. Defaults to 1024.
  final pulumi.Input<int>? ephemeralStorage;
  /// Maximum amount of memory available to the canary while it is running, in MB. The value you specify must be a multiple of 64.
  final pulumi.Input<int>? memoryInMb;
  /// Number of seconds the canary is allowed to run before it must stop. If you omit this field, the frequency of the canary is used, up to a maximum of 840 (14 minutes).
  final pulumi.Input<int>? timeoutInSeconds;

  /// Creates a new [CanaryRunConfig].
  /// [activeTracing] Whether this canary is to use active AWS X-Ray tracing when it runs. You can enable active tracing only for canaries that use version syn-nodejs-2.0 or later for their canary runtime.
  /// [environmentVariables] Map of environment variables that are accessible from the canary during execution. Please see [AWS Docs](https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-runtime) for variables reserved for Lambda.
  /// [ephemeralStorage] Amount of ephemeral storage (in MB) allocated for the canary run during execution. Defaults to 1024.
  /// [memoryInMb] Maximum amount of memory available to the canary while it is running, in MB. The value you specify must be a multiple of 64.
  /// [timeoutInSeconds] Number of seconds the canary is allowed to run before it must stop. If you omit this field, the frequency of the canary is used, up to a maximum of 840 (14 minutes).
  CanaryRunConfig({
    this.activeTracing,
    this.environmentVariables,
    this.ephemeralStorage,
    this.memoryInMb,
    this.timeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeTracing': ?activeTracing,
      'environmentVariables': ?environmentVariables,
      'ephemeralStorage': ?ephemeralStorage,
      'memoryInMb': ?memoryInMb,
      'timeoutInSeconds': ?timeoutInSeconds,
    };
  }

  factory CanaryRunConfig.fromMap(Map<String, dynamic> map) {
    return CanaryRunConfig(
      activeTracing: map['activeTracing'] == null ? null : (map['activeTracing'] as bool).input(),
      environmentVariables: map['environmentVariables'] == null ? null : ((map['environmentVariables'] as Map).cast<String, String>()).input(),
      ephemeralStorage: map['ephemeralStorage'] == null ? null : (map['ephemeralStorage'] as int).input(),
      memoryInMb: map['memoryInMb'] == null ? null : (map['memoryInMb'] as int).input(),
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : (map['timeoutInSeconds'] as int).input(),
    );
  }
}

