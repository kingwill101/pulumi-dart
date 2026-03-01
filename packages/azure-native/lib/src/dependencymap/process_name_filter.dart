// ignore_for_file: unused_element, unnecessary_cast


/// Process name filter for dependency map visualization apis
class ProcessNameFilter {
  /// Operator for process name filter
  final String operator;
  /// List of process names on which the operator should be applied
  final List<String> processNames;

  /// Creates a new [ProcessNameFilter].
  /// [operator] Operator for process name filter
  /// [processNames] List of process names on which the operator should be applied
  ProcessNameFilter({
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
      operator: map['operator'] as String,
      processNames: (map['processNames'] as List).cast<String>(),
    );
  }
}

