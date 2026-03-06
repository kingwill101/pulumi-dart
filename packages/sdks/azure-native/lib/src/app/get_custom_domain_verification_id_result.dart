// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCustomDomainVerificationId.
class GetCustomDomainVerificationIdResult {
  final String? value;

  /// Creates a new [GetCustomDomainVerificationIdResult].
  /// [value] Optional.
  const GetCustomDomainVerificationIdResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GetCustomDomainVerificationIdResult.fromMap(Map<String, dynamic> map) {
    return GetCustomDomainVerificationIdResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

