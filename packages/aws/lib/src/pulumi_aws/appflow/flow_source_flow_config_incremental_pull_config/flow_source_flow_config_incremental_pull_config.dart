// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigIncrementalPullConfig {
  /// Field that specifies the date time or timestamp field as the criteria to use when importing incremental records from the source.
  final String? datetimeTypeFieldName;

  FlowSourceFlowConfigIncrementalPullConfig({
    this.datetimeTypeFieldName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datetimeTypeFieldNameValue = datetimeTypeFieldName;
    if (datetimeTypeFieldNameValue != null) {
      map['datetimeTypeFieldName'] = datetimeTypeFieldNameValue;
    }
    return map;
  }

  factory FlowSourceFlowConfigIncrementalPullConfig.fromMap(
      Map<String, dynamic> map) {
    return FlowSourceFlowConfigIncrementalPullConfig(
      datetimeTypeFieldName: map['datetimeTypeFieldName'] == null
          ? null
          : map['datetimeTypeFieldName'] as String,
    );
  }
}
