// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by listGatewayKeys.
class ListGatewayKeysResult {
  /// Primary gateway key.
  final String? primary;

  /// Secondary gateway key.
  final String? secondary;

  /// Creates a new [ListGatewayKeysResult].
  /// [primary] Primary gateway key.
  /// [secondary] Secondary gateway key.
  ListGatewayKeysResult({this.primary, this.secondary});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'primary': ?primary, 'secondary': ?secondary};
  }

  factory ListGatewayKeysResult.fromMap(Map<String, dynamic> map) {
    return ListGatewayKeysResult(
      primary: (() {
        final guardedValue = map['primary'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      secondary: (() {
        final guardedValue = map['secondary'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
