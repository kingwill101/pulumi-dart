// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_contract_properties_response.dart';
import 'user_identity_contract_response.dart';

/// Result data returned by getUser.
class GetUserResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Email address.
  final String? email;
  /// First name.
  final String? firstName;
  /// Collection of groups user is part of.
  final List<GroupContractPropertiesResponse>? groups;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Collection of user identities.
  final List<UserIdentityContractResponse>? identities;
  /// Last name.
  final String? lastName;
  /// The name of the resource
  final String? name;
  /// Optional note about a user set by the administrator.
  final String? note;
  /// Date of user registration. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  final String? registrationDate;
  /// Account state. Specifies whether the user is active or not. Blocked users are unable to sign into the developer portal or call any APIs of subscribed products. Default state is Active.
  final String? state;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetUserResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [email] Email address.
  /// [firstName] First name.
  /// [groups] Collection of groups user is part of.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identities] Collection of user identities.
  /// [lastName] Last name.
  /// [name] The name of the resource
  /// [note] Optional note about a user set by the administrator.
  /// [registrationDate] Date of user registration. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  /// [state] Account state. Specifies whether the user is active or not. Blocked users are unable to sign into the developer portal or call any APIs of subscribed products. Default state is Active.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetUserResult({
    this.azureApiVersion,
    this.email,
    this.firstName,
    this.groups,
    this.id,
    this.identities,
    this.lastName,
    this.name,
    this.note,
    this.registrationDate,
    String? state,
    this.type,
  }) : state = state ?? 'active';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'email': ?email,
      'firstName': ?firstName,
      'groups': ?(() { final guardedValue = groups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GroupContractPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<UserIdentityContractResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'lastName': ?lastName,
      'name': ?name,
      'note': ?note,
      'registrationDate': ?registrationDate,
      'state': ?state,
      'type': ?type,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupContractPropertiesResponse>(guardedValue, (value) => GroupContractPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserIdentityContractResponse>(guardedValue, (value) => UserIdentityContractResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      note: (() { final guardedValue = map['note']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registrationDate: (() { final guardedValue = map['registrationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
