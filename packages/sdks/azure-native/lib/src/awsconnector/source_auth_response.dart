// ignore_for_file: unused_element, unnecessary_cast

import 'source_auth_type_enum_value_response.dart';

/// Definition of SourceAuth
class SourceAuthResponse {
  /// <p>The resource value that applies to the specified authorization type.</p>
  final String? resource;
  /// <p>The authorization type to use. Valid options are OAUTH or CODECONNECTIONS.</p>
  final SourceAuthTypeEnumValueResponse? type;

  /// Creates a new [SourceAuthResponse].
  /// [resource] <p>The resource value that applies to the specified authorization type.</p>
  /// [type] <p>The authorization type to use. Valid options are OAUTH or CODECONNECTIONS.</p>
  SourceAuthResponse({
    this.resource,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?resource,
      'type': ?type == null ? null : type!.toMap(),
    };
  }

  factory SourceAuthResponse.fromMap(Map<String, dynamic> map) {
    return SourceAuthResponse(
      resource: map['resource'] == null ? null : map['resource'] as String,
      type: map['type'] == null ? null : SourceAuthTypeEnumValueResponse.fromMap((map['type'] as Map).cast<String, dynamic>()),
    );
  }
}

