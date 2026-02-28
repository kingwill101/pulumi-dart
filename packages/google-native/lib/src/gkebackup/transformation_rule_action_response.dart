// ignore_for_file: unused_element, unnecessary_cast

/// TransformationRuleAction defines a TransformationRule action based on the JSON Patch RFC (https://www.rfc-editor.org/rfc/rfc6902)
class TransformationRuleActionResponse {
  /// Optional. A string containing a JSON Pointer value that references the location in the target document to move the value from.
  final String fromPath;

  /// op specifies the operation to perform.
  final String op;

  /// Optional. A string containing a JSON-Pointer value that references a location within the target document where the operation is performed.
  final String path;

  /// Optional. A string that specifies the desired value in string format to use for transformation.
  final String value;

  /// Creates a new [TransformationRuleActionResponse].
  /// [fromPath] Optional. A string containing a JSON Pointer value that references the location in the target document to move the value from.
  /// [op] op specifies the operation to perform.
  /// [path] Optional. A string containing a JSON-Pointer value that references a location within the target document where the operation is performed.
  /// [value] Optional. A string that specifies the desired value in string format to use for transformation.
  TransformationRuleActionResponse({
    required this.fromPath,
    required this.op,
    required this.path,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fromPath'] = fromPath;
    map['op'] = op;
    map['path'] = path;
    map['value'] = value;
    return map;
  }

  factory TransformationRuleActionResponse.fromMap(Map<String, dynamic> map) {
    return TransformationRuleActionResponse(
      fromPath: map['fromPath'] as String,
      op: map['op'] as String,
      path: map['path'] as String,
      value: map['value'] as String,
    );
  }
}
