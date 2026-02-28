// ignore_for_file: unused_element, unnecessary_cast

class MembershipAuthority {
  final String issuer;

  /// Creates a new [MembershipAuthority].
  /// [issuer] Required.
  MembershipAuthority({
    required this.issuer,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['issuer'] = issuer;
    return map;
  }

  factory MembershipAuthority.fromMap(Map<String, dynamic> map) {
    return MembershipAuthority(
      issuer: map['issuer'] as String,
    );
  }
}
