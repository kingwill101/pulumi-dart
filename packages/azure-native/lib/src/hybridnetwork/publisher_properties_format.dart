// ignore_for_file: unused_element, unnecessary_cast


/// publisher properties.
class PublisherPropertiesFormat {
  /// The publisher scope.
  final String? scope;

  /// Creates a new [PublisherPropertiesFormat].
  /// [scope] The publisher scope.
  PublisherPropertiesFormat({
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
    };
  }

  factory PublisherPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return PublisherPropertiesFormat(
      scope: map['scope'] == null ? null : map['scope'] as String,
    );
  }
}

