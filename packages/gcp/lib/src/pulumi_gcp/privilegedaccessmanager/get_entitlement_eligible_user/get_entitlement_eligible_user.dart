// ignore_for_file: unused_element, unnecessary_cast

class GetEntitlementEligibleUser {
  /// Users who are being allowed for the operation. Each entry should be a valid v1 IAM Principal Identifier. Format for these is documented at "https://cloud.google.com/iam/docs/principal-identifiers#v1"
  final List<String> principals;

  GetEntitlementEligibleUser({
    required this.principals,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['principals'] = principals;
    return map;
  }

  factory GetEntitlementEligibleUser.fromMap(Map<String, dynamic> map) {
    return GetEntitlementEligibleUser(
      principals: (map['principals'] as List).cast<String>(),
    );
  }
}
