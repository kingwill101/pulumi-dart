// ignore_for_file: unused_element, unnecessary_cast


/// The order by expression to be used in the report.
class ReportConfigSortingResponse {
  /// Direction of sort.
  final String? direction;
  /// The name of the column to sort.
  final String name;

  /// Creates a new [ReportConfigSortingResponse].
  /// [direction] Direction of sort.
  /// [name] The name of the column to sort.
  ReportConfigSortingResponse({
    this.direction,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'name': name,
    };
  }

  factory ReportConfigSortingResponse.fromMap(Map<String, dynamic> map) {
    return ReportConfigSortingResponse(
      direction: map['direction'] == null ? null : map['direction'] as String,
      name: map['name'] as String,
    );
  }
}

