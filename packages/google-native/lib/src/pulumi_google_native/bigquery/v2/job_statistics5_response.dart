// ignore_for_file: unused_element, unnecessary_cast

class JobStatistics5Response {
  /// Number of logical bytes copied to the destination table.
  final String copiedLogicalBytes;

  /// Number of rows copied to the destination table.
  final String copiedRows;

  JobStatistics5Response({
    required this.copiedLogicalBytes,
    required this.copiedRows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['copiedLogicalBytes'] = copiedLogicalBytes;
    map['copiedRows'] = copiedRows;
    return map;
  }

  factory JobStatistics5Response.fromMap(Map<String, dynamic> map) {
    return JobStatistics5Response(
      copiedLogicalBytes: map['copiedLogicalBytes'] as String,
      copiedRows: map['copiedRows'] as String,
    );
  }
}
