// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grantee.dart';
import 'permission_enum_value.dart';

/// Definition of Grant
class Grant {
  /// <p>The person being granted permissions.</p>
  final pulumi.Input<Grantee>? grantee;
  /// <p>Specifies the permission given to the grantee.</p>
  final pulumi.Input<PermissionEnumValue>? permission;

  /// Creates a new [Grant].
  /// [grantee] <p>The person being granted permissions.</p>
  /// [permission] <p>Specifies the permission given to the grantee.</p>
  Grant({
    this.grantee,
    this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantee': ?pulumi.Input.mapOptionalInputValue<Grantee, Map<String, dynamic>>(grantee, (value) => value.toMap()),
      'permission': ?pulumi.Input.mapOptionalInputValue<PermissionEnumValue, Map<String, dynamic>>(permission, (value) => value.toMap()),
    };
  }

  factory Grant.fromMap(Map<String, dynamic> map) {
    return Grant(
      grantee: map['grantee'] == null ? null : (Grantee.fromMap((map['grantee'] as Map).cast<String, dynamic>())).input(),
      permission: map['permission'] == null ? null : (PermissionEnumValue.fromMap((map['permission'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

