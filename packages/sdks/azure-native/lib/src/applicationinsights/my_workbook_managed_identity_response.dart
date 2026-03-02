// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_workbook_user_assigned_identities_response.dart';

/// Customer Managed Identity
class MyWorkbookManagedIdentityResponse {
  /// The identity type.
  final pulumi.Input<String>? type;
  /// Customer Managed Identity
  final pulumi.Input<MyWorkbookUserAssignedIdentitiesResponse>? userAssignedIdentities;

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
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<MyWorkbookUserAssignedIdentitiesResponse, Map<String, dynamic>>(userAssignedIdentities, (value) => value.toMap()),
    };
  }

  factory MyWorkbookManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return MyWorkbookManagedIdentityResponse(
      type: map['type'] == null ? null : (map['type'] as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (MyWorkbookUserAssignedIdentitiesResponse.fromMap((map['userAssignedIdentities'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

