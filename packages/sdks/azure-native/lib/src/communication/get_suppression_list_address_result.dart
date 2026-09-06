// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSuppressionListAddress.
class GetSuppressionListAddressResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The location where the SuppressionListAddress data is stored at rest. This value is inherited from the parent Domains resource.
  final String? dataLocation;
  /// Email address of the recipient.
  final String? email;
  /// The first name of the email recipient.
  final String? firstName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The date the address was last updated in a suppression list.
  final String? lastModified;
  /// The last name of the email recipient.
  final String? lastName;
  /// The name of the resource
  final String? name;
  /// An optional property to provide contextual notes or a description for an address.
  final String? notes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetSuppressionListAddressResult({
    this.azureApiVersion,
    this.dataLocation,
    this.email,
    this.firstName,
    this.id,
    this.lastModified,
    this.lastName,
    this.name,
    this.notes,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dataLocation': ?dataLocation,
      'email': ?email,
      'firstName': ?firstName,
      'id': ?id,
      'lastModified': ?lastModified,
      'lastName': ?lastName,
      'name': ?name,
      'notes': ?notes,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetSuppressionListAddressResult.fromMap(Map<String, dynamic> map) {
    return GetSuppressionListAddressResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataLocation: (() { final guardedValue = map['dataLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
