// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_auth_type_enum_value.dart';

/// Definition of SourceAuth
class SourceAuth {
  /// <p>The resource value that applies to the specified authorization type.</p>
  final pulumi.Input<String>? resource;
  /// <p>The authorization type to use. Valid options are OAUTH or CODECONNECTIONS.</p>
  final pulumi.Input<SourceAuthTypeEnumValue>? type;

  /// Creates a new [SourceAuth].
  /// [resource] <p>The resource value that applies to the specified authorization type.</p>
  /// [type] <p>The authorization type to use. Valid options are OAUTH or CODECONNECTIONS.</p>
  SourceAuth({
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
      resource: map['resource'] == null ? null : (map['resource'] as String).input(),
      type: map['type'] == null ? null : (SourceAuthTypeEnumValue.fromMap((map['type'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

