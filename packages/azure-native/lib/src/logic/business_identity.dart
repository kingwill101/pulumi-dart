// ignore_for_file: unused_element, unnecessary_cast


/// The integration account partner's business identity.
class BusinessIdentity {
  /// The business identity qualifier e.g. as2identity, ZZ, ZZZ, 31, 32
  final String qualifier;
  /// The user defined business identity value.
  final String value;

  /// Creates a new [BusinessIdentity].
  /// [qualifier] The business identity qualifier e.g. as2identity, ZZ, ZZZ, 31, 32
  /// [value] The user defined business identity value.
  BusinessIdentity({
    required this.qualifier,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qualifier': qualifier,
      'value': value,
    };
  }

  factory BusinessIdentity.fromMap(Map<String, dynamic> map) {
    return BusinessIdentity(
      qualifier: map['qualifier'] as String,
      value: map['value'] as String,
    );
  }
}

