// ignore_for_file: unused_element, unnecessary_cast

import 'amount_response.dart';
import 'system_data_response.dart';

/// Result data returned by getLab.
class GetLabResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Default monetary cap for each student in this lab
  final AmountResponse budgetPerStudent;
  /// The type of currency being used for the value.
  final String? currency;
  /// Detail description of this lab
  final String description;
  /// Lab Display Name
  final String displayName;
  /// Lab creation date
  final String effectiveDate;
  /// Default expiration date for each student in this lab
  final String expirationDate;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// invitation code for redeemable lab
  final String invitationCode;
  /// the total number of students that can be accepted to the lab.
  final double maxStudentCount;
  /// The name of the resource
  final String name;
  /// The status of this lab
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Total budget
  final AmountResponse totalBudget;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Amount value.
  final double? value;

  /// Creates a new [GetLabResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [budgetPerStudent] Default monetary cap for each student in this lab
  /// [currency] The type of currency being used for the value.
  /// [description] Detail description of this lab
  /// [displayName] Lab Display Name
  /// [effectiveDate] Lab creation date
  /// [expirationDate] Default expiration date for each student in this lab
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [invitationCode] invitation code for redeemable lab
  /// [maxStudentCount] the total number of students that can be accepted to the lab.
  /// [name] The name of the resource
  /// [status] The status of this lab
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [totalBudget] Total budget
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [value] Amount value.
  const GetLabResult({
    required this.azureApiVersion,
    required this.budgetPerStudent,
    this.currency,
    required this.description,
    required this.displayName,
    required this.effectiveDate,
    required this.expirationDate,
    required this.id,
    required this.invitationCode,
    required this.maxStudentCount,
    required this.name,
    required this.status,
    required this.systemData,
    required this.totalBudget,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'budgetPerStudent': budgetPerStudent.toMap(),
      'currency': ?currency,
      'description': description,
      'displayName': displayName,
      'effectiveDate': effectiveDate,
      'expirationDate': expirationDate,
      'id': id,
      'invitationCode': invitationCode,
      'maxStudentCount': maxStudentCount,
      'name': name,
      'status': status,
      'systemData': systemData.toMap(),
      'totalBudget': totalBudget.toMap(),
      'type': type,
      'value': ?value,
    };
  }

  factory GetLabResult.fromMap(Map<String, dynamic> map) {
    return GetLabResult(
      azureApiVersion: map['azureApiVersion'] as String,
      budgetPerStudent: AmountResponse.fromMap((map['budgetPerStudent']! as Map).cast<String, dynamic>()),
      currency: (() { final guardedValue = map['currency']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      effectiveDate: map['effectiveDate'] as String,
      expirationDate: map['expirationDate'] as String,
      id: map['id'] as String,
      invitationCode: map['invitationCode'] as String,
      maxStudentCount: map['maxStudentCount'] as double,
      name: map['name'] as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      totalBudget: AmountResponse.fromMap((map['totalBudget']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as double; })(),
    );
  }
}
