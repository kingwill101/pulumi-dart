// ignore_for_file: unused_element, unnecessary_cast


class JobTemplateContainerReadinessProbeHeader {
  /// The HTTP Header Name.
  final String name;
  /// The HTTP Header value.
  final String value;

  /// Creates a new [JobTemplateContainerReadinessProbeHeader].
  /// [name] The HTTP Header Name.
  /// [value] The HTTP Header value.
  JobTemplateContainerReadinessProbeHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory JobTemplateContainerReadinessProbeHeader.fromMap(Map<String, dynamic> map) {
    return JobTemplateContainerReadinessProbeHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

