// ignore_for_file: unused_element, unnecessary_cast

import 'resource_operation_error_response.dart';
import 'system_data_response.dart';

/// Result data returned by getUser.
class GetUserResult {
  /// The amount of usage quota time the user gets in addition to the lab usage quota.
  final String? additionalUsageQuota;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Display name of the user, for example user's full name.
  final String? displayName;
  /// Email address of the user.
  final String? email;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Date and time when the invitation message was sent to the user.
  final String? invitationSent;
  /// State of the invitation message for the user.
  final String? invitationState;
  /// The name of the resource
  final String? name;
  /// Current provisioning state of the user resource.
  final String? provisioningState;
  /// State of the user's registration within the lab.
  final String? registrationState;
  /// Error details of last operation done on lab plan.
  final ResourceOperationErrorResponse? resourceOperationError;
  /// Metadata pertaining to creation and last modification of the user resource.
  final SystemDataResponse? systemData;
  /// How long the user has used their virtual machines in this lab.
  final String? totalUsage;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetUserResult].
  /// [additionalUsageQuota] The amount of usage quota time the user gets in addition to the lab usage quota.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [displayName] Display name of the user, for example user's full name.
  /// [email] Email address of the user.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [invitationSent] Date and time when the invitation message was sent to the user.
  /// [invitationState] State of the invitation message for the user.
  /// [name] The name of the resource
  /// [provisioningState] Current provisioning state of the user resource.
  /// [registrationState] State of the user's registration within the lab.
  /// [resourceOperationError] Error details of last operation done on lab plan.
  /// [systemData] Metadata pertaining to creation and last modification of the user resource.
  /// [totalUsage] How long the user has used their virtual machines in this lab.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetUserResult({
    this.additionalUsageQuota,
    this.azureApiVersion,
    this.displayName,
    this.email,
    this.id,
    this.invitationSent,
    this.invitationState,
    this.name,
    this.provisioningState,
    this.registrationState,
    this.resourceOperationError,
    this.systemData,
    this.totalUsage,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalUsageQuota': ?additionalUsageQuota,
      'azureApiVersion': ?azureApiVersion,
      'displayName': ?displayName,
      'email': ?email,
      'id': ?id,
      'invitationSent': ?invitationSent,
      'invitationState': ?invitationState,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'registrationState': ?registrationState,
      'resourceOperationError': ?resourceOperationError?.toMap(),
      'systemData': ?systemData?.toMap(),
      'totalUsage': ?totalUsage,
      'type': ?type,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      additionalUsageQuota: (() { final guardedValue = map['additionalUsageQuota']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      invitationSent: (() { final guardedValue = map['invitationSent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      invitationState: (() { final guardedValue = map['invitationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registrationState: (() { final guardedValue = map['registrationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceOperationError: (() { final guardedValue = map['resourceOperationError']; if (guardedValue == null) return null; return ResourceOperationErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      totalUsage: (() { final guardedValue = map['totalUsage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
