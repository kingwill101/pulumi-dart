// ignore_for_file: unused_element, unnecessary_cast

import 'resource_operation_error_response.dart';
import 'system_data_response.dart';

/// Result data returned by getUser.
class GetUserResult {
  /// The amount of usage quota time the user gets in addition to the lab usage quota.
  final String? additionalUsageQuota;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Display name of the user, for example user's full name.
  final String displayName;
  /// Email address of the user.
  final String email;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Date and time when the invitation message was sent to the user.
  final String invitationSent;
  /// State of the invitation message for the user.
  final String invitationState;
  /// The name of the resource
  final String name;
  /// Current provisioning state of the user resource.
  final String provisioningState;
  /// State of the user's registration within the lab.
  final String registrationState;
  /// Error details of last operation done on lab plan.
  final ResourceOperationErrorResponse resourceOperationError;
  /// Metadata pertaining to creation and last modification of the user resource.
  final SystemDataResponse systemData;
  /// How long the user has used their virtual machines in this lab.
  final String totalUsage;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
    required this.azureApiVersion,
    required this.displayName,
    required this.email,
    required this.id,
    required this.invitationSent,
    required this.invitationState,
    required this.name,
    required this.provisioningState,
    required this.registrationState,
    required this.resourceOperationError,
    required this.systemData,
    required this.totalUsage,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalUsageQuota': ?additionalUsageQuota,
      'azureApiVersion': azureApiVersion,
      'displayName': displayName,
      'email': email,
      'id': id,
      'invitationSent': invitationSent,
      'invitationState': invitationState,
      'name': name,
      'provisioningState': provisioningState,
      'registrationState': registrationState,
      'resourceOperationError': resourceOperationError.toMap(),
      'systemData': systemData.toMap(),
      'totalUsage': totalUsage,
      'type': type,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      additionalUsageQuota: (() { final guardedValue = map['additionalUsageQuota']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      displayName: map['displayName'] as String,
      email: map['email'] as String,
      id: map['id'] as String,
      invitationSent: map['invitationSent'] as String,
      invitationState: map['invitationState'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      registrationState: map['registrationState'] as String,
      resourceOperationError: ResourceOperationErrorResponse.fromMap((map['resourceOperationError']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      totalUsage: map['totalUsage'] as String,
      type: map['type'] as String,
    );
  }
}
