// ignore_for_file: unused_element, unnecessary_cast

import 'grantee.dart';
import 'permission_enum_value.dart';

/// Definition of Grant
class Grant {
  /// <p>The person being granted permissions.</p>
  final Grantee? grantee;
  /// <p>Specifies the permission given to the grantee.</p>
  final PermissionEnumValue? permission;

  /// Creates a new [Grant].
  /// [grantee] <p>The person being granted permissions.</p>
  /// [permission] <p>Specifies the permission given to the grantee.</p>
  Grant({
    this.grantee,
    this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantee': ?grantee == null ? null : grantee!.toMap(),
      'permission': ?permission == null ? null : permission!.toMap(),
    };
  }

  factory Grant.fromMap(Map<String, dynamic> map) {
    return Grant(
      grantee: map['grantee'] == null ? null : Grantee.fromMap((map['grantee'] as Map).cast<String, dynamic>()),
      permission: map['permission'] == null ? null : PermissionEnumValue.fromMap((map['permission'] as Map).cast<String, dynamic>()),
    );
  }
}

