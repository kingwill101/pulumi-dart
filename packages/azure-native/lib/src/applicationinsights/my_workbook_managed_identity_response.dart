// ignore_for_file: unused_element, unnecessary_cast

import 'my_workbook_user_assigned_identities_response.dart';

/// Customer Managed Identity
class MyWorkbookManagedIdentityResponse {
  /// The identity type.
  final String? type;
  /// Customer Managed Identity
  final MyWorkbookUserAssignedIdentitiesResponse? userAssignedIdentities;

  /// Creates a new [MyWorkbookManagedIdentityResponse].
  /// [type] The identity type.
  /// [userAssignedIdentities] Customer Managed Identity
  MyWorkbookManagedIdentityResponse({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : userAssignedIdentities!.toMap(),
    };
  }

  factory MyWorkbookManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return MyWorkbookManagedIdentityResponse(
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : MyWorkbookUserAssignedIdentitiesResponse.fromMap((map['userAssignedIdentities'] as Map).cast<String, dynamic>()),
    );
  }
}

