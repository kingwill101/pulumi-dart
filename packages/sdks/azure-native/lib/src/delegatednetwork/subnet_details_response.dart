// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of orchestrator
class SubnetDetailsResponse {
  /// subnet arm resource id
  final pulumi.Input<String>? id;

  /// Creates a new [SubnetDetailsResponse].
  /// [id] subnet arm resource id
  const SubnetDetailsResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SubnetDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SubnetDetailsResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
