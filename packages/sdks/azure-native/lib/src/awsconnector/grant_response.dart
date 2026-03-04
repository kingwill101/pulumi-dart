// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grantee_response.dart';
import 'permission_enum_value_response.dart';

/// Definition of Grant
class GrantResponse {
  /// &lt;p&gt;The person being granted permissions.&lt;/p&gt;
  final pulumi.Input<GranteeResponse>? grantee;

  /// &lt;p&gt;Specifies the permission given to the grantee.&lt;/p&gt;
  final pulumi.Input<PermissionEnumValueResponse>? permission;

  /// Creates a new [GrantResponse].
  /// [grantee] &lt;p&gt;The person being granted permissions.&lt;/p&gt;
  /// [permission] &lt;p&gt;Specifies the permission given to the grantee.&lt;/p&gt;
  GrantResponse({this.grantee, this.permission});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantee':
          ?pulumi.Input.mapOptionalInputValue<
            GranteeResponse,
            Map<String, dynamic>
          >(grantee, (value) => value.toMap()),
      'permission':
          ?pulumi.Input.mapOptionalInputValue<
            PermissionEnumValueResponse,
            Map<String, dynamic>
          >(permission, (value) => value.toMap()),
    };
  }

  factory GrantResponse.fromMap(Map<String, dynamic> map) {
    return GrantResponse(
      grantee: (() {
        final guardedValue = map['grantee'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GranteeResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      permission: (() {
        final guardedValue = map['permission'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PermissionEnumValueResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
