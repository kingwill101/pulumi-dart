// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grantee.dart';
import 'permission_enum_value.dart';

/// Definition of Grant
class Grant {
  /// &lt;p&gt;The person being granted permissions.&lt;/p&gt;
  final pulumi.Input<Grantee>? grantee;

  /// &lt;p&gt;Specifies the permission given to the grantee.&lt;/p&gt;
  final pulumi.Input<PermissionEnumValue>? permission;

  /// Creates a new [Grant].
  /// [grantee] &lt;p&gt;The person being granted permissions.&lt;/p&gt;
  /// [permission] &lt;p&gt;Specifies the permission given to the grantee.&lt;/p&gt;
  Grant({this.grantee, this.permission});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantee':
          ?pulumi.Input.mapOptionalInputValue<Grantee, Map<String, dynamic>>(
            grantee,
            (value) => value.toMap(),
          ),
      'permission':
          ?pulumi.Input.mapOptionalInputValue<
            PermissionEnumValue,
            Map<String, dynamic>
          >(permission, (value) => value.toMap()),
    };
  }

  factory Grant.fromMap(Map<String, dynamic> map) {
    return Grant(
      grantee: (() {
        final guardedValue = map['grantee'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Grantee.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      permission: (() {
        final guardedValue = map['permission'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PermissionEnumValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
