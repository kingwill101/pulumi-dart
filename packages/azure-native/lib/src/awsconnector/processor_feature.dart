// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ProcessorFeature
class ProcessorFeature {
  /// <p>The name of the processor feature. Valid names are <code>coreCount</code> and <code>threadsPerCore</code>.</p>
  final String? name;
  /// <p>The value of a processor feature name.</p>
  final String? value;

  /// Creates a new [ProcessorFeature].
  /// [name] <p>The name of the processor feature. Valid names are <code>coreCount</code> and <code>threadsPerCore</code>.</p>
  /// [value] <p>The value of a processor feature name.</p>
  ProcessorFeature({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ProcessorFeature.fromMap(Map<String, dynamic> map) {
    return ProcessorFeature(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

