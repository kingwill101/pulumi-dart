// ignore_for_file: unused_element, unnecessary_cast


class JobTemplateContainerLivenessProbeHeader {
  /// The HTTP Header Name.
  final String name;
  /// The HTTP Header value.
  final String value;

  /// Creates a new [JobTemplateContainerLivenessProbeHeader].
  /// [name] The HTTP Header Name.
  /// [value] The HTTP Header value.
  JobTemplateContainerLivenessProbeHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory JobTemplateContainerLivenessProbeHeader.fromMap(Map<String, dynamic> map) {
    return JobTemplateContainerLivenessProbeHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

