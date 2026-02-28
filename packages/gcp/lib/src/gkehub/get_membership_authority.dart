// ignore_for_file: unused_element, unnecessary_cast

class GetMembershipAuthority {
  final String issuer;

  /// Creates a new [GetMembershipAuthority].
  /// [issuer] Required.
  GetMembershipAuthority({
    required this.issuer,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['issuer'] = issuer;
    return map;
  }

  factory GetMembershipAuthority.fromMap(Map<String, dynamic> map) {
    return GetMembershipAuthority(
      issuer: map['issuer'] as String,
    );
  }
}
