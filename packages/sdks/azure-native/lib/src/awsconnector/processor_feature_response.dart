// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ProcessorFeature
class ProcessorFeatureResponse {
  /// <p>The name of the processor feature. Valid names are <code>coreCount</code> and <code>threadsPerCore</code>.</p>
  final String? name;
  /// <p>The value of a processor feature name.</p>
  final String? value;

  /// Creates a new [ProcessorFeatureResponse].
  /// [name] <p>The name of the processor feature. Valid names are <code>coreCount</code> and <code>threadsPerCore</code>.</p>
  /// [value] <p>The value of a processor feature name.</p>
  ProcessorFeatureResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ProcessorFeatureResponse.fromMap(Map<String, dynamic> map) {
    return ProcessorFeatureResponse(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

