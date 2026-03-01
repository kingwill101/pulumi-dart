// ignore_for_file: unused_element, unnecessary_cast


class ThirdPartyExtension {
  /// Name of third party extension.
  final String? name;

  /// Creates a new [ThirdPartyExtension].
  /// [name] Name of third party extension.
  ThirdPartyExtension({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ThirdPartyExtension.fromMap(Map<String, dynamic> map) {
    return ThirdPartyExtension(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

