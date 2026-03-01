// ignore_for_file: unused_element, unnecessary_cast


class MultitenantDistributionOriginGroupMember {
  final String originId;

  /// Creates a new [MultitenantDistributionOriginGroupMember].
  /// [originId] Required.
  MultitenantDistributionOriginGroupMember({
    required this.originId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originId': originId,
    };
  }

  factory MultitenantDistributionOriginGroupMember.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionOriginGroupMember(
      originId: map['originId'] as String,
    );
  }
}

