// ignore_for_file: unused_element, unnecessary_cast

class CryptoKeyPrimary {
  /// The resource name for the CryptoKey.
  final String? name;

  /// (Output)
  /// The current state of the CryptoKeyVersion.
  final String? state;

  CryptoKeyPrimary({
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory CryptoKeyPrimary.fromMap(Map<String, dynamic> map) {
    return CryptoKeyPrimary(
      name: map['name'] == null ? null : map['name'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
