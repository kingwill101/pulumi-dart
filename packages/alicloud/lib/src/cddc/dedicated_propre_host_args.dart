// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_propre_host_ecs_class_list.dart';

/// {@template pulumi_cddc_dedicated_propre_host_dedicated_propre_host_args_doc}
/// The set of arguments for DedicatedPropreHost.
/// {@endtemplate}
/// {@macro pulumi_cddc_dedicated_propre_host_dedicated_propre_host_args_doc}
class DedicatedPropreHostArgs {
  /// Whether to pay automatically when the host is created.
  final pulumi.Input<bool>? autoPay;
  /// Whether to enable automatic renewal. Valid values:
  /// - **true**: On
  /// - **false** (default): Off
  final pulumi.Input<String>? autoRenew;
  /// You have a dedicated cluster ID.
  final pulumi.Input<String>? dedicatedHostGroupId;
  /// ECS specifications. See `ecs_class_list` below.
  final pulumi.Input<List<DedicatedPropreHostEcsClassList>> ecsClassLists;
  /// The ID of the cloud server deployment set.
  final pulumi.Input<String>? ecsDeploymentSetId;
  /// Windows system: length of 2 to 15 characters, allowing the use of upper and lower case letters, numbers. You cannot use only numbers. Other operating systems (such as Linux): the length of 2 to 64 characters, allowing the use of dot (.) to separate characters into multiple segments, each segment allows the use of upper and lower case letters, numbers, but can not use continuous dot (.). Cannot start or end with a dot (.).
  final pulumi.Input<String>? ecsHostName;
  /// The instance name. It must be 2 to 128 characters in length and must start with an uppercase or lowercase letter or a Chinese character. It cannot start with http:// or https. Can contain Chinese, English, numbers, half-width colons (:), underscores (_), half-width periods (.), or dashes (-). The default value is the InstanceId of the instance.
  final pulumi.Input<String>? ecsInstanceName;
  /// Whether to automatically add an ordered suffix for HostName and InstanceName when creating multiple instances. The ordered suffix starts from 001 and cannot exceed 999. Value Description:
  /// - **true**: added.
  /// - **false** (default): Do not add.
  /// When the HostName or InstanceName is set according to the specified sorting format, and the naming suffix name_suffix is not set, that is, when the naming format is name_prefix[begin_number,bits], the UniqueSuffix does not take effect, and the names are only sorted according to the specified order.
  final pulumi.Input<String>? ecsUniqueSuffix;
  /// The ID of the zone.
  final pulumi.Input<String> ecsZoneId;
  /// Database type, value:
  /// - **alisql**
  /// - **tair**
  /// - **mssql**
  /// Must be consistent with the parent resource cluster engine attributes.
  final pulumi.Input<String> engine;
  /// The ID of the custom image.
  /// > **NOTE:**  If you need to use the default image, you do not need to fill it in.
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
  /// > **NOTE:** - If you need to set the host login password later, fill in an empty string for this parameter. If you need to set a host login password, we recommend that you use the HTTPS protocol to send requests to avoid password leakage.
  final pulumi.Input<String>? osPassword;
  /// Whether to use the default password of the image.
  /// - **false**: (default)Do not use
  /// - **true**: Use
  /// > **NOTE:**  If the default password of the image is used, the **OSPassword** parameter is not required.
  final pulumi.Input<String>? passwordInherit;
  /// The Payment type. Currently, only **Subscription** is supported.
  final pulumi.Input<String> paymentType;
  /// Duration of purchase.
  final pulumi.Input<String>? period;
  /// The subscription type. Currently, only **Monthly** (subscription) is supported.
  final pulumi.Input<String>? periodType;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The ID of the security group.
  final pulumi.Input<String> securityGroupId;
  /// Host tag information.
  final pulumi.Input<Map<String, String>>? tags;
  /// User-defined script data. The maximum size of the original data is 16kB.
  final pulumi.Input<String>? userData;
  /// Whether custom data is encoded in Base64 format.
  final pulumi.Input<bool>? userDataEncoded;
  /// VPCID of the VPC.
  final pulumi.Input<String> vpcId;
  /// The ID of the virtual switch.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [DedicatedPropreHostArgs].
  /// [autoPay] Whether to pay automatically when the host is created.
  /// [autoRenew] Whether to enable automatic renewal. Valid values:
  /// [dedicatedHostGroupId] You have a dedicated cluster ID.
  /// [ecsClassLists] ECS specifications. See `ecs_class_list` below.
  /// [ecsDeploymentSetId] The ID of the cloud server deployment set.
  /// [ecsHostName] Windows system: length of 2 to 15 characters, allowing the use of upper and lower case letters, numbers. You cannot use only numbers. Other operating systems (such as Linux): the length of 2 to 64 characters, allowing the use of dot (.) to separate characters into multiple segments, each segment allows the use of upper and lower case letters, numbers, but can not use continuous dot (.). Cannot start or end with a dot (.).
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
  DedicatedPropreHostArgs({
    bool? autoPay,
    String? autoRenew,
    String? dedicatedHostGroupId,
    required List<DedicatedPropreHostEcsClassList> ecsClassLists,
    String? ecsDeploymentSetId,
    String? ecsHostName,
    String? ecsInstanceName,
    String? ecsUniqueSuffix,
    required String ecsZoneId,
    required String engine,
    String? imageId,
    String? internetChargeType,
    int? internetMaxBandwidthOut,
    String? keyPairName,
    String? osPassword,
    String? passwordInherit,
    required String paymentType,
    String? period,
    String? periodType,
    String? resourceGroupId,
    required String securityGroupId,
    Map<String, String>? tags,
    String? userData,
    bool? userDataEncoded,
    required String vpcId,
    required String vswitchId,
  }) :
      autoPay = pulumi.Input.asOptionalInput<bool>(autoPay),
      autoRenew = pulumi.Input.asOptionalInput<String>(autoRenew),
      dedicatedHostGroupId = pulumi.Input.asOptionalInput<String>(dedicatedHostGroupId),
      ecsClassLists = pulumi.Input.asInput<List<DedicatedPropreHostEcsClassList>>(ecsClassLists),
      ecsDeploymentSetId = pulumi.Input.asOptionalInput<String>(ecsDeploymentSetId),
      ecsHostName = pulumi.Input.asOptionalInput<String>(ecsHostName),
      ecsInstanceName = pulumi.Input.asOptionalInput<String>(ecsInstanceName),
      ecsUniqueSuffix = pulumi.Input.asOptionalInput<String>(ecsUniqueSuffix),
      ecsZoneId = pulumi.Input.asInput<String>(ecsZoneId),
      engine = pulumi.Input.asInput<String>(engine),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      internetChargeType = pulumi.Input.asOptionalInput<String>(internetChargeType),
      internetMaxBandwidthOut = pulumi.Input.asOptionalInput<int>(internetMaxBandwidthOut),
      keyPairName = pulumi.Input.asOptionalInput<String>(keyPairName),
      osPassword = pulumi.Input.asOptionalInput<String>(osPassword),
      passwordInherit = pulumi.Input.asOptionalInput<String>(passwordInherit),
      paymentType = pulumi.Input.asInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<String>(period),
      periodType = pulumi.Input.asOptionalInput<String>(periodType),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityGroupId = pulumi.Input.asInput<String>(securityGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      userDataEncoded = pulumi.Input.asOptionalInput<bool>(userDataEncoded),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'autoRenew': ?autoRenew,
      'dedicatedHostGroupId': ?dedicatedHostGroupId,
      'ecsClassLists': pulumi.Input.mapInputValue<List<DedicatedPropreHostEcsClassList>, List<Map<String, dynamic>>>(ecsClassLists, (value) => pulumi.Input.encodeList<DedicatedPropreHostEcsClassList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ecsDeploymentSetId': ?ecsDeploymentSetId,
      'ecsHostName': ?ecsHostName,
      'ecsInstanceName': ?ecsInstanceName,
      'ecsUniqueSuffix': ?ecsUniqueSuffix,
      'ecsZoneId': ecsZoneId,
      'engine': engine,
      'imageId': ?imageId,
      'internetChargeType': ?internetChargeType,
      'internetMaxBandwidthOut': ?internetMaxBandwidthOut,
      'keyPairName': ?keyPairName,
      'osPassword': ?osPassword,
      'passwordInherit': ?passwordInherit,
      'paymentType': paymentType,
      'period': ?period,
      'periodType': ?periodType,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupId': securityGroupId,
      'tags': ?tags,
      'userData': ?userData,
      'userDataEncoded': ?userDataEncoded,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory DedicatedPropreHostArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedPropreHostArgs(
      autoPay: map['autoPay'] == null ? null : map['autoPay'] as bool,
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as String,
      dedicatedHostGroupId: map['dedicatedHostGroupId'] == null ? null : map['dedicatedHostGroupId'] as String,
      ecsClassLists: pulumi.Input.decodeList<DedicatedPropreHostEcsClassList>(map['ecsClassLists'], (value) => DedicatedPropreHostEcsClassList.fromMap((value as Map).cast<String, dynamic>())),
      ecsDeploymentSetId: map['ecsDeploymentSetId'] == null ? null : map['ecsDeploymentSetId'] as String,
      ecsHostName: map['ecsHostName'] == null ? null : map['ecsHostName'] as String,
      ecsInstanceName: map['ecsInstanceName'] == null ? null : map['ecsInstanceName'] as String,
      ecsUniqueSuffix: map['ecsUniqueSuffix'] == null ? null : map['ecsUniqueSuffix'] as String,
      ecsZoneId: map['ecsZoneId'] as String,
      engine: map['engine'] as String,
      imageId: map['imageId'] == null ? null : map['imageId'] as String,
      internetChargeType: map['internetChargeType'] == null ? null : map['internetChargeType'] as String,
      internetMaxBandwidthOut: map['internetMaxBandwidthOut'] == null ? null : map['internetMaxBandwidthOut'] as int,
      keyPairName: map['keyPairName'] == null ? null : map['keyPairName'] as String,
      osPassword: map['osPassword'] == null ? null : map['osPassword'] as String,
      passwordInherit: map['passwordInherit'] == null ? null : map['passwordInherit'] as String,
      paymentType: map['paymentType'] as String,
      period: map['period'] == null ? null : map['period'] as String,
      periodType: map['periodType'] == null ? null : map['periodType'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      securityGroupId: map['securityGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      userData: map['userData'] == null ? null : map['userData'] as String,
      userDataEncoded: map['userDataEncoded'] == null ? null : map['userDataEncoded'] as bool,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

