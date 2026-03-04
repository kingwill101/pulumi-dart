// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eipanycast_anycast_eip_address_anycast_eip_address_args_doc}
/// The set of arguments for AnycastEipAddress.
/// {@endtemplate}
/// {@macro pulumi_eipanycast_anycast_eip_address_anycast_eip_address_args_doc}
class AnycastEipAddressArgs {
  /// Anycast EIP instance name.
  final pulumi.Input<String>? anycastEipAddressName;

  /// The peak bandwidth of the Anycast EIP instance, in Mbps.
  final pulumi.Input<int>? bandwidth;

  /// Anycast EIP instance description
  final pulumi.Input<String>? description;

  /// The billing method of Anycast EIP instance. "PayByBandwidth": refers to the method of billing based on traffic.
  final pulumi.Input<String>? internetChargeType;

  /// The payment model of Anycast EIP instance. "PayAsYouGo": Refers to the post-paid mode
  final pulumi.Input<String>? paymentType;

  /// The ID of the resource group to which the instance belongs.
  final pulumi.Input<String>? resourceGroupId;

  /// Anycast EIP instance access area. "international": Refers to areas outside of Mainland China.
  final pulumi.Input<String> serviceLocation;

  /// List of resource-bound tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AnycastEipAddressArgs].
  /// [anycastEipAddressName] Anycast EIP instance name.
  /// [bandwidth] The peak bandwidth of the Anycast EIP instance, in Mbps.
  /// [description] Anycast EIP instance description
  /// [internetChargeType] The billing method of Anycast EIP instance. "PayByBandwidth": refers to the method of billing based on traffic.
  /// [paymentType] The payment model of Anycast EIP instance. "PayAsYouGo": Refers to the post-paid mode
  /// [resourceGroupId] The ID of the resource group to which the instance belongs.
  /// [serviceLocation] Anycast EIP instance access area. "international": Refers to areas outside of Mainland China.
  /// [tags] List of resource-bound tags.
  AnycastEipAddressArgs({
    this.anycastEipAddressName,
    this.bandwidth,
    this.description,
    this.internetChargeType,
    this.paymentType,
    this.resourceGroupId,
    required this.serviceLocation,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anycastEipAddressName': ?anycastEipAddressName,
      'bandwidth': ?bandwidth,
      'description': ?description,
      'internetChargeType': ?internetChargeType,
      'paymentType': ?paymentType,
      'resourceGroupId': ?resourceGroupId,
      'serviceLocation': serviceLocation,
      'tags': ?tags,
    };
  }

  factory AnycastEipAddressArgs.fromMap(Map<String, dynamic> map) {
    return AnycastEipAddressArgs(
      anycastEipAddressName: (() {
        final guardedValue = map['anycastEipAddressName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bandwidth: (() {
        final guardedValue = map['bandwidth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      internetChargeType: (() {
        final guardedValue = map['internetChargeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceLocation: pulumi.Input.fromValue(map['serviceLocation'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
