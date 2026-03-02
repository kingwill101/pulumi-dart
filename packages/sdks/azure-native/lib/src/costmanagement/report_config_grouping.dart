// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The group by expression to be used in the report.
class ReportConfigGrouping {
  /// The name of the column to group. This version supports subscription lowest possible grain.
  final pulumi.Input<String> name;
  /// Has type of the column to group.
  final pulumi.Input<String> type;

  /// Creates a new [ReportConfigGrouping].
  /// [name] The name of the column to group. This version supports subscription lowest possible grain.
  /// [type] Has type of the column to group.
  ReportConfigGrouping({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ReportConfigGrouping.fromMap(Map<String, dynamic> map) {
    return ReportConfigGrouping(
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

