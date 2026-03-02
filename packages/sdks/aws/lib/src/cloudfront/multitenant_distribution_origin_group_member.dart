// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultitenantDistributionOriginGroupMember {
  final pulumi.Input<String> originId;

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
      originId: (map['originId'] as String).input(),
    );
  }
}

