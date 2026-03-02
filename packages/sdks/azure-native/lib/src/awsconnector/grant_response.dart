// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grantee_response.dart';
import 'permission_enum_value_response.dart';

/// Definition of Grant
class GrantResponse {
  /// <p>The person being granted permissions.</p>
  final pulumi.Input<GranteeResponse>? grantee;
  /// <p>Specifies the permission given to the grantee.</p>
  final pulumi.Input<PermissionEnumValueResponse>? permission;

  /// Creates a new [GrantResponse].
  /// [grantee] <p>The person being granted permissions.</p>
  /// [permission] <p>Specifies the permission given to the grantee.</p>
  GrantResponse({
    this.grantee,
    this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantee': ?pulumi.Input.mapOptionalInputValue<GranteeResponse, Map<String, dynamic>>(grantee, (value) => value.toMap()),
      'permission': ?pulumi.Input.mapOptionalInputValue<PermissionEnumValueResponse, Map<String, dynamic>>(permission, (value) => value.toMap()),
    };
  }

  factory GrantResponse.fromMap(Map<String, dynamic> map) {
    return GrantResponse(
      grantee: map['grantee'] == null ? null : (GranteeResponse.fromMap((map['grantee']! as Map).cast<String, dynamic>())).input(),
      permission: map['permission'] == null ? null : (PermissionEnumValueResponse.fromMap((map['permission']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

