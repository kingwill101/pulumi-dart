// ignore_for_file: unused_element, unnecessary_cast


/// The integration account partner's business identity.
class BusinessIdentityResponse {
  /// The business identity qualifier e.g. as2identity, ZZ, ZZZ, 31, 32
  final String qualifier;
  /// The user defined business identity value.
  final String value;

  /// Creates a new [BusinessIdentityResponse].
  /// [qualifier] The business identity qualifier e.g. as2identity, ZZ, ZZZ, 31, 32
  /// [value] The user defined business identity value.
  BusinessIdentityResponse({
    required this.qualifier,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qualifier': qualifier,
      'value': value,
    };
  }

  factory BusinessIdentityResponse.fromMap(Map<String, dynamic> map) {
    return BusinessIdentityResponse(
      qualifier: map['qualifier'] as String,
      value: map['value'] as String,
    );
  }
}

