// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionOriginGroupMember {
  final String originId;

  /// Creates a new [MultitenantDistributionOriginGroupMember].
  /// [originId] Required.
  MultitenantDistributionOriginGroupMember({
    required this.originId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['originId'] = originId;
    return map;
  }

  factory MultitenantDistributionOriginGroupMember.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionOriginGroupMember(
      originId: map['originId'] as String,
    );
  }
}
