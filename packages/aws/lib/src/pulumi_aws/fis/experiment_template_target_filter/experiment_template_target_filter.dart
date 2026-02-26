// ignore_for_file: unused_element, unnecessary_cast

class ExperimentTemplateTargetFilter {
  /// Attribute path for the filter.
  final String path;

  /// Set of attribute values for the filter.
  ///
  /// > **NOTE:** Values specified in a <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> are joined with an `OR` clause, while values across multiple <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> blocks are joined with an `AND` clause. For more information, see [Targets for AWS FIS](https://docs.aws.amazon.com/fis/latest/userguide/targets.html#target-filters).
  final List<String> values;

  ExperimentTemplateTargetFilter({
    required this.path,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    map['values'] = values;
    return map;
  }

  factory ExperimentTemplateTargetFilter.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateTargetFilter(
      path: map['path'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
