// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listServiceTestKeys.
class ListServiceTestKeysResult {
  /// Indicates whether the test endpoint feature enabled or not
  final bool? enabled;
  /// Primary key
  final String? primaryKey;
  /// Primary test endpoint
  final String? primaryTestEndpoint;
  /// Secondary key
  final String? secondaryKey;
  /// Secondary test endpoint
  final String? secondaryTestEndpoint;

  /// Creates a new [ListServiceTestKeysResult].
  /// [enabled] Indicates whether the test endpoint feature enabled or not
  /// [primaryKey] Primary key
  /// [primaryTestEndpoint] Primary test endpoint
  /// [secondaryKey] Secondary key
  /// [secondaryTestEndpoint] Secondary test endpoint
  ListServiceTestKeysResult({
    this.enabled,
    this.primaryKey,
    this.primaryTestEndpoint,
    this.secondaryKey,
    this.secondaryTestEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'primaryKey': ?primaryKey,
      'primaryTestEndpoint': ?primaryTestEndpoint,
      'secondaryKey': ?secondaryKey,
      'secondaryTestEndpoint': ?secondaryTestEndpoint,
    };
  }

  factory ListServiceTestKeysResult.fromMap(Map<String, dynamic> map) {
    return ListServiceTestKeysResult(
      enabled: map['enabled'] == null ? null : map['enabled']! as bool,
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey']! as String,
      primaryTestEndpoint: map['primaryTestEndpoint'] == null ? null : map['primaryTestEndpoint']! as String,
      secondaryKey: map['secondaryKey'] == null ? null : map['secondaryKey']! as String,
      secondaryTestEndpoint: map['secondaryTestEndpoint'] == null ? null : map['secondaryTestEndpoint']! as String,
    );
  }
}

