// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplatePlacement {
  final pulumi.Input<String> affinity;
  final pulumi.Input<String> availabilityZone;
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> groupName;
  final pulumi.Input<String> hostId;
  final pulumi.Input<String> hostResourceGroupArn;
  final pulumi.Input<int> partitionNumber;
  final pulumi.Input<String> spreadDomain;
  final pulumi.Input<String> tenancy;

  /// Creates a new [GetLaunchTemplatePlacement].
  /// [affinity] Required.
  /// [availabilityZone] Required.
  /// [groupId] Required.
  /// [groupName] Required.
  /// [hostId] Required.
  /// [hostResourceGroupArn] Required.
  /// [partitionNumber] Required.
  /// [spreadDomain] Required.
  /// [tenancy] Required.
  GetLaunchTemplatePlacement({
    required this.affinity,
    required this.availabilityZone,
    required this.groupId,
    required this.groupName,
    required this.hostId,
    required this.hostResourceGroupArn,
    required this.partitionNumber,
    required this.spreadDomain,
    required this.tenancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinity': affinity,
      'availabilityZone': availabilityZone,
      'groupId': groupId,
      'groupName': groupName,
      'hostId': hostId,
      'hostResourceGroupArn': hostResourceGroupArn,
      'partitionNumber': partitionNumber,
      'spreadDomain': spreadDomain,
      'tenancy': tenancy,
    };
  }

  factory GetLaunchTemplatePlacement.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplatePlacement(
      affinity: (map['affinity'] as String).input(),
      availabilityZone: (map['availabilityZone'] as String).input(),
      groupId: (map['groupId'] as String).input(),
      groupName: (map['groupName'] as String).input(),
      hostId: (map['hostId'] as String).input(),
      hostResourceGroupArn: (map['hostResourceGroupArn'] as String).input(),
      partitionNumber: (map['partitionNumber'] as int).input(),
      spreadDomain: (map['spreadDomain'] as String).input(),
      tenancy: (map['tenancy'] as String).input(),
    );
  }
}

