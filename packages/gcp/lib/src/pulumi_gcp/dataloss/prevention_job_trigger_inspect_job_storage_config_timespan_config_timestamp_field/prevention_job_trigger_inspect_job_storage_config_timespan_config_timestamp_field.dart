// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobStorageConfigTimespanConfigTimestampField {
  /// Specification of the field containing the timestamp of scanned items. Used for data sources like Datastore and BigQuery.
  /// For BigQuery: Required to filter out rows based on the given start and end times. If not specified and the table was
  /// modified between the given start and end times, the entire table will be scanned. The valid data types of the timestamp
  /// field are: INTEGER, DATE, TIMESTAMP, or DATETIME BigQuery column.
  /// For Datastore. Valid data types of the timestamp field are: TIMESTAMP. Datastore entity will be scanned if the
  /// timestamp property does not exist or its value is empty or invalid.
  final String name;

  PreventionJobTriggerInspectJobStorageConfigTimespanConfigTimestampField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory PreventionJobTriggerInspectJobStorageConfigTimespanConfigTimestampField.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigTimespanConfigTimestampField(
      name: map['name'] as String,
    );
  }
}
