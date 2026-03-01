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
    pulumi.Output<String>? description,
    pulumi.Output<String>? gatewayClass,
    pulumi.Output<String>? gatewayName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? publicNetworkBandwidth,
    pulumi.Output<String>? reasonDetail,
    pulumi.Output<String>? reasonType,
    pulumi.Output<bool>? releaseAfterExpiration,
    pulumi.Output<String>? status,
    pulumi.Output<String>? storageBundleId,
    pulumi.Output<String>? type,
    pulumi.Output<String>? vswitchId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      gatewayClass = pulumi.Input.asOptionalInput<String>(gatewayClass),
      gatewayName = pulumi.Input.asOptionalInput<String>(gatewayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      publicNetworkBandwidth = pulumi.Input.asOptionalInput<int>(publicNetworkBandwidth),
      reasonDetail = pulumi.Input.asOptionalInput<String>(reasonDetail),
      reasonType = pulumi.Input.asOptionalInput<String>(reasonType),
      releaseAfterExpiration = pulumi.Input.asOptionalInput<bool>(releaseAfterExpiration),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageBundleId = pulumi.Input.asOptionalInput<String>(storageBundleId),
      type = pulumi.Input.asOptionalInput<String>(type),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      gatewayClass: map['gatewayClass'] == null ? null : pulumi.Output.create<String>(map['gatewayClass'] as String),
      gatewayName: map['gatewayName'] == null ? null : pulumi.Output.create<String>(map['gatewayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      publicNetworkBandwidth: map['publicNetworkBandwidth'] == null ? null : pulumi.Output.create<int>(map['publicNetworkBandwidth'] as int),
      reasonDetail: map['reasonDetail'] == null ? null : pulumi.Output.create<String>(map['reasonDetail'] as String),
      reasonType: map['reasonType'] == null ? null : pulumi.Output.create<String>(map['reasonType'] as String),
      releaseAfterExpiration: map['releaseAfterExpiration'] == null ? null : pulumi.Output.create<bool>(map['releaseAfterExpiration'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageBundleId: map['storageBundleId'] == null ? null : pulumi.Output.create<String>(map['storageBundleId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

