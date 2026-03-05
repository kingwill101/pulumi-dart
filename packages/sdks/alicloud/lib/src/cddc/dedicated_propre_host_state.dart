// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_propre_host_ecs_class_list.dart';

/// Input properties used for looking up and filtering DedicatedPropreHost resources.
class DedicatedPropreHostState {
  /// Whether to pay automatically when the host is created.
  final pulumi.Input<bool>? autoPay;
  /// Whether to enable automatic renewal. Valid values:
  /// - **true**: On
  /// - **false** (default): Off
  final pulumi.Input<String>? autoRenew;
  /// You have a dedicated cluster ID.
  final pulumi.Input<String>? dedicatedHostGroupId;
  /// ECS specifications. See `ecs_class_list` below.
  final pulumi.Input<List<DedicatedPropreHostEcsClassList>>? ecsClassLists;
  /// The ID of the cloud server deployment set.
  final pulumi.Input<String>? ecsDeploymentSetId;
  /// Windows system: length of 2 to 15 characters, allowing the use of upper and lower case letters, numbers. You cannot use only numbers. Other operating systems (such as Linux): the length of 2 to 64 characters, allowing the use of dot (.) to separate characters into multiple segments, each segment allows the use of upper and lower case letters, numbers, but can not use continuous dot (.). Cannot start or end with a dot (.).
  final pulumi.Input<String>? ecsHostName;
  /// ECS instance ID.
  final pulumi.Input<String>? ecsInstanceId;
  /// The instance name. It must be 2 to 128 characters in length and must start with an uppercase or lowercase letter or a Chinese character. It cannot start with http:// or https. Can contain Chinese, English, numbers, half-width colons (:), underscores (_), half-width periods (.), or dashes (-). The default value is the InstanceId of the instance.
  final pulumi.Input<String>? ecsInstanceName;
  /// Whether to automatically add an ordered suffix for HostName and InstanceName when creating multiple instances. The ordered suffix starts from 001 and cannot exceed 999. Value Description:
  /// - **true**: added.
  /// - **false** (default): Do not add.
  /// When the HostName or InstanceName is set according to the specified sorting format, and the naming suffix name_suffix is not set, that is, when the naming format is name_prefix[begin_number,bits], the UniqueSuffix does not take effect, and the names are only sorted according to the specified order.
  final pulumi.Input<String>? ecsUniqueSuffix;
  /// The ID of the zone.
  final pulumi.Input<String>? ecsZoneId;
  /// Database type, value:
  /// - **alisql**
  /// - **tair**
  /// - **mssql**
  /// Must be consistent with the parent resource cluster engine attributes.
  final pulumi.Input<String>? engine;
  /// The ID of the custom image.
  /// &gt; **NOTE:**  If you need to use the default image, you do not need to fill it in.
  final pulumi.Input<String>? imageId;
  /// Network billing type. Value range: PayByBandwidth: Billing based on fixed bandwidth. PayByTraffic: charges by using the flow meter.
  final pulumi.Input<String>? internetChargeType;
  /// The maximum outbound bandwidth of the public network, in Mbit/s. Value range: 0~100.  Default value: 0. When set to greater than 0, a public IP is automatically created.
  final pulumi.Input<int>? internetMaxBandwidthOut;
  /// The key pair name.
  final pulumi.Input<String>? keyPairName;
  /// Host login password, which can be set later. The password must meet the following requirements:
  /// - Length is 8~30 characters.
  /// - Must contain at least three items: uppercase letters, lowercase letters, numbers, and special characters.
  /// - Special symbol '()\' ~! @#$%^& *-_+ =|{}[]:;',.? /'
  /// &gt; **NOTE:** - If you need to set the host login password later, fill in an empty string for this parameter. If you need to set a host login password, we recommend that you use the HTTPS protocol to send requests to avoid password leakage.
  final pulumi.Input<String>? osPassword;
  /// Whether to use the default password of the image.
  /// - **false**: (default)Do not use
  /// - **true**: Use
  /// &gt; **NOTE:**  If the default password of the image is used, the **OSPassword** parameter is not required.
  final pulumi.Input<String>? passwordInherit;
  /// The Payment type. Currently, only **Subscription** is supported.
  final pulumi.Input<String>? paymentType;
  /// Duration of purchase.
  final pulumi.Input<String>? period;
  /// The subscription type. Currently, only **Monthly** (subscription) is supported.
  final pulumi.Input<String>? periodType;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The ID of the security group.
  final pulumi.Input<String>? securityGroupId;
  /// Host tag information.
  final pulumi.Input<Map<String, String>>? tags;
  /// User-defined script data. The maximum size of the original data is 16kB.
  final pulumi.Input<String>? userData;
  /// Whether custom data is encoded in Base64 format.
  final pulumi.Input<bool>? userDataEncoded;
  /// VPCID of the VPC.
  final pulumi.Input<String>? vpcId;
  /// The ID of the virtual switch.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [DedicatedPropreHostState].
  /// [autoPay] Whether to pay automatically when the host is created.
  /// [autoRenew] Whether to enable automatic renewal. Valid values:
  /// [dedicatedHostGroupId] You have a dedicated cluster ID.
  /// [ecsClassLists] ECS specifications. See `ecs_class_list` below.
  /// [ecsDeploymentSetId] The ID of the cloud server deployment set.
  /// [ecsHostName] Windows system: length of 2 to 15 characters, allowing the use of upper and lower case letters, numbers. You cannot use only numbers. Other operating systems (such as Linux): the length of 2 to 64 characters, allowing the use of dot (.) to separate characters into multiple segments, each segment allows the use of upper and lower case letters, numbers, but can not use continuous dot (.). Cannot start or end with a dot (.).
  /// [ecsInstanceId] ECS instance ID.
  /// [ecsInstanceName] The instance name. It must be 2 to 128 characters in length and must start with an uppercase or lowercase letter or a Chinese character. It cannot start with http:// or https. Can contain Chinese, English, numbers, half-width colons (:), underscores (_), half-width periods (.), or dashes (-). The default value is the InstanceId of the instance.
  /// [ecsUniqueSuffix] Whether to automatically add an ordered suffix for HostName and InstanceName when creating multiple instances. The ordered suffix starts from 001 and cannot exceed 999. Value Description:
  /// [ecsZoneId] The ID of the zone.
  /// [engine] Database type, value:
  /// [imageId] The ID of the custom image.
  /// [internetChargeType] Network billing type. Value range: PayByBandwidth: Billing based on fixed bandwidth. PayByTraffic: charges by using the flow meter.
  /// [internetMaxBandwidthOut] The maximum outbound bandwidth of the public network, in Mbit/s. Value range: 0~100.  Default value: 0. When set to greater than 0, a public IP is automatically created.
  /// [keyPairName] The key pair name.
  /// [osPassword] Host login password, which can be set later. The password must meet the following requirements:
  /// [passwordInherit] Whether to use the default password of the image.
  /// [paymentType] The Payment type. Currently, only **Subscription** is supported.
  /// [period] Duration of purchase.
  /// [periodType] The subscription type. Currently, only **Monthly** (subscription) is supported.
  /// [resourceGroupId] The ID of the resource group.
  /// [securityGroupId] The ID of the security group.
  /// [tags] Host tag information.
  /// [userData] User-defined script data. The maximum size of the original data is 16kB.
  /// [userDataEncoded] Whether custom data is encoded in Base64 format.
  /// [vpcId] VPCID of the VPC.
  /// [vswitchId] The ID of the virtual switch.
  DedicatedPropreHostState({
    this.autoPay,
    this.autoRenew,
    this.dedicatedHostGroupId,
    this.ecsClassLists,
    this.ecsDeploymentSetId,
    this.ecsHostName,
    this.ecsInstanceId,
    this.ecsInstanceName,
    this.ecsUniqueSuffix,
    this.ecsZoneId,
    this.engine,
    this.imageId,
    this.internetChargeType,
    this.internetMaxBandwidthOut,
    this.keyPairName,
    this.osPassword,
    this.passwordInherit,
    this.paymentType,
    this.period,
    this.periodType,
    this.resourceGroupId,
    this.securityGroupId,
    this.tags,
    this.userData,
    this.userDataEncoded,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'autoRenew': ?autoRenew,
      'dedicatedHostGroupId': ?dedicatedHostGroupId,
      'ecsClassLists': ?pulumi.Input.mapOptionalInputValue<List<DedicatedPropreHostEcsClassList>, List<Map<String, dynamic>>>(ecsClassLists, (value) => pulumi.Input.encodeList<DedicatedPropreHostEcsClassList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ecsDeploymentSetId': ?ecsDeploymentSetId,
      'ecsHostName': ?ecsHostName,
      'ecsInstanceId': ?ecsInstanceId,
      'ecsInstanceName': ?ecsInstanceName,
      'ecsUniqueSuffix': ?ecsUniqueSuffix,
      'ecsZoneId': ?ecsZoneId,
      'engine': ?engine,
      'imageId': ?imageId,
      'internetChargeType': ?internetChargeType,
      'internetMaxBandwidthOut': ?internetMaxBandwidthOut,
      'keyPairName': ?keyPairName,
      'osPassword': ?osPassword,
      'passwordInherit': ?passwordInherit,
      'paymentType': ?paymentType,
      'period': ?period,
      'periodType': ?periodType,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupId': ?securityGroupId,
      'tags': ?tags,
      'userData': ?userData,
      'userDataEncoded': ?userDataEncoded,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory DedicatedPropreHostState.fromMap(Map<String, dynamic> map) {
    return DedicatedPropreHostState(
      autoPay: (() { final guardedValue = map['autoPay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dedicatedHostGroupId: (() { final guardedValue = map['dedicatedHostGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecsClassLists: (() { final guardedValue = map['ecsClassLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DedicatedPropreHostEcsClassList>(guardedValue, (value) => DedicatedPropreHostEcsClassList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ecsDeploymentSetId: (() { final guardedValue = map['ecsDeploymentSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecsHostName: (() { final guardedValue = map['ecsHostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecsInstanceId: (() { final guardedValue = map['ecsInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecsInstanceName: (() { final guardedValue = map['ecsInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecsUniqueSuffix: (() { final guardedValue = map['ecsUniqueSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecsZoneId: (() { final guardedValue = map['ecsZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetChargeType: (() { final guardedValue = map['internetChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetMaxBandwidthOut: (() { final guardedValue = map['internetMaxBandwidthOut']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      keyPairName: (() { final guardedValue = map['keyPairName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osPassword: (() { final guardedValue = map['osPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordInherit: (() { final guardedValue = map['passwordInherit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      periodType: (() { final guardedValue = map['periodType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userDataEncoded: (() { final guardedValue = map['userDataEncoded']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

