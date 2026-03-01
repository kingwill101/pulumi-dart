// ignore_for_file: unused_element, unnecessary_cast


/// The group by expression to be used in the report.
class ReportConfigGroupingResponse {
  /// The name of the column to group. This version supports subscription lowest possible grain.
  final String name;
  /// Has type of the column to group.
  final String type;

  /// Creates a new [ReportConfigGroupingResponse].
  /// [name] The name of the column to group. This version supports subscription lowest possible grain.
  /// [type] Has type of the column to group.
  ReportConfigGroupingResponse({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ReportConfigGroupingResponse.fromMap(Map<String, dynamic> map) {
    return ReportConfigGroupingResponse(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

