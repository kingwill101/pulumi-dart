// ignore_for_file: unused_element, unnecessary_cast

import 'amount_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStudent.
class GetStudentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Student Budget
  final AmountResponse budget;
  /// Date student was added to the lab
  final String effectiveDate;
  /// Student Email
  final String email;
  /// Date this student is set to expire from the lab.
  final String expirationDate;
  /// First Name
  final String firstName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Last Name
  final String lastName;
  /// The name of the resource
  final String name;
  /// Student Role
  final String role;
  /// Student Lab Status
  final String status;
  /// Subscription alias
  final String? subscriptionAlias;
  /// Subscription Id
  final String subscriptionId;
  /// subscription invite last sent date
  final String? subscriptionInviteLastSentDate;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetStudentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [budget] Student Budget
  /// [effectiveDate] Date student was added to the lab
  /// [email] Student Email
  /// [expirationDate] Date this student is set to expire from the lab.
  /// [firstName] First Name
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [lastName] Last Name
  /// [name] The name of the resource
  /// [role] Student Role
  /// [status] Student Lab Status
  /// [subscriptionAlias] Subscription alias
  /// [subscriptionId] Subscription Id
  /// [subscriptionInviteLastSentDate] subscription invite last sent date
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetStudentResult({
    required this.azureApiVersion,
    required this.budget,
    required this.effectiveDate,
    required this.email,
    required this.expirationDate,
    required this.firstName,
    required this.id,
    required this.lastName,
    required this.name,
    required this.role,
    required this.status,
    this.subscriptionAlias,
    required this.subscriptionId,
    this.subscriptionInviteLastSentDate,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'budget': budget.toMap(),
      'effectiveDate': effectiveDate,
      'email': email,
      'expirationDate': expirationDate,
      'firstName': firstName,
      'id': id,
      'lastName': lastName,
      'name': name,
      'role': role,
      'status': status,
      'subscriptionAlias': ?subscriptionAlias,
      'subscriptionId': subscriptionId,
      'subscriptionInviteLastSentDate': ?subscriptionInviteLastSentDate,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetStudentResult.fromMap(Map<String, dynamic> map) {
    return GetStudentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      budget: AmountResponse.fromMap((map['budget']! as Map).cast<String, dynamic>()),
      effectiveDate: map['effectiveDate'] as String,
      email: map['email'] as String,
      expirationDate: map['expirationDate'] as String,
      firstName: map['firstName'] as String,
      id: map['id'] as String,
      lastName: map['lastName'] as String,
      name: map['name'] as String,
      role: map['role'] as String,
      status: map['status'] as String,
      subscriptionAlias: (() { final guardedValue = map['subscriptionAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptionId: map['subscriptionId'] as String,
      subscriptionInviteLastSentDate: (() { final guardedValue = map['subscriptionInviteLastSentDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

