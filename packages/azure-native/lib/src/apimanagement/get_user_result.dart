// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_contract_properties_response.dart';
import 'user_identity_contract_response.dart';

/// Result data returned by getUser.
class GetUserResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Email address.
  final String? email;
  /// First name.
  final String? firstName;
  /// Collection of groups user is part of.
  final List<GroupContractPropertiesResponse> groups;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Collection of user identities.
  final List<UserIdentityContractResponse>? identities;
  /// Last name.
  final String? lastName;
  /// The name of the resource
  final String name;
  /// Optional note about a user set by the administrator.
  final String? note;
  /// Date of user registration. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  final String? registrationDate;
  /// Account state. Specifies whether the user is active or not. Blocked users are unable to sign into the developer portal or call any APIs of subscribed products. Default state is Active.
  final String? state;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
    required this.azureApiVersion,
    this.email,
    this.firstName,
    required this.groups,
    required this.id,
    this.identities,
    this.lastName,
    required this.name,
    this.note,
    this.registrationDate,
    this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'email': ?email,
      'firstName': ?firstName,
      'groups': pulumi.Input.encodeList<GroupContractPropertiesResponse, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'identities': ?identities == null ? null : pulumi.Input.encodeList<UserIdentityContractResponse, Map<String, dynamic>>(identities!, (value) => value.toMap()),
      'lastName': ?lastName,
      'name': name,
      'note': ?note,
      'registrationDate': ?registrationDate,
      'state': ?state,
      'type': type,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      azureApiVersion: map['azureApiVersion'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      firstName: map['firstName'] == null ? null : map['firstName'] as String,
      groups: pulumi.Input.decodeList<GroupContractPropertiesResponse>(map['groups'], (value) => GroupContractPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identities: map['identities'] == null ? null : pulumi.Input.decodeList<UserIdentityContractResponse>(map['identities'], (value) => UserIdentityContractResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastName: map['lastName'] == null ? null : map['lastName'] as String,
      name: map['name'] as String,
      note: map['note'] == null ? null : map['note'] as String,
      registrationDate: map['registrationDate'] == null ? null : map['registrationDate'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
    );
  }
}

