// ignore_for_file: unused_element, unnecessary_cast


class ServiceTaskSpecLogDriver {
  /// The logging driver to use
  final String name;
  /// The options for the logging driver
  final Map<String, String>? options;

  /// Creates a new [ServiceTaskSpecLogDriver].
  /// [name] The logging driver to use
  /// [options] The options for the logging driver
  ServiceTaskSpecLogDriver({
    required this.name,
    this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'options': ?options,
    };
  }

  factory ServiceTaskSpecLogDriver.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecLogDriver(
      name: map['name'] as String,
      options: map['options'] == null ? null : (map['options'] as Map).cast<String, String>(),
    );
  }
}

