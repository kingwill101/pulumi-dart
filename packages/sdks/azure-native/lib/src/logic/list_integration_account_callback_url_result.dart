// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listIntegrationAccountCallbackUrl.
class ListIntegrationAccountCallbackUrlResult {
  /// The URL value.
  final String? value;

  /// Creates a new [ListIntegrationAccountCallbackUrlResult].
  /// [value] The URL value.
  ListIntegrationAccountCallbackUrlResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ListIntegrationAccountCallbackUrlResult.fromMap(Map<String, dynamic> map) {
    return ListIntegrationAccountCallbackUrlResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

