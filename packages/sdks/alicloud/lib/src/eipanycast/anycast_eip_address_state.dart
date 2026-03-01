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
  AnycastEipAddressState({
    pulumi.Output<String>? anycastEipAddressName,
    pulumi.Output<int>? bandwidth,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? internetChargeType,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? serviceLocation,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      anycastEipAddressName = pulumi.Input.asOptionalInput<String>(anycastEipAddressName),
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      internetChargeType = pulumi.Input.asOptionalInput<String>(internetChargeType),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      serviceLocation = pulumi.Input.asOptionalInput<String>(serviceLocation),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      anycastEipAddressName: map['anycastEipAddressName'] == null ? null : pulumi.Output.create<String>(map['anycastEipAddressName'] as String),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      internetChargeType: map['internetChargeType'] == null ? null : pulumi.Output.create<String>(map['internetChargeType'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      serviceLocation: map['serviceLocation'] == null ? null : pulumi.Output.create<String>(map['serviceLocation'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

