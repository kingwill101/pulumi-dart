// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_desktop_desktop_args_doc}
/// The set of arguments for Desktop.
/// {@endtemplate}
/// {@macro pulumi_eds_desktop_desktop_args_doc}
class DesktopArgs {
  /// The amount of the Desktop.
  final pulumi.Input<int>? amount;
  /// The auto-pay of the Desktop whether to pay automatically. values: `true`, `false`.
  final pulumi.Input<bool>? autoPay;
  /// The auto-renewal of the Desktop whether to renew automatically. It takes effect only when the parameter ChargeType is set to PrePaid. values: `true`, `false`.
  final pulumi.Input<bool>? autoRenew;
  /// The bundle id of the Desktop.
  final pulumi.Input<String> bundleId;
  /// The desktop name of the Desktop.
  final pulumi.Input<String>? desktopName;
  /// The desktop type of the Desktop.
  final pulumi.Input<String>? desktopType;
  /// The desktop end user id of the Desktop.
  final pulumi.Input<List<String>>? endUserIds;
  /// The hostname of the Desktop.
  final pulumi.Input<String>? hostName;
  /// The ID of the Simple Office Site.
  final pulumi.Input<String> officeSiteId;
  /// The payment type of the Desktop. Valid values: `PayAsYouGo`, `Subscription`. Default to `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;
  /// The period of the Desktop.
  final pulumi.Input<int>? period;
  /// The period unit of the Desktop.
  final pulumi.Input<String>? periodUnit;
  /// The policy group id of the Desktop.
  final pulumi.Input<String> policyGroupId;
  /// The root disk size gib of the Desktop.
  final pulumi.Input<int>? rootDiskSizeGib;
  /// The status of the Desktop. Valid values: `Deleted`, `Expired`, `Pending`, `Running`, `Starting`, `Stopped`, `Stopping`.
  final pulumi.Input<String>? status;
  /// The stopped mode of the Desktop.
  final pulumi.Input<String>? stoppedMode;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The user assign mode of the Desktop. Valid values: `ALL`, `PER_USER`. Default to `ALL`.
  final pulumi.Input<String>? userAssignMode;
  /// The user disk size gib of the Desktop.
  final pulumi.Input<int>? userDiskSizeGib;

  /// Creates a new [DesktopArgs].
  /// [amount] The amount of the Desktop.
  /// [autoPay] The auto-pay of the Desktop whether to pay automatically. values: `true`, `false`.
  /// [autoRenew] The auto-renewal of the Desktop whether to renew automatically. It takes effect only when the parameter ChargeType is set to PrePaid. values: `true`, `false`.
  /// [bundleId] The bundle id of the Desktop.
  /// [desktopName] The desktop name of the Desktop.
  /// [desktopType] The desktop type of the Desktop.
  /// [endUserIds] The desktop end user id of the Desktop.
  /// [hostName] The hostname of the Desktop.
  /// [officeSiteId] The ID of the Simple Office Site.
  /// [paymentType] The payment type of the Desktop. Valid values: `PayAsYouGo`, `Subscription`. Default to `PayAsYouGo`.
  /// [period] The period of the Desktop.
  /// [periodUnit] The period unit of the Desktop.
  /// [policyGroupId] The policy group id of the Desktop.
  /// [rootDiskSizeGib] The root disk size gib of the Desktop.
  /// [status] The status of the Desktop. Valid values: `Deleted`, `Expired`, `Pending`, `Running`, `Starting`, `Stopped`, `Stopping`.
  /// [stoppedMode] The stopped mode of the Desktop.
  /// [tags] A mapping of tags to assign to the resource.
  /// [userAssignMode] The user assign mode of the Desktop. Valid values: `ALL`, `PER_USER`. Default to `ALL`.
  /// [userDiskSizeGib] The user disk size gib of the Desktop.
  DesktopArgs({
    this.amount,
    this.autoPay,
    this.autoRenew,
    required this.bundleId,
    this.desktopName,
    this.desktopType,
    this.endUserIds,
    this.hostName,
    required this.officeSiteId,
    this.paymentType,
    this.period,
    this.periodUnit,
    required this.policyGroupId,
    this.rootDiskSizeGib,
    this.status,
    this.stoppedMode,
    this.tags,
    this.userAssignMode,
    this.userDiskSizeGib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'autoPay': ?autoPay,
      'autoRenew': ?autoRenew,
      'bundleId': bundleId,
      'desktopName': ?desktopName,
      'desktopType': ?desktopType,
      'endUserIds': ?endUserIds,
      'hostName': ?hostName,
      'officeSiteId': officeSiteId,
      'paymentType': ?paymentType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'policyGroupId': policyGroupId,
      'rootDiskSizeGib': ?rootDiskSizeGib,
      'status': ?status,
      'stoppedMode': ?stoppedMode,
      'tags': ?tags,
      'userAssignMode': ?userAssignMode,
      'userDiskSizeGib': ?userDiskSizeGib,
    };
  }

  factory DesktopArgs.fromMap(Map<String, dynamic> map) {
    return DesktopArgs(
      amount: map['amount'] == null ? null : (map['amount'] as int).input(),
      autoPay: map['autoPay'] == null ? null : (map['autoPay'] as bool).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      bundleId: (map['bundleId'] as String).input(),
      desktopName: map['desktopName'] == null ? null : (map['desktopName'] as String).input(),
      desktopType: map['desktopType'] == null ? null : (map['desktopType'] as String).input(),
      endUserIds: map['endUserIds'] == null ? null : ((map['endUserIds'] as List).cast<String>()).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      officeSiteId: (map['officeSiteId'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      periodUnit: map['periodUnit'] == null ? null : (map['periodUnit'] as String).input(),
      policyGroupId: (map['policyGroupId'] as String).input(),
      rootDiskSizeGib: map['rootDiskSizeGib'] == null ? null : (map['rootDiskSizeGib'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      stoppedMode: map['stoppedMode'] == null ? null : (map['stoppedMode'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      userAssignMode: map['userAssignMode'] == null ? null : (map['userAssignMode'] as String).input(),
      userDiskSizeGib: map['userDiskSizeGib'] == null ? null : (map['userDiskSizeGib'] as int).input(),
    );
  }
}

