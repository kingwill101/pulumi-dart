// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ProcessorFeature
class ProcessorFeature {
  /// &lt;p&gt;The name of the processor feature. Valid names are &lt;code&gt;coreCount&lt;/code&gt; and &lt;code&gt;threadsPerCore&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<String>? name;

  /// &lt;p&gt;The value of a processor feature name.&lt;/p&gt;
  final pulumi.Input<String>? value;

  /// Creates a new [ProcessorFeature].
  /// [name] &lt;p&gt;The name of the processor feature. Valid names are &lt;code&gt;coreCount&lt;/code&gt; and &lt;code&gt;threadsPerCore&lt;/code&gt;.&lt;/p&gt;
  /// [value] &lt;p&gt;The value of a processor feature name.&lt;/p&gt;
  ProcessorFeature({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory ProcessorFeature.fromMap(Map<String, dynamic> map) {
    return ProcessorFeature(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
