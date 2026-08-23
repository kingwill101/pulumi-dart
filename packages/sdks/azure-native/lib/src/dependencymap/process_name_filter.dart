// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Process name filter for dependency map visualization apis
class ProcessNameFilter {
  /// Operator for process name filter
  final pulumi.Input<String> operator;
  /// List of process names on which the operator should be applied
  final pulumi.Input<List<String>> processNames;

  /// Creates a new [ProcessNameFilter].
  /// [operator] Operator for process name filter
  /// [processNames] List of process names on which the operator should be applied
  const ProcessNameFilter({
    required this.operator,
    required this.processNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'processNames': processNames,
    };
  }

  factory ProcessNameFilter.fromMap(Map<String, dynamic> map) {
    return ProcessNameFilter(
      operator: pulumi.Input.fromValue(map['operator'] as String),
      processNames: pulumi.Input.fromValue((map['processNames'] as List).cast<String>()),
    );
  }
}
