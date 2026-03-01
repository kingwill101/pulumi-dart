// ignore_for_file: unused_element, unnecessary_cast


class GetAppTemplateContainerStartupProbeHeader {
  /// The name of the Container App.
  final String name;
  /// The HTTP Header value.
  final String value;

  /// Creates a new [GetAppTemplateContainerStartupProbeHeader].
  /// [name] The name of the Container App.
  /// [value] The HTTP Header value.
  GetAppTemplateContainerStartupProbeHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetAppTemplateContainerStartupProbeHeader.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateContainerStartupProbeHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

