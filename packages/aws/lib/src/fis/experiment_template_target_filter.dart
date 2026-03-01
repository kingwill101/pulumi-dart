// ignore_for_file: unused_element, unnecessary_cast

class ExperimentTemplateTargetFilter {
  /// Attribute path for the filter.
  final String path;

  /// Set of attribute values for the filter.
  ///
  /// > **NOTE:** Values specified in a `filter` are joined with an `OR` clause, while values across multiple `filter` blocks are joined with an `AND` clause. For more information, see [Targets for AWS FIS](https://docs.aws.amazon.com/fis/latest/userguide/targets.html#target-filters).
  final List<String> values;

  /// Creates a new [ExperimentTemplateTargetFilter].
  /// [path] Attribute path for the filter.
  /// [values] Set of attribute values for the filter.
  ExperimentTemplateTargetFilter({required this.path, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': path, 'values': values};
  }

  factory ExperimentTemplateTargetFilter.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateTargetFilter(
      path: map['path'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
