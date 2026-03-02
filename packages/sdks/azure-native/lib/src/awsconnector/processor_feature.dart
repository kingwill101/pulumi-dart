// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ProcessorFeature
class ProcessorFeature {
  /// <p>The name of the processor feature. Valid names are <code>coreCount</code> and <code>threadsPerCore</code>.</p>
  final pulumi.Input<String>? name;
  /// <p>The value of a processor feature name.</p>
  final pulumi.Input<String>? value;

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
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

