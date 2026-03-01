// ignore_for_file: unused_element, unnecessary_cast


class AppSpecWorkerEnv {
  /// The name of the environment variable.
  final String? key;
  /// The visibility scope of the environment variable. One of `RUN_TIME`, `BUILD_TIME`, or `RUN_AND_BUILD_TIME` (default).
  final String? scope;
  /// The type of the environment variable, `GENERAL` or `SECRET`.
  final String? type;
  /// The value of the environment variable.
  final String? value;

  /// Creates a new [AppSpecWorkerEnv].
  /// [key] The name of the environment variable.
  /// [scope] The visibility scope of the environment variable. One of `RUN_TIME`, `BUILD_TIME`, or `RUN_AND_BUILD_TIME` (default).
  /// [type] The type of the environment variable, `GENERAL` or `SECRET`.
  /// [value] The value of the environment variable.
  AppSpecWorkerEnv({
    this.key,
    this.scope,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'scope': ?scope,
      'type': ?type,
      'value': ?value,
    };
  }

  factory AppSpecWorkerEnv.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerEnv(
      key: map['key'] == null ? null : map['key'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

