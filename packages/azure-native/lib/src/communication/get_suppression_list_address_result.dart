// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSuppressionListAddress.
class GetSuppressionListAddressResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The location where the SuppressionListAddress data is stored at rest. This value is inherited from the parent Domains resource.
  final String dataLocation;
  /// Email address of the recipient.
  final String email;
  /// The first name of the email recipient.
  final String? firstName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The date the address was last updated in a suppression list.
  final String lastModified;
  /// The last name of the email recipient.
  final String? lastName;
  /// The name of the resource
  final String name;
  /// An optional property to provide contextual notes or a description for an address.
  final String? notes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSuppressionListAddressResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataLocation] The location where the SuppressionListAddress data is stored at rest. This value is inherited from the parent Domains resource.
  /// [email] Email address of the recipient.
  /// [firstName] The first name of the email recipient.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastModified] The date the address was last updated in a suppression list.
  /// [lastName] The last name of the email recipient.
  /// [name] The name of the resource
  /// [notes] An optional property to provide contextual notes or a description for an address.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetSuppressionListAddressResult({
    required this.azureApiVersion,
    required this.dataLocation,
    required this.email,
    this.firstName,
    required this.id,
    required this.lastModified,
    this.lastName,
    required this.name,
    this.notes,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dataLocation': dataLocation,
      'email': email,
      'firstName': ?firstName,
      'id': id,
      'lastModified': lastModified,
      'lastName': ?lastName,
      'name': name,
      'notes': ?notes,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetSuppressionListAddressResult.fromMap(Map<String, dynamic> map) {
    return GetSuppressionListAddressResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataLocation: map['dataLocation'] as String,
      email: map['email'] as String,
      firstName: map['firstName'] == null ? null : map['firstName'] as String,
      id: map['id'] as String,
      lastModified: map['lastModified'] as String,
      lastName: map['lastName'] == null ? null : map['lastName'] as String,
      name: map['name'] as String,
      notes: map['notes'] == null ? null : map['notes'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

