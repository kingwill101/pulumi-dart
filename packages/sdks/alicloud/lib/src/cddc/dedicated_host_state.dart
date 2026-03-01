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
    pulumi.Output<String>? allocationStatus,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<String>? dedicatedHostGroupId,
    pulumi.Output<String>? dedicatedHostId,
    pulumi.Output<String>? hostClass,
    pulumi.Output<String>? hostName,
    pulumi.Output<String>? imageCategory,
    pulumi.Output<String>? osPassword,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? period,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? usedTime,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      allocationStatus = pulumi.Input.asOptionalInput<String>(allocationStatus),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      dedicatedHostGroupId = pulumi.Input.asOptionalInput<String>(dedicatedHostGroupId),
      dedicatedHostId = pulumi.Input.asOptionalInput<String>(dedicatedHostId),
      hostClass = pulumi.Input.asOptionalInput<String>(hostClass),
      hostName = pulumi.Input.asOptionalInput<String>(hostName),
      imageCategory = pulumi.Input.asOptionalInput<String>(imageCategory),
      osPassword = pulumi.Input.asOptionalInput<String>(osPassword),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<String>(period),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      usedTime = pulumi.Input.asOptionalInput<int>(usedTime),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      allocationStatus: map['allocationStatus'] == null ? null : pulumi.Output.create<String>(map['allocationStatus'] as String),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      dedicatedHostGroupId: map['dedicatedHostGroupId'] == null ? null : pulumi.Output.create<String>(map['dedicatedHostGroupId'] as String),
      dedicatedHostId: map['dedicatedHostId'] == null ? null : pulumi.Output.create<String>(map['dedicatedHostId'] as String),
      hostClass: map['hostClass'] == null ? null : pulumi.Output.create<String>(map['hostClass'] as String),
      hostName: map['hostName'] == null ? null : pulumi.Output.create<String>(map['hostName'] as String),
      imageCategory: map['imageCategory'] == null ? null : pulumi.Output.create<String>(map['imageCategory'] as String),
      osPassword: map['osPassword'] == null ? null : pulumi.Output.create<String>(map['osPassword'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<String>(map['period'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      usedTime: map['usedTime'] == null ? null : pulumi.Output.create<int>(map['usedTime'] as int),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

