// ignore_for_file: unused_element, unnecessary_cast

import 'amount_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStudent.
class GetStudentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Student Budget
  final AmountResponse? budget;
  /// Date student was added to the lab
  final String? effectiveDate;
  /// Student Email
  final String? email;
  /// Date this student is set to expire from the lab.
  final String? expirationDate;
  /// First Name
  final String? firstName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Last Name
  final String? lastName;
  /// The name of the resource
  final String? name;
  /// Student Role
  final String? role;
  /// Student Lab Status
  final String? status;
  /// Subscription alias
  final String? subscriptionAlias;
  /// Subscription Id
  final String? subscriptionId;
  /// subscription invite last sent date
  final String? subscriptionInviteLastSentDate;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
    this.azureApiVersion,
    this.budget,
    this.effectiveDate,
    this.email,
    this.expirationDate,
    this.firstName,
    this.id,
    this.lastName,
    this.name,
    this.role,
    this.status,
    this.subscriptionAlias,
    this.subscriptionId,
    this.subscriptionInviteLastSentDate,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'budget': ?budget?.toMap(),
      'effectiveDate': ?effectiveDate,
      'email': ?email,
      'expirationDate': ?expirationDate,
      'firstName': ?firstName,
      'id': ?id,
      'lastName': ?lastName,
      'name': ?name,
      'role': ?role,
      'status': ?status,
      'subscriptionAlias': ?subscriptionAlias,
      'subscriptionId': ?subscriptionId,
      'subscriptionInviteLastSentDate': ?subscriptionInviteLastSentDate,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetStudentResult.fromMap(Map<String, dynamic> map) {
    return GetStudentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      budget: (() { final guardedValue = map['budget']; if (guardedValue == null) return null; return AmountResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      effectiveDate: (() { final guardedValue = map['effectiveDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptionAlias: (() { final guardedValue = map['subscriptionAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptionInviteLastSentDate: (() { final guardedValue = map['subscriptionInviteLastSentDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
