// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionOriginGroupMember {
  final pulumi.Input<String> originId;

  /// Creates a new [DistributionOriginGroupMember].
  /// [originId] Required.
  DistributionOriginGroupMember({required this.originId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'originId': originId};
  }

  factory DistributionOriginGroupMember.fromMap(Map<String, dynamic> map) {
    return DistributionOriginGroupMember(
      originId: pulumi.Input.fromValue(map['originId'] as String),
    );
  }
}
