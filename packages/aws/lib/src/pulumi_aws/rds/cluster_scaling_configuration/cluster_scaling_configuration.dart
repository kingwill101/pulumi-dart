// ignore_for_file: unused_element, unnecessary_cast

class ClusterScalingConfiguration {
  /// Whether to enable automatic pause. A DB cluster can be paused only when it's idle (it has no connections). If a DB cluster is paused for more than seven days, the DB cluster might be backed up with a snapshot. In this case, the DB cluster is restored when there is a request to connect to it. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? autoPause;

  /// Maximum capacity for an Aurora DB cluster in <span pulumi-lang-nodejs="`serverless`" pulumi-lang-dotnet="`Serverless`" pulumi-lang-go="`serverless`" pulumi-lang-python="`serverless`" pulumi-lang-yaml="`serverless`" pulumi-lang-java="`serverless`">`serverless`</span> DB engine mode. The maximum capacity must be greater than or equal to the minimum capacity. Valid Aurora MySQL capacity values are <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>, <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>, <span pulumi-lang-nodejs="`4`" pulumi-lang-dotnet="`4`" pulumi-lang-go="`4`" pulumi-lang-python="`4`" pulumi-lang-yaml="`4`" pulumi-lang-java="`4`">`4`</span>, <span pulumi-lang-nodejs="`8`" pulumi-lang-dotnet="`8`" pulumi-lang-go="`8`" pulumi-lang-python="`8`" pulumi-lang-yaml="`8`" pulumi-lang-java="`8`">`8`</span>, <span pulumi-lang-nodejs="`16`" pulumi-lang-dotnet="`16`" pulumi-lang-go="`16`" pulumi-lang-python="`16`" pulumi-lang-yaml="`16`" pulumi-lang-java="`16`">`16`</span>, <span pulumi-lang-nodejs="`32`" pulumi-lang-dotnet="`32`" pulumi-lang-go="`32`" pulumi-lang-python="`32`" pulumi-lang-yaml="`32`" pulumi-lang-java="`32`">`32`</span>, <span pulumi-lang-nodejs="`64`" pulumi-lang-dotnet="`64`" pulumi-lang-go="`64`" pulumi-lang-python="`64`" pulumi-lang-yaml="`64`" pulumi-lang-java="`64`">`64`</span>, <span pulumi-lang-nodejs="`128`" pulumi-lang-dotnet="`128`" pulumi-lang-go="`128`" pulumi-lang-python="`128`" pulumi-lang-yaml="`128`" pulumi-lang-java="`128`">`128`</span>, <span pulumi-lang-nodejs="`256`" pulumi-lang-dotnet="`256`" pulumi-lang-go="`256`" pulumi-lang-python="`256`" pulumi-lang-yaml="`256`" pulumi-lang-java="`256`">`256`</span>. Valid Aurora PostgreSQL capacity values are (<span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>, <span pulumi-lang-nodejs="`4`" pulumi-lang-dotnet="`4`" pulumi-lang-go="`4`" pulumi-lang-python="`4`" pulumi-lang-yaml="`4`" pulumi-lang-java="`4`">`4`</span>, <span pulumi-lang-nodejs="`8`" pulumi-lang-dotnet="`8`" pulumi-lang-go="`8`" pulumi-lang-python="`8`" pulumi-lang-yaml="`8`" pulumi-lang-java="`8`">`8`</span>, <span pulumi-lang-nodejs="`16`" pulumi-lang-dotnet="`16`" pulumi-lang-go="`16`" pulumi-lang-python="`16`" pulumi-lang-yaml="`16`" pulumi-lang-java="`16`">`16`</span>, <span pulumi-lang-nodejs="`32`" pulumi-lang-dotnet="`32`" pulumi-lang-go="`32`" pulumi-lang-python="`32`" pulumi-lang-yaml="`32`" pulumi-lang-java="`32`">`32`</span>, <span pulumi-lang-nodejs="`64`" pulumi-lang-dotnet="`64`" pulumi-lang-go="`64`" pulumi-lang-python="`64`" pulumi-lang-yaml="`64`" pulumi-lang-java="`64`">`64`</span>, <span pulumi-lang-nodejs="`192`" pulumi-lang-dotnet="`192`" pulumi-lang-go="`192`" pulumi-lang-python="`192`" pulumi-lang-yaml="`192`" pulumi-lang-java="`192`">`192`</span>, and <span pulumi-lang-nodejs="`384`" pulumi-lang-dotnet="`384`" pulumi-lang-go="`384`" pulumi-lang-python="`384`" pulumi-lang-yaml="`384`" pulumi-lang-java="`384`">`384`</span>). Defaults to <span pulumi-lang-nodejs="`16`" pulumi-lang-dotnet="`16`" pulumi-lang-go="`16`" pulumi-lang-python="`16`" pulumi-lang-yaml="`16`" pulumi-lang-java="`16`">`16`</span>.
  final int? maxCapacity;

  /// Minimum capacity for an Aurora DB cluster in <span pulumi-lang-nodejs="`serverless`" pulumi-lang-dotnet="`Serverless`" pulumi-lang-go="`serverless`" pulumi-lang-python="`serverless`" pulumi-lang-yaml="`serverless`" pulumi-lang-java="`serverless`">`serverless`</span> DB engine mode. The minimum capacity must be lesser than or equal to the maximum capacity. Valid Aurora MySQL capacity values are <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>, <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>, <span pulumi-lang-nodejs="`4`" pulumi-lang-dotnet="`4`" pulumi-lang-go="`4`" pulumi-lang-python="`4`" pulumi-lang-yaml="`4`" pulumi-lang-java="`4`">`4`</span>, <span pulumi-lang-nodejs="`8`" pulumi-lang-dotnet="`8`" pulumi-lang-go="`8`" pulumi-lang-python="`8`" pulumi-lang-yaml="`8`" pulumi-lang-java="`8`">`8`</span>, <span pulumi-lang-nodejs="`16`" pulumi-lang-dotnet="`16`" pulumi-lang-go="`16`" pulumi-lang-python="`16`" pulumi-lang-yaml="`16`" pulumi-lang-java="`16`">`16`</span>, <span pulumi-lang-nodejs="`32`" pulumi-lang-dotnet="`32`" pulumi-lang-go="`32`" pulumi-lang-python="`32`" pulumi-lang-yaml="`32`" pulumi-lang-java="`32`">`32`</span>, <span pulumi-lang-nodejs="`64`" pulumi-lang-dotnet="`64`" pulumi-lang-go="`64`" pulumi-lang-python="`64`" pulumi-lang-yaml="`64`" pulumi-lang-java="`64`">`64`</span>, <span pulumi-lang-nodejs="`128`" pulumi-lang-dotnet="`128`" pulumi-lang-go="`128`" pulumi-lang-python="`128`" pulumi-lang-yaml="`128`" pulumi-lang-java="`128`">`128`</span>, <span pulumi-lang-nodejs="`256`" pulumi-lang-dotnet="`256`" pulumi-lang-go="`256`" pulumi-lang-python="`256`" pulumi-lang-yaml="`256`" pulumi-lang-java="`256`">`256`</span>. Valid Aurora PostgreSQL capacity values are (<span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>, <span pulumi-lang-nodejs="`4`" pulumi-lang-dotnet="`4`" pulumi-lang-go="`4`" pulumi-lang-python="`4`" pulumi-lang-yaml="`4`" pulumi-lang-java="`4`">`4`</span>, <span pulumi-lang-nodejs="`8`" pulumi-lang-dotnet="`8`" pulumi-lang-go="`8`" pulumi-lang-python="`8`" pulumi-lang-yaml="`8`" pulumi-lang-java="`8`">`8`</span>, <span pulumi-lang-nodejs="`16`" pulumi-lang-dotnet="`16`" pulumi-lang-go="`16`" pulumi-lang-python="`16`" pulumi-lang-yaml="`16`" pulumi-lang-java="`16`">`16`</span>, <span pulumi-lang-nodejs="`32`" pulumi-lang-dotnet="`32`" pulumi-lang-go="`32`" pulumi-lang-python="`32`" pulumi-lang-yaml="`32`" pulumi-lang-java="`32`">`32`</span>, <span pulumi-lang-nodejs="`64`" pulumi-lang-dotnet="`64`" pulumi-lang-go="`64`" pulumi-lang-python="`64`" pulumi-lang-yaml="`64`" pulumi-lang-java="`64`">`64`</span>, <span pulumi-lang-nodejs="`192`" pulumi-lang-dotnet="`192`" pulumi-lang-go="`192`" pulumi-lang-python="`192`" pulumi-lang-yaml="`192`" pulumi-lang-java="`192`">`192`</span>, and <span pulumi-lang-nodejs="`384`" pulumi-lang-dotnet="`384`" pulumi-lang-go="`384`" pulumi-lang-python="`384`" pulumi-lang-yaml="`384`" pulumi-lang-java="`384`">`384`</span>). Defaults to <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final int? minCapacity;

  /// Amount of time, in seconds, that Aurora Serverless v1 tries to find a scaling point to perform seamless scaling before enforcing the timeout action. Valid values are <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span> through <span pulumi-lang-nodejs="`600`" pulumi-lang-dotnet="`600`" pulumi-lang-go="`600`" pulumi-lang-python="`600`" pulumi-lang-yaml="`600`" pulumi-lang-java="`600`">`600`</span>. Defaults to <span pulumi-lang-nodejs="`300`" pulumi-lang-dotnet="`300`" pulumi-lang-go="`300`" pulumi-lang-python="`300`" pulumi-lang-yaml="`300`" pulumi-lang-java="`300`">`300`</span>.
  final int? secondsBeforeTimeout;

  /// Time, in seconds, before an Aurora DB cluster in serverless mode is paused. Valid values are <span pulumi-lang-nodejs="`300`" pulumi-lang-dotnet="`300`" pulumi-lang-go="`300`" pulumi-lang-python="`300`" pulumi-lang-yaml="`300`" pulumi-lang-java="`300`">`300`</span> through <span pulumi-lang-nodejs="`86400`" pulumi-lang-dotnet="`86400`" pulumi-lang-go="`86400`" pulumi-lang-python="`86400`" pulumi-lang-yaml="`86400`" pulumi-lang-java="`86400`">`86400`</span>. Defaults to <span pulumi-lang-nodejs="`300`" pulumi-lang-dotnet="`300`" pulumi-lang-go="`300`" pulumi-lang-python="`300`" pulumi-lang-yaml="`300`" pulumi-lang-java="`300`">`300`</span>.
  final int? secondsUntilAutoPause;

  /// Action to take when the timeout is reached. Valid values: `ForceApplyCapacityChange`, `RollbackCapacityChange`. Defaults to `RollbackCapacityChange`. See [documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v1.how-it-works.html#aurora-serverless.how-it-works.timeout-action).
  final String? timeoutAction;

  ClusterScalingConfiguration({
    this.autoPause,
    this.maxCapacity,
    this.minCapacity,
    this.secondsBeforeTimeout,
    this.secondsUntilAutoPause,
    this.timeoutAction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoPauseValue = autoPause;
    if (autoPauseValue != null) {
      map['autoPause'] = autoPauseValue;
    }
    final maxCapacityValue = maxCapacity;
    if (maxCapacityValue != null) {
      map['maxCapacity'] = maxCapacityValue;
    }
    final minCapacityValue = minCapacity;
    if (minCapacityValue != null) {
      map['minCapacity'] = minCapacityValue;
    }
    final secondsBeforeTimeoutValue = secondsBeforeTimeout;
    if (secondsBeforeTimeoutValue != null) {
      map['secondsBeforeTimeout'] = secondsBeforeTimeoutValue;
    }
    final secondsUntilAutoPauseValue = secondsUntilAutoPause;
    if (secondsUntilAutoPauseValue != null) {
      map['secondsUntilAutoPause'] = secondsUntilAutoPauseValue;
    }
    final timeoutActionValue = timeoutAction;
    if (timeoutActionValue != null) {
      map['timeoutAction'] = timeoutActionValue;
    }
    return map;
  }

  factory ClusterScalingConfiguration.fromMap(Map<String, dynamic> map) {
    return ClusterScalingConfiguration(
      autoPause: map['autoPause'] == null ? null : map['autoPause'] as bool,
      maxCapacity:
          map['maxCapacity'] == null ? null : map['maxCapacity'] as int,
      minCapacity:
          map['minCapacity'] == null ? null : map['minCapacity'] as int,
      secondsBeforeTimeout: map['secondsBeforeTimeout'] == null
          ? null
          : map['secondsBeforeTimeout'] as int,
      secondsUntilAutoPause: map['secondsUntilAutoPause'] == null
          ? null
          : map['secondsUntilAutoPause'] as int,
      timeoutAction:
          map['timeoutAction'] == null ? null : map['timeoutAction'] as String,
    );
  }
}
