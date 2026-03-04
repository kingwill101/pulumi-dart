// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Maintenance Operation Status.
class MaintenanceRedeployStatusResponse {
  /// True, if customer is allowed to perform Maintenance.
  final pulumi.Input<bool>? isCustomerInitiatedMaintenanceAllowed;

  /// Message returned for the last Maintenance Operation.
  final pulumi.Input<String>? lastOperationMessage;

  /// The Last Maintenance Operation Result Code.
  final pulumi.Input<String>? lastOperationResultCode;

  /// End Time for the Maintenance Window.
  final pulumi.Input<String>? maintenanceWindowEndTime;

  /// Start Time for the Maintenance Window.
  final pulumi.Input<String>? maintenanceWindowStartTime;

  /// End Time for the Pre Maintenance Window.
  final pulumi.Input<String>? preMaintenanceWindowEndTime;

  /// Start Time for the Pre Maintenance Window.
  final pulumi.Input<String>? preMaintenanceWindowStartTime;

  /// Creates a new [MaintenanceRedeployStatusResponse].
  /// [isCustomerInitiatedMaintenanceAllowed] True, if customer is allowed to perform Maintenance.
  /// [lastOperationMessage] Message returned for the last Maintenance Operation.
  /// [lastOperationResultCode] The Last Maintenance Operation Result Code.
  /// [maintenanceWindowEndTime] End Time for the Maintenance Window.
  /// [maintenanceWindowStartTime] Start Time for the Maintenance Window.
  /// [preMaintenanceWindowEndTime] End Time for the Pre Maintenance Window.
  /// [preMaintenanceWindowStartTime] Start Time for the Pre Maintenance Window.
  MaintenanceRedeployStatusResponse({
    this.isCustomerInitiatedMaintenanceAllowed,
    this.lastOperationMessage,
    this.lastOperationResultCode,
    this.maintenanceWindowEndTime,
    this.maintenanceWindowStartTime,
    this.preMaintenanceWindowEndTime,
    this.preMaintenanceWindowStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCustomerInitiatedMaintenanceAllowed':
          ?isCustomerInitiatedMaintenanceAllowed,
      'lastOperationMessage': ?lastOperationMessage,
      'lastOperationResultCode': ?lastOperationResultCode,
      'maintenanceWindowEndTime': ?maintenanceWindowEndTime,
      'maintenanceWindowStartTime': ?maintenanceWindowStartTime,
      'preMaintenanceWindowEndTime': ?preMaintenanceWindowEndTime,
      'preMaintenanceWindowStartTime': ?preMaintenanceWindowStartTime,
    };
  }

  factory MaintenanceRedeployStatusResponse.fromMap(Map<String, dynamic> map) {
    return MaintenanceRedeployStatusResponse(
      isCustomerInitiatedMaintenanceAllowed: (() {
        final guardedValue = map['isCustomerInitiatedMaintenanceAllowed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      lastOperationMessage: (() {
        final guardedValue = map['lastOperationMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastOperationResultCode: (() {
        final guardedValue = map['lastOperationResultCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maintenanceWindowEndTime: (() {
        final guardedValue = map['maintenanceWindowEndTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maintenanceWindowStartTime: (() {
        final guardedValue = map['maintenanceWindowStartTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preMaintenanceWindowEndTime: (() {
        final guardedValue = map['preMaintenanceWindowEndTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preMaintenanceWindowStartTime: (() {
        final guardedValue = map['preMaintenanceWindowStartTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
