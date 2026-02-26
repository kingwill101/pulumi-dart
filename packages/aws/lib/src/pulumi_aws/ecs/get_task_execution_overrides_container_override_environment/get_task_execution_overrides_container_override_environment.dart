// ignore_for_file: unused_element, unnecessary_cast

class GetTaskExecutionOverridesContainerOverrideEnvironment {
  /// The name of the key-value pair. For environment variables, this is the name of the environment variable.
  final String key;

  /// The value of the key-value pair. For environment variables, this is the value of the environment variable.
  final String value;

  GetTaskExecutionOverridesContainerOverrideEnvironment({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory GetTaskExecutionOverridesContainerOverrideEnvironment.fromMap(
      Map<String, dynamic> map) {
    return GetTaskExecutionOverridesContainerOverrideEnvironment(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
