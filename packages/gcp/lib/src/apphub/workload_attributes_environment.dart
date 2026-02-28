// ignore_for_file: unused_element, unnecessary_cast


class WorkloadAttributesEnvironment {
  /// Environment type.
  /// Possible values are: `PRODUCTION`, `STAGING`, `TEST`, `DEVELOPMENT`.
  final String type;

  /// Creates a new [WorkloadAttributesEnvironment].
  /// [type] Environment type.
  WorkloadAttributesEnvironment({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory WorkloadAttributesEnvironment.fromMap(Map<String, dynamic> map) {
    return WorkloadAttributesEnvironment(
      type: map['type'] as String,
    );
  }
}

