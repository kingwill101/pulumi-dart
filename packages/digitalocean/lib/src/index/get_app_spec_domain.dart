// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecDomain {
  /// The name of the component.
  final String name;
  /// The type of the environment variable, `GENERAL` or `SECRET`.
  final String type;
  /// Indicates whether the domain includes all sub-domains, in addition to the given domain.
  final bool wildcard;
  /// If the domain uses DigitalOcean DNS and you would like App Platform to automatically manage it for you, set this to the name of the domain on your account.
  final String? zone;

  /// Creates a new [GetAppSpecDomain].
  /// [name] The name of the component.
  /// [type] The type of the environment variable, `GENERAL` or `SECRET`.
  /// [wildcard] Indicates whether the domain includes all sub-domains, in addition to the given domain.
  /// [zone] If the domain uses DigitalOcean DNS and you would like App Platform to automatically manage it for you, set this to the name of the domain on your account.
  GetAppSpecDomain({
    required this.name,
    required this.type,
    required this.wildcard,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
      'wildcard': wildcard,
      'zone': ?zone,
    };
  }

  factory GetAppSpecDomain.fromMap(Map<String, dynamic> map) {
    return GetAppSpecDomain(
      name: map['name'] as String,
      type: map['type'] as String,
      wildcard: map['wildcard'] as bool,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

