// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DataResource
class DataResource {
  /// The resource type in which you want to log data events. You can specify AWS::S3::Object or AWS::Lambda::Function resources.
  final String? type;
  /// An array of Amazon Resource Name (ARN) strings or partial ARN strings for the specified objects.
  final List<String>? values;

  /// Creates a new [DataResource].
  /// [type] The resource type in which you want to log data events. You can specify AWS::S3::Object or AWS::Lambda::Function resources.
  /// [values] An array of Amazon Resource Name (ARN) strings or partial ARN strings for the specified objects.
  DataResource({
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
      type: map['type'] == null ? null : map['type'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

