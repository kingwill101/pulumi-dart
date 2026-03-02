// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The group by expression to be used in the report.
class ReportGroupingResponse {
  /// The name of the column to group.
  final pulumi.Input<String> name;
  /// Has type of the column to group.
  final pulumi.Input<String> type;

  /// Creates a new [ReportGroupingResponse].
  /// [name] The name of the column to group.
  /// [type] Has type of the column to group.
  ReportGroupingResponse({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ReportGroupingResponse.fromMap(Map<String, dynamic> map) {
    return ReportGroupingResponse(
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

