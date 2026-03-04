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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gatewayClass: (() {
        final guardedValue = map['gatewayClass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gatewayName: pulumi.Input.fromValue(map['gatewayName'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicNetworkBandwidth: (() {
        final guardedValue = map['publicNetworkBandwidth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      reasonDetail: (() {
        final guardedValue = map['reasonDetail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reasonType: (() {
        final guardedValue = map['reasonType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      releaseAfterExpiration: (() {
        final guardedValue = map['releaseAfterExpiration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      storageBundleId: pulumi.Input.fromValue(map['storageBundleId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
