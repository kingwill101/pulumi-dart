// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mandatory_approver.dart';

/// ApprovalSettings Properties
class ApprovalSettings {
  /// Approval required for enclave connection creation (Required or NotRequired).
  final pulumi.Input<String>? connectionCreation;
  /// Approval required for enclave connection deletion (Required or NotRequired).
  final pulumi.Input<String>? connectionDeletion;
  /// Approval required for enclave connection update (Required or NotRequired).
  final pulumi.Input<String>? connectionUpdate;
  /// Approval required for virtual enclave creation (Required or NotRequired).
  final pulumi.Input<String>? enclaveCreation;
  /// Approval required for virtual enclave deletion (Required or NotRequired).
  final pulumi.Input<String>? enclaveDeletion;
  /// Approval required for endpoint creation (Required or NotRequired).
  final pulumi.Input<String>? endpointCreation;
  /// Approval required for endpoint deletion (Required or NotRequired).
  final pulumi.Input<String>? endpointDeletion;
  /// Approval required for endpoint update (Required or NotRequired).
  final pulumi.Input<String>? endpointUpdate;
  /// Approval required for toggling maintenance mode (Required or NotRequired).
  final pulumi.Input<String>? maintenanceMode;
  /// List of mandatory approvers for the approval request
  final pulumi.Input<List<MandatoryApprover>>? mandatoryApprovers;
  /// Minimum number of approvers required for the approval request
  final pulumi.Input<double>? minimumApproversRequired;
  /// Notification will be sent on any action taken (Approve/Reject) on an Approval Request
  final pulumi.Input<String>? notificationOnApprovalAction;
  /// Notification will be sent on creation of an Approval Request
  final pulumi.Input<String>? notificationOnApprovalCreation;
  /// Notification will be sent on deletion of an Approval Request
  final pulumi.Input<String>? notificationOnApprovalDeletion;
  /// Approval required for deploying service catalog templates (Required or NotRequired).
  final pulumi.Input<String>? serviceCatalogDeployment;

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
  ApprovalSettings({
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
      connectionCreation: map['connectionCreation'] == null ? null : (map['connectionCreation']! as String).input(),
      connectionDeletion: map['connectionDeletion'] == null ? null : (map['connectionDeletion']! as String).input(),
      connectionUpdate: map['connectionUpdate'] == null ? null : (map['connectionUpdate']! as String).input(),
      enclaveCreation: map['enclaveCreation'] == null ? null : (map['enclaveCreation']! as String).input(),
      enclaveDeletion: map['enclaveDeletion'] == null ? null : (map['enclaveDeletion']! as String).input(),
      endpointCreation: map['endpointCreation'] == null ? null : (map['endpointCreation']! as String).input(),
      endpointDeletion: map['endpointDeletion'] == null ? null : (map['endpointDeletion']! as String).input(),
      endpointUpdate: map['endpointUpdate'] == null ? null : (map['endpointUpdate']! as String).input(),
      maintenanceMode: map['maintenanceMode'] == null ? null : (map['maintenanceMode']! as String).input(),
      mandatoryApprovers: map['mandatoryApprovers'] == null ? null : (pulumi.Input.decodeList<MandatoryApprover>(map['mandatoryApprovers']!, (value) => MandatoryApprover.fromMap((value as Map).cast<String, dynamic>()))).input(),
      minimumApproversRequired: map['minimumApproversRequired'] == null ? null : (map['minimumApproversRequired']! as double).input(),
      notificationOnApprovalAction: map['notificationOnApprovalAction'] == null ? null : (map['notificationOnApprovalAction']! as String).input(),
      notificationOnApprovalCreation: map['notificationOnApprovalCreation'] == null ? null : (map['notificationOnApprovalCreation']! as String).input(),
      notificationOnApprovalDeletion: map['notificationOnApprovalDeletion'] == null ? null : (map['notificationOnApprovalDeletion']! as String).input(),
      serviceCatalogDeployment: map['serviceCatalogDeployment'] == null ? null : (map['serviceCatalogDeployment']! as String).input(),
    );
  }
}

