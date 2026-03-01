// ignore_for_file: unused_element, unnecessary_cast


class TableClientSideTimestamps {
  /// Shows how to enable client-side timestamps settings for the specified table. Valid values: `ENABLED`.
  final String status;

  /// Creates a new [TableClientSideTimestamps].
  /// [status] Shows how to enable client-side timestamps settings for the specified table. Valid values: `ENABLED`.
  TableClientSideTimestamps({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory TableClientSideTimestamps.fromMap(Map<String, dynamic> map) {
    return TableClientSideTimestamps(
      status: map['status'] as String,
    );
  }
}

