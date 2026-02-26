// ignore_for_file: unused_element, unnecessary_cast

class RestorePlanRestoreConfigTransformationRuleFieldAction {
  /// A string containing a JSON Pointer value that references the
  /// location in the target document to move the value from.
  final String? fromPath;

  /// Specifies the operation to perform.
  /// Possible values are: `REMOVE`, `MOVE`, `COPY`, `ADD`, `TEST`, `REPLACE`.
  final String op;

  /// A string containing a JSON-Pointer value that references a
  /// location within the target document where the operation is performed.
  final String? path;

  /// A string that specifies the desired value in string format
  /// to use for transformation.
  final String? value;

  RestorePlanRestoreConfigTransformationRuleFieldAction({
    this.fromPath,
    required this.op,
    this.path,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fromPathValue = fromPath;
    if (fromPathValue != null) {
      map['fromPath'] = fromPathValue;
    }
    map['op'] = op;
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory RestorePlanRestoreConfigTransformationRuleFieldAction.fromMap(
      Map<String, dynamic> map) {
    return RestorePlanRestoreConfigTransformationRuleFieldAction(
      fromPath: map['fromPath'] == null ? null : map['fromPath'] as String,
      op: map['op'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
