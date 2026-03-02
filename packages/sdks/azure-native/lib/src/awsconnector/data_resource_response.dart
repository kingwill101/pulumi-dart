// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DataResource
class DataResourceResponse {
  /// The resource type in which you want to log data events. You can specify AWS::S3::Object or AWS::Lambda::Function resources.
  final pulumi.Input<String>? type;
  /// An array of Amazon Resource Name (ARN) strings or partial ARN strings for the specified objects.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [DataResourceResponse].
  /// [type] The resource type in which you want to log data events. You can specify AWS::S3::Object or AWS::Lambda::Function resources.
  /// [values] An array of Amazon Resource Name (ARN) strings or partial ARN strings for the specified objects.
  DataResourceResponse({
    this.type,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'values': ?values,
    };
  }

  factory DataResourceResponse.fromMap(Map<String, dynamic> map) {
    return DataResourceResponse(
      type: map['type'] == null ? null : (map['type']! as String).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
    );
  }
}

