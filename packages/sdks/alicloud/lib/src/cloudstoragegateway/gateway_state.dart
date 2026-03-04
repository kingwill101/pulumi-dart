// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Gateway resources.
class GatewayState {
  /// The description of the gateway.
  final pulumi.Input<String>? description;

  /// The specification of the gateway. Valid values: `Basic`, `Standard`, `Enhanced`, `Advanced`. **NOTE:** If `location` is set to `Cloud`, `gateway_class` is required. Otherwise, `gateway_class` will be ignored. If `payment_type` is set to `Subscription`, `gateway_class` cannot be modified.
  final pulumi.Input<String>? gatewayClass;

  /// The name of the gateway. The name must be `1` to `60` characters in length and can contain letters, digits, periods (.), underscores (_), and hyphens (-). It must start with a letter.
  final pulumi.Input<String>? gatewayName;

  /// The location of the gateway. Valid values: `Cloud`, `On_Premise`.
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? paymentType;

  /// The public bandwidth of the gateway. Default value: `5`. Valid values: `5` to `200`. **NOTE:** `public_network_bandwidth` is only valid when `location` is `Cloud`. If `payment_type` is set to `Subscription`, `public_network_bandwidth` cannot be modified.
  final pulumi.Input<int>? publicNetworkBandwidth;

  /// The detailed reason why you want to delete the gateway.
  final pulumi.Input<String>? reasonDetail;

  /// The type of the reason why you want to delete the gateway.
  final pulumi.Input<String>? reasonType;

  /// Specifies whether to release the gateway after the subscription expires. Valid values:
  final pulumi.Input<bool>? releaseAfterExpiration;

  /// The status of the Gateway.
  final pulumi.Input<String>? status;

  /// The ID of the gateway cluster.
  final pulumi.Input<String>? storageBundleId;

  /// The type of the gateway. Valid values: `File`, `Iscsi`.
  final pulumi.Input<String>? type;

  /// The ID of the VSwitch. **NOTE:** If `location` is set to `Cloud`, `vswitch_id` is required. Otherwise, `vswitch_id` will be ignored.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GatewayState].
  /// [description] The description of the gateway.
  /// [gatewayClass] The specification of the gateway. Valid values: `Basic`, `Standard`, `Enhanced`, `Advanced`. **NOTE:** If `location` is set to `Cloud`, `gateway_class` is required. Otherwise, `gateway_class` will be ignored. If `payment_type` is set to `Subscription`, `gateway_class` cannot be modified.
  /// [gatewayName] The name of the gateway. The name must be `1` to `60` characters in length and can contain letters, digits, periods (.), underscores (_), and hyphens (-). It must start with a letter.
  /// [location] The location of the gateway. Valid values: `Cloud`, `On_Premise`.
  /// [paymentType] Optional.
  /// [publicNetworkBandwidth] The public bandwidth of the gateway. Default value: `5`. Valid values: `5` to `200`. **NOTE:** `public_network_bandwidth` is only valid when `location` is `Cloud`. If `payment_type` is set to `Subscription`, `public_network_bandwidth` cannot be modified.
  /// [reasonDetail] The detailed reason why you want to delete the gateway.
  /// [reasonType] The type of the reason why you want to delete the gateway.
  /// [releaseAfterExpiration] Specifies whether to release the gateway after the subscription expires. Valid values:
  /// [status] The status of the Gateway.
  /// [storageBundleId] The ID of the gateway cluster.
  /// [type] The type of the gateway. Valid values: `File`, `Iscsi`.
  /// [vswitchId] The ID of the VSwitch. **NOTE:** If `location` is set to `Cloud`, `vswitch_id` is required. Otherwise, `vswitch_id` will be ignored.
  GatewayState({
    this.description,
    this.gatewayClass,
    this.gatewayName,
    this.location,
    this.paymentType,
    this.publicNetworkBandwidth,
    this.reasonDetail,
    this.reasonType,
    this.releaseAfterExpiration,
    this.status,
    this.storageBundleId,
    this.type,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gatewayClass': ?gatewayClass,
      'gatewayName': ?gatewayName,
      'location': ?location,
      'paymentType': ?paymentType,
      'publicNetworkBandwidth': ?publicNetworkBandwidth,
      'reasonDetail': ?reasonDetail,
      'reasonType': ?reasonType,
      'releaseAfterExpiration': ?releaseAfterExpiration,
      'status': ?status,
      'storageBundleId': ?storageBundleId,
      'type': ?type,
      'vswitchId': ?vswitchId,
    };
  }

  factory GatewayState.fromMap(Map<String, dynamic> map) {
    return GatewayState(
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
      gatewayName: (() {
        final guardedValue = map['gatewayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageBundleId: (() {
        final guardedValue = map['storageBundleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
