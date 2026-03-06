// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AnycastEipAddress resources.
class AnycastEipAddressState {
  /// Anycast EIP instance name.
  final pulumi.Input<String>? anycastEipAddressName;
  /// The peak bandwidth of the Anycast EIP instance, in Mbps.
  final pulumi.Input<int>? bandwidth;
  /// Anycast EIP instance creation time.
  final pulumi.Input<String>? createTime;
  /// Anycast EIP instance description
  final pulumi.Input<String>? description;
  /// The billing method of Anycast EIP instance. "PayByBandwidth": refers to the method of billing based on traffic.
  final pulumi.Input<String>? internetChargeType;
  /// The payment model of Anycast EIP instance. "PayAsYouGo": Refers to the post-paid mode
  final pulumi.Input<String>? paymentType;
  /// The ID of the resource group to which the instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// Anycast EIP instance access area. "international": Refers to areas outside of Mainland China.
  final pulumi.Input<String>? serviceLocation;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// List of resource-bound tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AnycastEipAddressState].
  /// [anycastEipAddressName] Anycast EIP instance name.
  /// [bandwidth] The peak bandwidth of the Anycast EIP instance, in Mbps.
  /// [createTime] Anycast EIP instance creation time.
  /// [description] Anycast EIP instance description
  /// [internetChargeType] The billing method of Anycast EIP instance. "PayByBandwidth": refers to the method of billing based on traffic.
  /// [paymentType] The payment model of Anycast EIP instance. "PayAsYouGo": Refers to the post-paid mode
  /// [resourceGroupId] The ID of the resource group to which the instance belongs.
  /// [serviceLocation] Anycast EIP instance access area. "international": Refers to areas outside of Mainland China.
  /// [status] The status of the resource.
  /// [tags] List of resource-bound tags.
  const AnycastEipAddressState({
    this.anycastEipAddressName,
    this.bandwidth,
    this.createTime,
    this.description,
    this.internetChargeType,
    this.paymentType,
    this.resourceGroupId,
    this.serviceLocation,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anycastEipAddressName': ?anycastEipAddressName,
      'bandwidth': ?bandwidth,
      'createTime': ?createTime,
      'description': ?description,
      'internetChargeType': ?internetChargeType,
      'paymentType': ?paymentType,
      'resourceGroupId': ?resourceGroupId,
      'serviceLocation': ?serviceLocation,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory AnycastEipAddressState.fromMap(Map<String, dynamic> map) {
    return AnycastEipAddressState(
      anycastEipAddressName: (() { final guardedValue = map['anycastEipAddressName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetChargeType: (() { final guardedValue = map['internetChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceLocation: (() { final guardedValue = map['serviceLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

