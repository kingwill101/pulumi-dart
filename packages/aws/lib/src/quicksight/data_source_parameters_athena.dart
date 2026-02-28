// ignore_for_file: unused_element, unnecessary_cast

class DataSourceParametersAthena {
  /// The work-group to which to connect.
  final String? workGroup;

  /// Creates a new [DataSourceParametersAthena].
  /// [workGroup] The work-group to which to connect.
  DataSourceParametersAthena({
    this.workGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final workGroupValue = workGroup;
    if (workGroupValue != null) {
      map['workGroup'] = workGroupValue;
    }
    return map;
  }

  factory DataSourceParametersAthena.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersAthena(
      workGroup: map['workGroup'] == null ? null : map['workGroup'] as String,
    );
  }
}
