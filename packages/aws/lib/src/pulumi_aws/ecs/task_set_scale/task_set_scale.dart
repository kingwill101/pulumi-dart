// ignore_for_file: unused_element, unnecessary_cast

class TaskSetScale {
  /// The unit of measure for the scale value. Default: `PERCENT`.
  final String? unit;

  /// The value, specified as a percent total of a service's `desiredCount`, to scale the task set. Defaults to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> if not specified. Accepted values are numbers between 0.0 and 100.0.
  final double? value;

  TaskSetScale({
    this.unit,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final unitValue = unit;
    if (unitValue != null) {
      map['unit'] = unitValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory TaskSetScale.fromMap(Map<String, dynamic> map) {
    return TaskSetScale(
      unit: map['unit'] == null ? null : map['unit'] as String,
      value: map['value'] == null ? null : map['value'] as double,
    );
  }
}
