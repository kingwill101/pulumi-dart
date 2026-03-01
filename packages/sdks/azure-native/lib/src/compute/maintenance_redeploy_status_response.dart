// ignore_for_file: unused_element, unnecessary_cast


/// Maintenance Operation Status.
class MaintenanceRedeployStatusResponse {
  /// True, if customer is allowed to perform Maintenance.
  final bool? isCustomerInitiatedMaintenanceAllowed;
  /// Message returned for the last Maintenance Operation.
  final String? lastOperationMessage;
  /// The Last Maintenance Operation Result Code.
  final String? lastOperationResultCode;
  /// End Time for the Maintenance Window.
  final String? maintenanceWindowEndTime;
  /// Start Time for the Maintenance Window.
  final String? maintenanceWindowStartTime;
  /// End Time for the Pre Maintenance Window.
  final String? preMaintenanceWindowEndTime;
  /// Start Time for the Pre Maintenance Window.
  final String? preMaintenanceWindowStartTime;

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
      isCustomerInitiatedMaintenanceAllowed: map['isCustomerInitiatedMaintenanceAllowed'] == null ? null : map['isCustomerInitiatedMaintenanceAllowed'] as bool,
      lastOperationMessage: map['lastOperationMessage'] == null ? null : map['lastOperationMessage'] as String,
      lastOperationResultCode: map['lastOperationResultCode'] == null ? null : map['lastOperationResultCode'] as String,
      maintenanceWindowEndTime: map['maintenanceWindowEndTime'] == null ? null : map['maintenanceWindowEndTime'] as String,
      maintenanceWindowStartTime: map['maintenanceWindowStartTime'] == null ? null : map['maintenanceWindowStartTime'] as String,
      preMaintenanceWindowEndTime: map['preMaintenanceWindowEndTime'] == null ? null : map['preMaintenanceWindowEndTime'] as String,
      preMaintenanceWindowStartTime: map['preMaintenanceWindowStartTime'] == null ? null : map['preMaintenanceWindowStartTime'] as String,
    );
  }
}

