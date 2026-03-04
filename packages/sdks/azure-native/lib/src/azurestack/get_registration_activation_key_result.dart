// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRegistrationActivationKey.
class GetRegistrationActivationKeyResult {
  /// Azure Stack activation key.
  final String? activationKey;

  /// Creates a new [GetRegistrationActivationKeyResult].
  /// [activationKey] Azure Stack activation key.
  GetRegistrationActivationKeyResult({this.activationKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'activationKey': ?activationKey};
  }

  factory GetRegistrationActivationKeyResult.fromMap(Map<String, dynamic> map) {
    return GetRegistrationActivationKeyResult(
      activationKey: (() {
        final guardedValue = map['activationKey'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
