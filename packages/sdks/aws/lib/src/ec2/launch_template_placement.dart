// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplatePlacement {
  /// The affinity setting for an instance on a Dedicated Host.
  final pulumi.Input<String>? affinity;

  /// The Availability Zone for the instance.
  final pulumi.Input<String>? availabilityZone;

  /// The ID of the placement group for the instance. Conflicts with `group_name`.
  final pulumi.Input<String>? groupId;

  /// The name of the placement group for the instance. Conflicts with `group_id`.
  final pulumi.Input<String>? groupName;

  /// The ID of the Dedicated Host for the instance.
  final pulumi.Input<String>? hostId;

  /// The ARN of the Host Resource Group in which to launch instances.
  final pulumi.Input<String>? hostResourceGroupArn;

  /// The number of the partition the instance should launch in. Valid only if the placement group strategy is set to partition.
  final pulumi.Input<int>? partitionNumber;

  /// Reserved for future use.
  final pulumi.Input<String>? spreadDomain;

  /// The tenancy of the instance (if the instance is running in a VPC). Can be `default`, `dedicated`, or `host`.
  final pulumi.Input<String>? tenancy;

  /// Creates a new [LaunchTemplatePlacement].
  /// [affinity] The affinity setting for an instance on a Dedicated Host.
  /// [availabilityZone] The Availability Zone for the instance.
  /// [groupId] The ID of the placement group for the instance. Conflicts with `group_name`.
  /// [groupName] The name of the placement group for the instance. Conflicts with `group_id`.
  /// [hostId] The ID of the Dedicated Host for the instance.
  /// [hostResourceGroupArn] The ARN of the Host Resource Group in which to launch instances.
  /// [partitionNumber] The number of the partition the instance should launch in. Valid only if the placement group strategy is set to partition.
  /// [spreadDomain] Reserved for future use.
  /// [tenancy] The tenancy of the instance (if the instance is running in a VPC). Can be `default`, `dedicated`, or `host`.
  LaunchTemplatePlacement({
    this.affinity,
    this.availabilityZone,
    this.groupId,
    this.groupName,
    this.hostId,
    this.hostResourceGroupArn,
    this.partitionNumber,
    this.spreadDomain,
    this.tenancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinity': ?affinity,
      'availabilityZone': ?availabilityZone,
      'groupId': ?groupId,
      'groupName': ?groupName,
      'hostId': ?hostId,
      'hostResourceGroupArn': ?hostResourceGroupArn,
      'partitionNumber': ?partitionNumber,
      'spreadDomain': ?spreadDomain,
      'tenancy': ?tenancy,
    };
  }

  factory LaunchTemplatePlacement.fromMap(Map<String, dynamic> map) {
    return LaunchTemplatePlacement(
      affinity: (() {
        final guardedValue = map['affinity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupName: (() {
        final guardedValue = map['groupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostId: (() {
        final guardedValue = map['hostId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostResourceGroupArn: (() {
        final guardedValue = map['hostResourceGroupArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      partitionNumber: (() {
        final guardedValue = map['partitionNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      spreadDomain: (() {
        final guardedValue = map['spreadDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenancy: (() {
        final guardedValue = map['tenancy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
