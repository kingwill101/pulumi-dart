// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DedicatedHost resources.
class DedicatedHostState {
  /// Specifies whether instances can be created on the host. Valid values: `Allocatable` or `Suspended`. `Allocatable`: Instances can be created on the host. `Suspended`: Instances cannot be created on the host.
  final pulumi.Input<String>? allocationStatus;
  /// Specifies whether to enable the auto-renewal feature.
  final pulumi.Input<bool>? autoRenew;
  /// The ID of the dedicated cluster.
  final pulumi.Input<String>? dedicatedHostGroupId;
  /// The ID of the host.
  final pulumi.Input<String>? dedicatedHostId;
  /// The instance type of the host. For more information about the supported instance types of hosts, see [Host specification details](https://www.alibabacloud.com/help/doc-detail/206343.htm).
  final pulumi.Input<String>? hostClass;
  /// The name of the host. The name must be `1` to `64` characters in length and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter.
  final pulumi.Input<String>? hostName;
  /// Host Image Category. Valid values: `WindowsWithMssqlEntAlwaysonLicense`, `WindowsWithMssqlStdLicense`, `WindowsWithMssqlEntLicense`, `WindowsWithMssqlWebLicense`, `AliLinux`.
  final pulumi.Input<String>? imageCategory;
  /// Host password. **NOTE:** The creation of a host password is supported only when the database type is `Tair-PMem`.
  final pulumi.Input<String>? osPassword;
  /// The payment type of the resource. Valid values: `Subscription`.
  final pulumi.Input<String>? paymentType;
  /// The unit of the subscription duration. Valid values: `Year`, `Month`, `Week`.
  final pulumi.Input<String>? period;
  /// The state of the host. Valid values: `0:` The host is being created. `1`: The host is running. `2`: The host is faulty. `3`: The host is ready for deactivation. `4`: The host is being maintained. `5`: The host is deactivated. `6`: The host is restarting. `7`: The host is locked.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The subscription duration of the host. Valid values:
  /// * If the Period parameter is set to `Year`, the value of the UsedTime parameter ranges from `1` to `5`.
  /// * If the Period parameter is set to `Month`, the value of the UsedTime parameter ranges from `1` to `9`.
  /// * If the Period parameter is set to `Week`, the value of the UsedTime parameter ranges from `1`, `2` and `3`.
  final pulumi.Input<int>? usedTime;
  /// The ID of the vSwitch to which the host is connected.
  final pulumi.Input<String>? vswitchId;
  /// The ID of the zone.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [DedicatedHostState].
  /// [allocationStatus] Specifies whether instances can be created on the host. Valid values: `Allocatable` or `Suspended`. `Allocatable`: Instances can be created on the host. `Suspended`: Instances cannot be created on the host.
  /// [autoRenew] Specifies whether to enable the auto-renewal feature.
  /// [dedicatedHostGroupId] The ID of the dedicated cluster.
  /// [dedicatedHostId] The ID of the host.
  /// [hostClass] The instance type of the host. For more information about the supported instance types of hosts, see [Host specification details](https://www.alibabacloud.com/help/doc-detail/206343.htm).
  /// [hostName] The name of the host. The name must be `1` to `64` characters in length and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter.
  /// [imageCategory] Host Image Category. Valid values: `WindowsWithMssqlEntAlwaysonLicense`, `WindowsWithMssqlStdLicense`, `WindowsWithMssqlEntLicense`, `WindowsWithMssqlWebLicense`, `AliLinux`.
  /// [osPassword] Host password. **NOTE:** The creation of a host password is supported only when the database type is `Tair-PMem`.
  /// [paymentType] The payment type of the resource. Valid values: `Subscription`.
  /// [period] The unit of the subscription duration. Valid values: `Year`, `Month`, `Week`.
  /// [status] The state of the host. Valid values: `0:` The host is being created. `1`: The host is running. `2`: The host is faulty. `3`: The host is ready for deactivation. `4`: The host is being maintained. `5`: The host is deactivated. `6`: The host is restarting. `7`: The host is locked.
  /// [tags] A mapping of tags to assign to the resource.
  /// [usedTime] The subscription duration of the host. Valid values:
  /// [vswitchId] The ID of the vSwitch to which the host is connected.
  /// [zoneId] The ID of the zone.
  DedicatedHostState({
    this.allocationStatus,
    this.autoRenew,
    this.dedicatedHostGroupId,
    this.dedicatedHostId,
    this.hostClass,
    this.hostName,
    this.imageCategory,
    this.osPassword,
    this.paymentType,
    this.period,
    this.status,
    this.tags,
    this.usedTime,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStatus': ?allocationStatus,
      'autoRenew': ?autoRenew,
      'dedicatedHostGroupId': ?dedicatedHostGroupId,
      'dedicatedHostId': ?dedicatedHostId,
      'hostClass': ?hostClass,
      'hostName': ?hostName,
      'imageCategory': ?imageCategory,
      'osPassword': ?osPassword,
      'paymentType': ?paymentType,
      'period': ?period,
      'status': ?status,
      'tags': ?tags,
      'usedTime': ?usedTime,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory DedicatedHostState.fromMap(Map<String, dynamic> map) {
    return DedicatedHostState(
      allocationStatus: map['allocationStatus'] == null ? null : (map['allocationStatus'] as String).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      dedicatedHostGroupId: map['dedicatedHostGroupId'] == null ? null : (map['dedicatedHostGroupId'] as String).input(),
      dedicatedHostId: map['dedicatedHostId'] == null ? null : (map['dedicatedHostId'] as String).input(),
      hostClass: map['hostClass'] == null ? null : (map['hostClass'] as String).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      imageCategory: map['imageCategory'] == null ? null : (map['imageCategory'] as String).input(),
      osPassword: map['osPassword'] == null ? null : (map['osPassword'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      usedTime: map['usedTime'] == null ? null : (map['usedTime'] as int).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

