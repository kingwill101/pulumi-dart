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
      affinity: pulumi.Input.fromValue(map['affinity'] as String),
      availabilityZone: pulumi.Input.fromValue(map['availabilityZone'] as String),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      hostId: pulumi.Input.fromValue(map['hostId'] as String),
      hostResourceGroupArn: pulumi.Input.fromValue(map['hostResourceGroupArn'] as String),
      partitionNumber: pulumi.Input.fromValue(map['partitionNumber'] as int),
      spreadDomain: pulumi.Input.fromValue(map['spreadDomain'] as String),
      tenancy: pulumi.Input.fromValue(map['tenancy'] as String),
    );
  }
}

