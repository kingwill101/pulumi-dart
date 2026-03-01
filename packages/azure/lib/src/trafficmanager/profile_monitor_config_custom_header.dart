// ignore_for_file: unused_element, unnecessary_cast


class ProfileMonitorConfigCustomHeader {
  /// The name of the custom header.
  final String name;
  /// The value of custom header. Applicable for HTTP and HTTPS protocol.
  final String value;

  /// Creates a new [ProfileMonitorConfigCustomHeader].
  /// [name] The name of the custom header.
  /// [value] The value of custom header. Applicable for HTTP and HTTPS protocol.
  ProfileMonitorConfigCustomHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory ProfileMonitorConfigCustomHeader.fromMap(Map<String, dynamic> map) {
    return ProfileMonitorConfigCustomHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

