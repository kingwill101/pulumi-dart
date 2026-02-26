// ignore_for_file: unused_element, unnecessary_cast

class ScheduledActionScalableTargetAction {
  /// Maximum capacity. At least one of <span pulumi-lang-nodejs="`maxCapacity`" pulumi-lang-dotnet="`MaxCapacity`" pulumi-lang-go="`maxCapacity`" pulumi-lang-python="`max_capacity`" pulumi-lang-yaml="`maxCapacity`" pulumi-lang-java="`maxCapacity`">`max_capacity`</span> or <span pulumi-lang-nodejs="`minCapacity`" pulumi-lang-dotnet="`MinCapacity`" pulumi-lang-go="`minCapacity`" pulumi-lang-python="`min_capacity`" pulumi-lang-yaml="`minCapacity`" pulumi-lang-java="`minCapacity`">`min_capacity`</span> must be set.
  final int? maxCapacity;

  /// Minimum capacity. At least one of <span pulumi-lang-nodejs="`minCapacity`" pulumi-lang-dotnet="`MinCapacity`" pulumi-lang-go="`minCapacity`" pulumi-lang-python="`min_capacity`" pulumi-lang-yaml="`minCapacity`" pulumi-lang-java="`minCapacity`">`min_capacity`</span> or <span pulumi-lang-nodejs="`maxCapacity`" pulumi-lang-dotnet="`MaxCapacity`" pulumi-lang-go="`maxCapacity`" pulumi-lang-python="`max_capacity`" pulumi-lang-yaml="`maxCapacity`" pulumi-lang-java="`maxCapacity`">`max_capacity`</span> must be set.
  final int? minCapacity;

  ScheduledActionScalableTargetAction({
    this.maxCapacity,
    this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxCapacityValue = maxCapacity;
    if (maxCapacityValue != null) {
      map['maxCapacity'] = maxCapacityValue;
    }
    final minCapacityValue = minCapacity;
    if (minCapacityValue != null) {
      map['minCapacity'] = minCapacityValue;
    }
    return map;
  }

  factory ScheduledActionScalableTargetAction.fromMap(
      Map<String, dynamic> map) {
    return ScheduledActionScalableTargetAction(
      maxCapacity:
          map['maxCapacity'] == null ? null : map['maxCapacity'] as int,
      minCapacity:
          map['minCapacity'] == null ? null : map['minCapacity'] as int,
    );
  }
}
