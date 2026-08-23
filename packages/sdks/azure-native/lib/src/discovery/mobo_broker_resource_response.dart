// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed-On-Behalf-Of broker resource. This resource is created by the Resource Provider to manage some resources on behalf of the user.
class MoboBrokerResourceResponse {
  /// Resource identifier of a Managed-On-Behalf-Of broker resource
  final pulumi.Input<String>? id;

  /// Creates a new [MoboBrokerResourceResponse].
  /// [id] Resource identifier of a Managed-On-Behalf-Of broker resource
  const MoboBrokerResourceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory MoboBrokerResourceResponse.fromMap(Map<String, dynamic> map) {
    return MoboBrokerResourceResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
