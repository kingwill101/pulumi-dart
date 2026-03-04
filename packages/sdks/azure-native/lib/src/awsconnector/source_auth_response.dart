// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_auth_type_enum_value_response.dart';

/// Definition of SourceAuth
class SourceAuthResponse {
  /// &lt;p&gt;The resource value that applies to the specified authorization type.&lt;/p&gt;
  final pulumi.Input<String>? resource;

  /// &lt;p&gt;The authorization type to use. Valid options are OAUTH or CODECONNECTIONS.&lt;/p&gt;
  final pulumi.Input<SourceAuthTypeEnumValueResponse>? type;

  /// Creates a new [SourceAuthResponse].
  /// [resource] &lt;p&gt;The resource value that applies to the specified authorization type.&lt;/p&gt;
  /// [type] &lt;p&gt;The authorization type to use. Valid options are OAUTH or CODECONNECTIONS.&lt;/p&gt;
  SourceAuthResponse({this.resource, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?resource,
      'type':
          ?pulumi.Input.mapOptionalInputValue<
            SourceAuthTypeEnumValueResponse,
            Map<String, dynamic>
          >(type, (value) => value.toMap()),
    };
  }

  factory SourceAuthResponse.fromMap(Map<String, dynamic> map) {
    return SourceAuthResponse(
      resource: (() {
        final guardedValue = map['resource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SourceAuthTypeEnumValueResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
