// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cddc_dedicated_host_dedicated_host_args_doc}
/// The set of arguments for DedicatedHost.
/// {@endtemplate}
/// {@macro pulumi_cddc_dedicated_host_dedicated_host_args_doc}
class DedicatedHostArgs {
  /// Specifies whether instances can be created on the host. Valid values: `Allocatable` or `Suspended`. `Allocatable`: Instances can be created on the host. `Suspended`: Instances cannot be created on the host.
  final pulumi.Input<String>? allocationStatus;
  /// Specifies whether to enable the auto-renewal feature.
  final pulumi.Input<bool>? autoRenew;
  /// The ID of the dedicated cluster.
  final pulumi.Input<String> dedicatedHostGroupId;
  /// The instance type of the host. For more information about the supported instance types of hosts, see [Host specification details](https://www.alibabacloud.com/help/doc-detail/206343.htm).
  final pulumi.Input<String> hostClass;
  /// The name of the host. The name must be `1` to `64` characters in length and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter.
  final pulumi.Input<String>? hostName;
  /// Host Image Category. Valid values: `WindowsWithMssqlEntAlwaysonLicense`, `WindowsWithMssqlStdLicense`, `WindowsWithMssqlEntLicense`, `WindowsWithMssqlWebLicense`, `AliLinux`.
  final pulumi.Input<String>? imageCategory;
  /// Host password. **NOTE:** The creation of a host password is supported only when the database type is `Tair-PMem`.
  final pulumi.Input<String>? osPassword;
  /// The payment type of the resource. Valid values: `Subscription`.
  final pulumi.Input<String> paymentType;
  /// The unit of the subscription duration. Valid values: `Year`, `Month`, `Week`.
  final pulumi.Input<String>? period;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The subscription duration of the host. Valid values:
  /// * If the Period parameter is set to `Year`, the value of the UsedTime parameter ranges from `1` to `5`.
  /// * If the Period parameter is set to `Month`, the value of the UsedTime parameter ranges from `1` to `9`.
  /// * If the Period parameter is set to `Week`, the value of the UsedTime parameter ranges from `1`, `2` and `3`.
  final pulumi.Input<int>? usedTime;
  /// The ID of the vSwitch to which the host is connected.
  final pulumi.Input<String> vswitchId;
  /// The ID of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [DedicatedHostArgs].
  /// [allocationStatus] Specifies whether instances can be created on the host. Valid values: `Allocatable` or `Suspended`. `Allocatable`: Instances can be created on the host. `Suspended`: Instances cannot be created on the host.
  /// [autoRenew] Specifies whether to enable the auto-renewal feature.
  /// [dedicatedHostGroupId] The ID of the dedicated cluster.
  /// [hostClass] The instance type of the host. For more information about the supported instance types of hosts, see [Host specification details](https://www.alibabacloud.com/help/doc-detail/206343.htm).
  /// [hostName] The name of the host. The name must be `1` to `64` characters in length and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter.
  /// [imageCategory] Host Image Category. Valid values: `WindowsWithMssqlEntAlwaysonLicense`, `WindowsWithMssqlStdLicense`, `WindowsWithMssqlEntLicense`, `WindowsWithMssqlWebLicense`, `AliLinux`.
  /// [osPassword] Host password. **NOTE:** The creation of a host password is supported only when the database type is `Tair-PMem`.
  /// [paymentType] The payment type of the resource. Valid values: `Subscription`.
  /// [period] The unit of the subscription duration. Valid values: `Year`, `Month`, `Week`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [usedTime] The subscription duration of the host. Valid values:
  /// [vswitchId] The ID of the vSwitch to which the host is connected.
  /// [zoneId] The ID of the zone.
  DedicatedHostArgs({
    this.allocationStatus,
    this.autoRenew,
    required this.dedicatedHostGroupId,
    required this.hostClass,
    this.hostName,
    this.imageCategory,
    this.osPassword,
    required this.paymentType,
    this.period,
    this.tags,
    this.usedTime,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStatus': ?allocationStatus,
      'autoRenew': ?autoRenew,
      'dedicatedHostGroupId': dedicatedHostGroupId,
      'hostClass': hostClass,
      'hostName': ?hostName,
      'imageCategory': ?imageCategory,
      'osPassword': ?osPassword,
      'paymentType': paymentType,
      'period': ?period,
      'tags': ?tags,
      'usedTime': ?usedTime,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory DedicatedHostArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedHostArgs(
      allocationStatus: map['allocationStatus'] == null ? null : (map['allocationStatus'] as String).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      dedicatedHostGroupId: (map['dedicatedHostGroupId'] as String).input(),
      hostClass: (map['hostClass'] as String).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      imageCategory: map['imageCategory'] == null ? null : (map['imageCategory'] as String).input(),
      osPassword: map['osPassword'] == null ? null : (map['osPassword'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      usedTime: map['usedTime'] == null ? null : (map['usedTime'] as int).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

