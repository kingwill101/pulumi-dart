// ignore_for_file: unused_element, unnecessary_cast

class FlowSourceFlowConfigIncrementalPullConfig {
  /// Field that specifies the date time or timestamp field as the criteria to use when importing incremental records from the source.
  final String? datetimeTypeFieldName;

  /// Creates a new [FlowSourceFlowConfigIncrementalPullConfig].
  /// [datetimeTypeFieldName] Field that specifies the date time or timestamp field as the criteria to use when importing incremental records from the source.
  FlowSourceFlowConfigIncrementalPullConfig({this.datetimeTypeFieldName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'datetimeTypeFieldName': ?datetimeTypeFieldName};
  }

  factory FlowSourceFlowConfigIncrementalPullConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowSourceFlowConfigIncrementalPullConfig(
      datetimeTypeFieldName: map['datetimeTypeFieldName'] == null
          ? null
          : map['datetimeTypeFieldName'] as String,
    );
  }
}
