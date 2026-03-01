// ignore_for_file: unused_element, unnecessary_cast


class FunctionJavaScriptUDFOutput {
  /// The Data Type output from this JavaScript Function. Possible values include `array`, `any`, `bigint`, `datetime`, `float`, `nvarchar(max)` and `record`.
  final String type;

  /// Creates a new [FunctionJavaScriptUDFOutput].
  /// [type] The Data Type output from this JavaScript Function. Possible values include `array`, `any`, `bigint`, `datetime`, `float`, `nvarchar(max)` and `record`.
  FunctionJavaScriptUDFOutput({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory FunctionJavaScriptUDFOutput.fromMap(Map<String, dynamic> map) {
    return FunctionJavaScriptUDFOutput(
      type: map['type'] as String,
    );
  }
}

