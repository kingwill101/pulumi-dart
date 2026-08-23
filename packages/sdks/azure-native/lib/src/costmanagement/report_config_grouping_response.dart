// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The group by expression to be used in the report.
class ReportConfigGroupingResponse {
  /// The name of the column to group. This version supports subscription lowest possible grain.
  final pulumi.Input<String> name;
  /// Has type of the column to group.
  final pulumi.Input<String> type;

  /// Creates a new [ReportConfigGroupingResponse].
  /// [name] The name of the column to group. This version supports subscription lowest possible grain.
  /// [type] Has type of the column to group.
  const ReportConfigGroupingResponse({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
