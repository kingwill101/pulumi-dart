// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Desktop resources.
class DesktopState {
  /// The amount of the Desktop.
  final pulumi.Input<int>? amount;

  /// The auto-pay of the Desktop whether to pay automatically. values: `true`, `false`.
  final pulumi.Input<bool>? autoPay;

  /// The auto-renewal of the Desktop whether to renew automatically. It takes effect only when the parameter ChargeType is set to PrePaid. values: `true`, `false`.
  final pulumi.Input<bool>? autoRenew;

  /// The bundle id of the Desktop.
  final pulumi.Input<String>? bundleId;

  /// The desktop name of the Desktop.
  final pulumi.Input<String>? desktopName;

  /// The desktop type of the Desktop.
  final pulumi.Input<String>? desktopType;

  /// The desktop end user id of the Desktop.
  final pulumi.Input<List<String>>? endUserIds;

  /// The hostname of the Desktop.
  final pulumi.Input<String>? hostName;

  /// The ID of the Simple Office Site.
  final pulumi.Input<String>? officeSiteId;

  /// The payment type of the Desktop. Valid values: `PayAsYouGo`, `Subscription`. Default to `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;

  /// The period of the Desktop.
  final pulumi.Input<int>? period;

  /// The period unit of the Desktop.
  final pulumi.Input<String>? periodUnit;

  /// The policy group id of the Desktop.
  final pulumi.Input<String>? policyGroupId;

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

  /// Creates a new [DesktopState].
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
  DesktopState({
    this.amount,
    this.autoPay,
    this.autoRenew,
    this.bundleId,
    this.desktopName,
    this.desktopType,
    this.endUserIds,
    this.hostName,
    this.officeSiteId,
    this.paymentType,
    this.period,
    this.periodUnit,
    this.policyGroupId,
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
      'bundleId': ?bundleId,
      'desktopName': ?desktopName,
      'desktopType': ?desktopType,
      'endUserIds': ?endUserIds,
      'hostName': ?hostName,
      'officeSiteId': ?officeSiteId,
      'paymentType': ?paymentType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'policyGroupId': ?policyGroupId,
      'rootDiskSizeGib': ?rootDiskSizeGib,
      'status': ?status,
      'stoppedMode': ?stoppedMode,
      'tags': ?tags,
      'userAssignMode': ?userAssignMode,
      'userDiskSizeGib': ?userDiskSizeGib,
    };
  }

  factory DesktopState.fromMap(Map<String, dynamic> map) {
    return DesktopState(
      amount: (() {
        final guardedValue = map['amount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      autoPay: (() {
        final guardedValue = map['autoPay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      autoRenew: (() {
        final guardedValue = map['autoRenew'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      bundleId: (() {
        final guardedValue = map['bundleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      desktopName: (() {
        final guardedValue = map['desktopName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      desktopType: (() {
        final guardedValue = map['desktopType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endUserIds: (() {
        final guardedValue = map['endUserIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      hostName: (() {
        final guardedValue = map['hostName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      officeSiteId: (() {
        final guardedValue = map['officeSiteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      periodUnit: (() {
        final guardedValue = map['periodUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyGroupId: (() {
        final guardedValue = map['policyGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rootDiskSizeGib: (() {
        final guardedValue = map['rootDiskSizeGib'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stoppedMode: (() {
        final guardedValue = map['stoppedMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      userAssignMode: (() {
        final guardedValue = map['userAssignMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userDiskSizeGib: (() {
        final guardedValue = map['userDiskSizeGib'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
