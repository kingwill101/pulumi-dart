// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DataResource
class DataResource {
  /// The resource type in which you want to log data events. You can specify AWS::S3::Object or AWS::Lambda::Function resources.
  final pulumi.Input<String?>? type;
  /// An array of Amazon Resource Name (ARN) strings or partial ARN strings for the specified objects.
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [DataResource].
  /// [type] The resource type in which you want to log data events. You can specify AWS::S3::Object or AWS::Lambda::Function resources.
  /// [values] An array of Amazon Resource Name (ARN) strings or partial ARN strings for the specified objects.
  const DataResource({
    this.type,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'values': ?values,
    };
  }

  factory DataResource.fromMap(Map<String, dynamic> map) {
    return DataResource(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
