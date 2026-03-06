// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTaskExecutionOverridesContainerOverrideEnvironment {
  /// The name of the key-value pair. For environment variables, this is the name of the environment variable.
  final pulumi.Input<String> key;
  /// The value of the key-value pair. For environment variables, this is the value of the environment variable.
  final pulumi.Input<String> value;

  /// Creates a new [GetTaskExecutionOverridesContainerOverrideEnvironment].
  /// [key] The name of the key-value pair. For environment variables, this is the name of the environment variable.
  /// [value] The value of the key-value pair. For environment variables, this is the value of the environment variable.
  const GetTaskExecutionOverridesContainerOverrideEnvironment({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetTaskExecutionOverridesContainerOverrideEnvironment.fromMap(Map<String, dynamic> map) {
    return GetTaskExecutionOverridesContainerOverrideEnvironment(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

