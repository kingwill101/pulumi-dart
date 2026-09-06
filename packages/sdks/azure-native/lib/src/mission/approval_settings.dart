// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mandatory_approver.dart';

/// ApprovalSettings Properties
class ApprovalSettings {
  /// Approval required for enclave connection creation (Required or NotRequired).
  final pulumi.Input<dynamic>? connectionCreation;
  /// Approval required for enclave connection deletion (Required or NotRequired).
  final pulumi.Input<dynamic>? connectionDeletion;
  /// Approval required for enclave connection update (Required or NotRequired).
  final pulumi.Input<dynamic>? connectionUpdate;
  /// Approval required for virtual enclave creation (Required or NotRequired).
  final pulumi.Input<dynamic>? enclaveCreation;
  /// Approval required for virtual enclave deletion (Required or NotRequired).
  final pulumi.Input<dynamic>? enclaveDeletion;
  /// Approval required for endpoint creation (Required or NotRequired).
  final pulumi.Input<dynamic>? endpointCreation;
  /// Approval required for endpoint deletion (Required or NotRequired).
  final pulumi.Input<dynamic>? endpointDeletion;
  /// Approval required for endpoint update (Required or NotRequired).
  final pulumi.Input<dynamic>? endpointUpdate;
  /// Approval required for toggling maintenance mode (Required or NotRequired).
  final pulumi.Input<dynamic>? maintenanceMode;
  /// List of mandatory approvers for the approval request
  final pulumi.Input<List<MandatoryApprover>?>? mandatoryApprovers;
  /// Minimum number of approvers required for the approval request
  final pulumi.Input<double?>? minimumApproversRequired;
  /// Notification will be sent on any action taken (Approve/Reject) on an Approval Request
  final pulumi.Input<dynamic>? notificationOnApprovalAction;
  /// Notification will be sent on creation of an Approval Request
  final pulumi.Input<dynamic>? notificationOnApprovalCreation;
  /// Notification will be sent on deletion of an Approval Request
  final pulumi.Input<dynamic>? notificationOnApprovalDeletion;
  /// Approval required for deploying service catalog templates (Required or NotRequired).
  final pulumi.Input<dynamic>? serviceCatalogDeployment;

  /// Creates a new [ApprovalSettings].
  /// [connectionCreation] Approval required for enclave connection creation (Required or NotRequired).
  /// [connectionDeletion] Approval required for enclave connection deletion (Required or NotRequired).
  /// [connectionUpdate] Approval required for enclave connection update (Required or NotRequired).
  /// [enclaveCreation] Approval required for virtual enclave creation (Required or NotRequired).
  /// [enclaveDeletion] Approval required for virtual enclave deletion (Required or NotRequired).
  /// [endpointCreation] Approval required for endpoint creation (Required or NotRequired).
  /// [endpointDeletion] Approval required for endpoint deletion (Required or NotRequired).
  /// [endpointUpdate] Approval required for endpoint update (Required or NotRequired).
  /// [maintenanceMode] Approval required for toggling maintenance mode (Required or NotRequired).
  /// [mandatoryApprovers] List of mandatory approvers for the approval request
  /// [minimumApproversRequired] Minimum number of approvers required for the approval request
  /// [notificationOnApprovalAction] Notification will be sent on any action taken (Approve/Reject) on an Approval Request
  /// [notificationOnApprovalCreation] Notification will be sent on creation of an Approval Request
  /// [notificationOnApprovalDeletion] Notification will be sent on deletion of an Approval Request
  /// [serviceCatalogDeployment] Approval required for deploying service catalog templates (Required or NotRequired).
  const ApprovalSettings({
    this.connectionCreation,
    this.connectionDeletion,
    this.connectionUpdate,
    this.enclaveCreation,
    this.enclaveDeletion,
    this.endpointCreation,
    this.endpointDeletion,
    this.endpointUpdate,
    this.maintenanceMode,
    this.mandatoryApprovers,
    this.minimumApproversRequired,
    this.notificationOnApprovalAction,
    this.notificationOnApprovalCreation,
    this.notificationOnApprovalDeletion,
    this.serviceCatalogDeployment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionCreation': ?connectionCreation,
      'connectionDeletion': ?connectionDeletion,
      'connectionUpdate': ?connectionUpdate,
      'enclaveCreation': ?enclaveCreation,
      'enclaveDeletion': ?enclaveDeletion,
      'endpointCreation': ?endpointCreation,
      'endpointDeletion': ?endpointDeletion,
      'endpointUpdate': ?endpointUpdate,
      'maintenanceMode': ?maintenanceMode,
      'mandatoryApprovers': ?pulumi.Input.mapOptionalInputValue<List<MandatoryApprover>, List<Map<String, dynamic>>>(mandatoryApprovers, (value) => pulumi.Input.encodeList<MandatoryApprover, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minimumApproversRequired': ?minimumApproversRequired,
      'notificationOnApprovalAction': ?notificationOnApprovalAction,
      'notificationOnApprovalCreation': ?notificationOnApprovalCreation,
      'notificationOnApprovalDeletion': ?notificationOnApprovalDeletion,
      'serviceCatalogDeployment': ?serviceCatalogDeployment,
    };
  }

  factory ApprovalSettings.fromMap(Map<String, dynamic> map) {
    return ApprovalSettings(
      connectionCreation: (() { final guardedValue = map['connectionCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectionDeletion: (() { final guardedValue = map['connectionDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectionUpdate: (() { final guardedValue = map['connectionUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      enclaveCreation: (() { final guardedValue = map['enclaveCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      enclaveDeletion: (() { final guardedValue = map['enclaveDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      endpointCreation: (() { final guardedValue = map['endpointCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      endpointDeletion: (() { final guardedValue = map['endpointDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      endpointUpdate: (() { final guardedValue = map['endpointUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      maintenanceMode: (() { final guardedValue = map['maintenanceMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      mandatoryApprovers: (() { final guardedValue = map['mandatoryApprovers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MandatoryApprover>(guardedValue, (value) => MandatoryApprover.fromMap((value as Map).cast<String, dynamic>()))); })(),
      minimumApproversRequired: (() { final guardedValue = map['minimumApproversRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      notificationOnApprovalAction: (() { final guardedValue = map['notificationOnApprovalAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      notificationOnApprovalCreation: (() { final guardedValue = map['notificationOnApprovalCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      notificationOnApprovalDeletion: (() { final guardedValue = map['notificationOnApprovalDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      serviceCatalogDeployment: (() { final guardedValue = map['serviceCatalogDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
