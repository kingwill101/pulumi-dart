// ignore_for_file: unused_element, unnecessary_cast


/// The group by expression to be used in the report.
class ReportGrouping {
  /// The name of the column to group.
  final String name;
  /// Has type of the column to group.
  final String type;

  /// Creates a new [ReportGrouping].
  /// [name] The name of the column to group.
  /// [type] Has type of the column to group.
  ReportGrouping({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ReportGrouping.fromMap(Map<String, dynamic> map) {
    return ReportGrouping(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

