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
      'isCustomerInitiatedMaintenanceAllowed': ?isCustomerInitiatedMaintenanceAllowed,
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
      isCustomerInitiatedMaintenanceAllowed: map['isCustomerInitiatedMaintenanceAllowed'] == null ? null : (map['isCustomerInitiatedMaintenanceAllowed']! as bool).input(),
      lastOperationMessage: map['lastOperationMessage'] == null ? null : (map['lastOperationMessage']! as String).input(),
      lastOperationResultCode: map['lastOperationResultCode'] == null ? null : (map['lastOperationResultCode']! as String).input(),
      maintenanceWindowEndTime: map['maintenanceWindowEndTime'] == null ? null : (map['maintenanceWindowEndTime']! as String).input(),
      maintenanceWindowStartTime: map['maintenanceWindowStartTime'] == null ? null : (map['maintenanceWindowStartTime']! as String).input(),
      preMaintenanceWindowEndTime: map['preMaintenanceWindowEndTime'] == null ? null : (map['preMaintenanceWindowEndTime']! as String).input(),
      preMaintenanceWindowStartTime: map['preMaintenanceWindowStartTime'] == null ? null : (map['preMaintenanceWindowStartTime']! as String).input(),
    );
  }
}

