// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_access_mode.dart';

/// Input properties used for looking up and filtering NatGateway resources.
class NatGatewayState {
  /// The access mode for reverse access to the VPC NAT gateway. See `access_mode` below.
  final pulumi.Input<NatGatewayAccessMode>? accessMode;
  /// Whether enable the deletion protection or not. Default value: `false`.
  /// - true: Enable deletion protection.
  /// - false: Disable deletion protection.
  final pulumi.Input<bool>? deletionProtection;
  /// Description of the nat gateway, This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Defaults to null.
  final pulumi.Input<String>? description;
  /// Specifies whether to only precheck this request. Default value: `false`.
  final pulumi.Input<bool>? dryRun;
  /// The EIP binding mode of the NAT gateway. Default value: `MULTI_BINDED`. Valid values:
  /// - `MULTI_BINDED`: Multi EIP network card visible mode.
  /// - `NAT`: EIP normal mode, compatible with IPv4 gateway.
  final pulumi.Input<String>? eipBindMode;
  /// Specifies whether to forcefully delete the NAT gateway.
  final pulumi.Input<bool>? force;
  /// The nat gateway will auto create a forward item.
  final pulumi.Input<String>? forwardTableIds;
  /// Specifies whether to enable ICMP retrieval. Default value: `true`. Valid values:
  final pulumi.Input<bool>? icmpReplyEnabled;
  /// Field `instance_charge_type` has been deprecated from provider version 1.121.0. New field `payment_type` instead.
  final pulumi.Input<String>? instanceChargeType;
  /// The internet charge type. Valid values `PayByLcu`. The `PayByLcu` is only support enhanced NAT. **NOTE:** From version 1.137.0, `internet_charge_type` cannot be set to `PayBySpec`.
  final pulumi.Input<String>? internetChargeType;
  /// Field `name` has been deprecated from provider version 1.121.0. New field `nat_gateway_name` instead.
  final pulumi.Input<String>? name;
  /// Name of the nat gateway. The value can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin or end with a hyphen, and must not begin with http:// or https://. Defaults to null.
  final pulumi.Input<String>? natGatewayName;
  /// The type of NAT gateway. Valid values: `Enhanced`. **NOTE:** From version 1.137.0, `nat_type` cannot be set to `Normal`.
  final pulumi.Input<String>? natType;
  /// Indicates the type of the created NAT gateway. Valid values `internet` and `intranet`. `internet`: Internet NAT Gateway. `intranet`: VPC NAT Gateway.
  final pulumi.Input<String>? networkType;
  /// The billing method of the NAT gateway. Valid values are `PayAsYouGo`. Default to `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;
  /// The duration that you will buy the resource, in month. It is valid when `payment_type` is `Subscription`. Valid values: [1-9, 12, 24, 36]. At present, the provider does not support modify "period" and you can do that via web console. **NOTE:** International station only supports `Subscription`.
  /// &gt; **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  final pulumi.Input<int>? period;
  /// Specifies whether to enable PrivateLink. Default value: `false`. Valid values:
  final pulumi.Input<bool>? privateLinkEnabled;
  /// The nat gateway will auto create a snat item.
  final pulumi.Input<String>? snatTableIds;
  /// The specification of the nat gateway. Valid values are `Small`, `Middle` and `Large`. Effective when `internet_charge_type` is `PayBySpec` and `network_type` is `internet`. Details refer to [Nat Gateway Specification](https://help.aliyun.com/document_detail/203500.html).
  final pulumi.Input<String>? specification;
  /// (Available since v1.121.0) The status of NAT gateway.
  final pulumi.Input<String>? status;
  /// The tags of NAT gateway.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC ID.
  final pulumi.Input<String>? vpcId;
  /// The id of VSwitch.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [NatGatewayState].
  /// [accessMode] The access mode for reverse access to the VPC NAT gateway. See `access_mode` below.
  /// [deletionProtection] Whether enable the deletion protection or not. Default value: `false`.
  /// [description] Description of the nat gateway, This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Defaults to null.
  /// [dryRun] Specifies whether to only precheck this request. Default value: `false`.
  /// [eipBindMode] The EIP binding mode of the NAT gateway. Default value: `MULTI_BINDED`. Valid values:
  /// [force] Specifies whether to forcefully delete the NAT gateway.
  /// [forwardTableIds] The nat gateway will auto create a forward item.
  /// [icmpReplyEnabled] Specifies whether to enable ICMP retrieval. Default value: `true`. Valid values:
  /// [instanceChargeType] Field `instance_charge_type` has been deprecated from provider version 1.121.0. New field `payment_type` instead.
  /// [internetChargeType] The internet charge type. Valid values `PayByLcu`. The `PayByLcu` is only support enhanced NAT. **NOTE:** From version 1.137.0, `internet_charge_type` cannot be set to `PayBySpec`.
  /// [name] Field `name` has been deprecated from provider version 1.121.0. New field `nat_gateway_name` instead.
  /// [natGatewayName] Name of the nat gateway. The value can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin or end with a hyphen, and must not begin with http:// or https://. Defaults to null.
  /// [natType] The type of NAT gateway. Valid values: `Enhanced`. **NOTE:** From version 1.137.0, `nat_type` cannot be set to `Normal`.
  /// [networkType] Indicates the type of the created NAT gateway. Valid values `internet` and `intranet`. `internet`: Internet NAT Gateway. `intranet`: VPC NAT Gateway.
  /// [paymentType] The billing method of the NAT gateway. Valid values are `PayAsYouGo`. Default to `PayAsYouGo`.
  /// [period] The duration that you will buy the resource, in month. It is valid when `payment_type` is `Subscription`. Valid values: [1-9, 12, 24, 36]. At present, the provider does not support modify "period" and you can do that via web console. **NOTE:** International station only supports `Subscription`.
  /// [privateLinkEnabled] Specifies whether to enable PrivateLink. Default value: `false`. Valid values:
  /// [snatTableIds] The nat gateway will auto create a snat item.
  /// [specification] The specification of the nat gateway. Valid values are `Small`, `Middle` and `Large`. Effective when `internet_charge_type` is `PayBySpec` and `network_type` is `internet`. Details refer to [Nat Gateway Specification](https://help.aliyun.com/document_detail/203500.html).
  /// [status] (Available since v1.121.0) The status of NAT gateway.
  /// [tags] The tags of NAT gateway.
  /// [vpcId] The VPC ID.
  /// [vswitchId] The id of VSwitch.
  NatGatewayState({
    this.accessMode,
    this.deletionProtection,
    this.description,
    this.dryRun,
    this.eipBindMode,
    this.force,
    this.forwardTableIds,
    this.icmpReplyEnabled,
    this.instanceChargeType,
    this.internetChargeType,
    this.name,
    this.natGatewayName,
    this.natType,
    this.networkType,
    this.paymentType,
    this.period,
    this.privateLinkEnabled,
    this.snatTableIds,
    this.specification,
    this.status,
    this.tags,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?pulumi.Input.mapOptionalInputValue<NatGatewayAccessMode, Map<String, dynamic>>(accessMode, (value) => value.toMap()),
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'dryRun': ?dryRun,
      'eipBindMode': ?eipBindMode,
      'force': ?force,
      'forwardTableIds': ?forwardTableIds,
      'icmpReplyEnabled': ?icmpReplyEnabled,
      'instanceChargeType': ?instanceChargeType,
      'internetChargeType': ?internetChargeType,
      'name': ?name,
      'natGatewayName': ?natGatewayName,
      'natType': ?natType,
      'networkType': ?networkType,
      'paymentType': ?paymentType,
      'period': ?period,
      'privateLinkEnabled': ?privateLinkEnabled,
      'snatTableIds': ?snatTableIds,
      'specification': ?specification,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory NatGatewayState.fromMap(Map<String, dynamic> map) {
    return NatGatewayState(
      accessMode: (() { final guardedValue = map['accessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NatGatewayAccessMode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eipBindMode: (() { final guardedValue = map['eipBindMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forwardTableIds: (() { final guardedValue = map['forwardTableIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      icmpReplyEnabled: (() { final guardedValue = map['icmpReplyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceChargeType: (() { final guardedValue = map['instanceChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetChargeType: (() { final guardedValue = map['internetChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natGatewayName: (() { final guardedValue = map['natGatewayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natType: (() { final guardedValue = map['natType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      privateLinkEnabled: (() { final guardedValue = map['privateLinkEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      snatTableIds: (() { final guardedValue = map['snatTableIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

