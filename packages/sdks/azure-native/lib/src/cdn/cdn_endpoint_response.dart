// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the ARM Resource ID for the linked endpoints
class CdnEndpointResponse {
  /// ARM Resource ID string.
  final pulumi.Input<String>? id;

  /// Creates a new [CdnEndpointResponse].
  /// [id] ARM Resource ID string.
  CdnEndpointResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory CdnEndpointResponse.fromMap(Map<String, dynamic> map) {
    return CdnEndpointResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

