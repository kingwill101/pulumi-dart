// ignore_for_file: unused_element, unnecessary_cast


/// The binding to a JavaScript function.
class JavaScriptFunctionBinding {
  /// The JavaScript code containing a single function definition. For example: 'function (x, y) { return x + y; }'
  final String? script;
  /// Indicates the function binding type.
  /// Expected value is 'Microsoft.StreamAnalytics/JavascriptUdf'.
  final String type;

  /// Creates a new [JavaScriptFunctionBinding].
  /// [script] The JavaScript code containing a single function definition. For example: 'function (x, y) { return x + y; }'
  /// [type] Indicates the function binding type.
  JavaScriptFunctionBinding({
    this.script,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'script': ?script,
      'type': type,
    };
  }

  factory JavaScriptFunctionBinding.fromMap(Map<String, dynamic> map) {
    return JavaScriptFunctionBinding(
      script: map['script'] == null ? null : map['script'] as String,
      type: map['type'] as String,
    );
  }
}

