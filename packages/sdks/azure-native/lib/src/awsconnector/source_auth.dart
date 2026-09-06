// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_auth_type_enum_value.dart';

/// Definition of SourceAuth
class SourceAuth {
  /// &lt;p&gt;The resource value that applies to the specified authorization type.&lt;/p&gt;
  final pulumi.Input<String?>? resource;
  /// &lt;p&gt;The authorization type to use. Valid options are OAUTH or CODECONNECTIONS.&lt;/p&gt;
  final pulumi.Input<SourceAuthTypeEnumValue?>? type;

  /// Creates a new [SourceAuth].
  /// [resource] &lt;p&gt;The resource value that applies to the specified authorization type.&lt;/p&gt;
  /// [type] &lt;p&gt;The authorization type to use. Valid options are OAUTH or CODECONNECTIONS.&lt;/p&gt;
  const SourceAuth({
    this.resource,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?resource,
      'type': ?pulumi.Input.mapOptionalInputValue<SourceAuthTypeEnumValue, Map<String, dynamic>>(type, (value) => value.toMap()),
    };
  }

  factory SourceAuth.fromMap(Map<String, dynamic> map) {
    return SourceAuth(
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceAuthTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
