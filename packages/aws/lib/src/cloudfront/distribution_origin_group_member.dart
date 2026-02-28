// ignore_for_file: unused_element, unnecessary_cast

class DistributionOriginGroupMember {
  final String originId;

  /// Creates a new [DistributionOriginGroupMember].
  /// [originId] Required.
  DistributionOriginGroupMember({
    required this.originId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['originId'] = originId;
    return map;
  }

  factory DistributionOriginGroupMember.fromMap(Map<String, dynamic> map) {
    return DistributionOriginGroupMember(
      originId: map['originId'] as String,
    );
  }
}
