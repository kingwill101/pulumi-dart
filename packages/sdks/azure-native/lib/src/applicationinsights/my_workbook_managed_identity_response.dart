// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_workbook_user_assigned_identities_response.dart';

/// Customer Managed Identity
class MyWorkbookManagedIdentityResponse {
  /// The identity type.
  final pulumi.Input<String?>? type;
  /// Customer Managed Identity
  final pulumi.Input<MyWorkbookUserAssignedIdentitiesResponse?>? userAssignedIdentities;

  /// Creates a new [MyWorkbookManagedIdentityResponse].
  /// [type] The identity type.
  /// [userAssignedIdentities] Customer Managed Identity
  const MyWorkbookManagedIdentityResponse({
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
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MyWorkbookUserAssignedIdentitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
