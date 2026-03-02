// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudstoragegateway_gateway_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_cloudstoragegateway_gateway_gateway_args_doc}
class GatewayArgs {
  /// The description of the gateway.
  final pulumi.Input<String>? description;
  /// The specification of the gateway. Valid values: `Basic`, `Standard`, `Enhanced`, `Advanced`. **NOTE:** If `location` is set to `Cloud`, `gateway_class` is required. Otherwise, `gateway_class` will be ignored. If `payment_type` is set to `Subscription`, `gateway_class` cannot be modified.
  final pulumi.Input<String>? gatewayClass;
  /// The name of the gateway. The name must be `1` to `60` characters in length and can contain letters, digits, periods (.), underscores (_), and hyphens (-). It must start with a letter.
  final pulumi.Input<String> gatewayName;
  /// The location of the gateway. Valid values: `Cloud`, `On_Premise`.
  final pulumi.Input<String> location;
  final pulumi.Input<String>? paymentType;
  /// The public bandwidth of the gateway. Default value: `5`. Valid values: `5` to `200`. **NOTE:** `public_network_bandwidth` is only valid when `location` is `Cloud`. If `payment_type` is set to `Subscription`, `public_network_bandwidth` cannot be modified.
  final pulumi.Input<int>? publicNetworkBandwidth;
  /// The detailed reason why you want to delete the gateway.
  final pulumi.Input<String>? reasonDetail;
  /// The type of the reason why you want to delete the gateway.
  final pulumi.Input<String>? reasonType;
  /// Specifies whether to release the gateway after the subscription expires. Valid values:
  final pulumi.Input<bool>? releaseAfterExpiration;
  /// The ID of the gateway cluster.
  final pulumi.Input<String> storageBundleId;
  /// The type of the gateway. Valid values: `File`, `Iscsi`.
  final pulumi.Input<String> type;
  /// The ID of the VSwitch. **NOTE:** If `location` is set to `Cloud`, `vswitch_id` is required. Otherwise, `vswitch_id` will be ignored.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GatewayArgs].
  /// [description] The description of the gateway.
  /// [gatewayClass] The specification of the gateway. Valid values: `Basic`, `Standard`, `Enhanced`, `Advanced`. **NOTE:** If `location` is set to `Cloud`, `gateway_class` is required. Otherwise, `gateway_class` will be ignored. If `payment_type` is set to `Subscription`, `gateway_class` cannot be modified.
  /// [gatewayName] The name of the gateway. The name must be `1` to `60` characters in length and can contain letters, digits, periods (.), underscores (_), and hyphens (-). It must start with a letter.
  /// [location] The location of the gateway. Valid values: `Cloud`, `On_Premise`.
  /// [paymentType] Optional.
  /// [publicNetworkBandwidth] The public bandwidth of the gateway. Default value: `5`. Valid values: `5` to `200`. **NOTE:** `public_network_bandwidth` is only valid when `location` is `Cloud`. If `payment_type` is set to `Subscription`, `public_network_bandwidth` cannot be modified.
  /// [reasonDetail] The detailed reason why you want to delete the gateway.
  /// [reasonType] The type of the reason why you want to delete the gateway.
  /// [releaseAfterExpiration] Specifies whether to release the gateway after the subscription expires. Valid values:
  /// [storageBundleId] The ID of the gateway cluster.
  /// [type] The type of the gateway. Valid values: `File`, `Iscsi`.
  /// [vswitchId] The ID of the VSwitch. **NOTE:** If `location` is set to `Cloud`, `vswitch_id` is required. Otherwise, `vswitch_id` will be ignored.
  GatewayArgs({
    this.description,
    this.gatewayClass,
    required this.gatewayName,
    required this.location,
    this.paymentType,
    this.publicNetworkBandwidth,
    this.reasonDetail,
    this.reasonType,
    this.releaseAfterExpiration,
    required this.storageBundleId,
    required this.type,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gatewayClass': ?gatewayClass,
      'gatewayName': gatewayName,
      'location': location,
      'paymentType': ?paymentType,
      'publicNetworkBandwidth': ?publicNetworkBandwidth,
      'reasonDetail': ?reasonDetail,
      'reasonType': ?reasonType,
      'releaseAfterExpiration': ?releaseAfterExpiration,
      'storageBundleId': storageBundleId,
      'type': type,
      'vswitchId': ?vswitchId,
    };
  }

  factory GatewayArgs.fromMap(Map<String, dynamic> map) {
    return GatewayArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      gatewayClass: map['gatewayClass'] == null ? null : (map['gatewayClass'] as String).input(),
      gatewayName: (map['gatewayName'] as String).input(),
      location: (map['location'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      publicNetworkBandwidth: map['publicNetworkBandwidth'] == null ? null : (map['publicNetworkBandwidth'] as int).input(),
      reasonDetail: map['reasonDetail'] == null ? null : (map['reasonDetail'] as String).input(),
      reasonType: map['reasonType'] == null ? null : (map['reasonType'] as String).input(),
      releaseAfterExpiration: map['releaseAfterExpiration'] == null ? null : (map['releaseAfterExpiration'] as bool).input(),
      storageBundleId: (map['storageBundleId'] as String).input(),
      type: (map['type'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}

