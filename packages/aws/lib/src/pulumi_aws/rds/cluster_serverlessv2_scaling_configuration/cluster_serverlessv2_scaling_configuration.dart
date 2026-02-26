// ignore_for_file: unused_element, unnecessary_cast

class ClusterServerlessv2ScalingConfiguration {
  /// Maximum capacity for an Aurora DB cluster in <span pulumi-lang-nodejs="`provisioned`" pulumi-lang-dotnet="`Provisioned`" pulumi-lang-go="`provisioned`" pulumi-lang-python="`provisioned`" pulumi-lang-yaml="`provisioned`" pulumi-lang-java="`provisioned`">`provisioned`</span> DB engine mode. The maximum capacity must be greater than or equal to the minimum capacity. Valid capacity values are in a range of <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> up to <span pulumi-lang-nodejs="`256`" pulumi-lang-dotnet="`256`" pulumi-lang-go="`256`" pulumi-lang-python="`256`" pulumi-lang-yaml="`256`" pulumi-lang-java="`256`">`256`</span> in steps of `0.5`.
  final double maxCapacity;

  /// Minimum capacity for an Aurora DB cluster in <span pulumi-lang-nodejs="`provisioned`" pulumi-lang-dotnet="`Provisioned`" pulumi-lang-go="`provisioned`" pulumi-lang-python="`provisioned`" pulumi-lang-yaml="`provisioned`" pulumi-lang-java="`provisioned`">`provisioned`</span> DB engine mode. The minimum capacity must be lesser than or equal to the maximum capacity. Valid capacity values are in a range of <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> up to <span pulumi-lang-nodejs="`256`" pulumi-lang-dotnet="`256`" pulumi-lang-go="`256`" pulumi-lang-python="`256`" pulumi-lang-yaml="`256`" pulumi-lang-java="`256`">`256`</span> in steps of `0.5`.
  final double minCapacity;

  /// Time, in seconds, before an Aurora DB cluster in <span pulumi-lang-nodejs="`provisioned`" pulumi-lang-dotnet="`Provisioned`" pulumi-lang-go="`provisioned`" pulumi-lang-python="`provisioned`" pulumi-lang-yaml="`provisioned`" pulumi-lang-java="`provisioned`">`provisioned`</span> DB engine mode is paused. Valid values are <span pulumi-lang-nodejs="`300`" pulumi-lang-dotnet="`300`" pulumi-lang-go="`300`" pulumi-lang-python="`300`" pulumi-lang-yaml="`300`" pulumi-lang-java="`300`">`300`</span> through <span pulumi-lang-nodejs="`86400`" pulumi-lang-dotnet="`86400`" pulumi-lang-go="`86400`" pulumi-lang-python="`86400`" pulumi-lang-yaml="`86400`" pulumi-lang-java="`86400`">`86400`</span>.
  final int? secondsUntilAutoPause;

  ClusterServerlessv2ScalingConfiguration({
    required this.maxCapacity,
    required this.minCapacity,
    this.secondsUntilAutoPause,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxCapacity'] = maxCapacity;
    map['minCapacity'] = minCapacity;
    final secondsUntilAutoPauseValue = secondsUntilAutoPause;
    if (secondsUntilAutoPauseValue != null) {
      map['secondsUntilAutoPause'] = secondsUntilAutoPauseValue;
    }
    return map;
  }

  factory ClusterServerlessv2ScalingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ClusterServerlessv2ScalingConfiguration(
      maxCapacity: map['maxCapacity'] as double,
      minCapacity: map['minCapacity'] as double,
      secondsUntilAutoPause: map['secondsUntilAutoPause'] == null
          ? null
          : map['secondsUntilAutoPause'] as int,
    );
  }
}
