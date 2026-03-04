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
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      primaryKey: (() {
        final guardedValue = map['primaryKey'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      primaryTestEndpoint: (() {
        final guardedValue = map['primaryTestEndpoint'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      secondaryKey: (() {
        final guardedValue = map['secondaryKey'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      secondaryTestEndpoint: (() {
        final guardedValue = map['secondaryTestEndpoint'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
