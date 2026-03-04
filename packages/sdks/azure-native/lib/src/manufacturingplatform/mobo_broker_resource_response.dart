// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MoboBroker resource.
class MoboBrokerResourceResponse {
  /// Resource Id of MoboBrokerResource
  final pulumi.Input<String> id;

  /// Creates a new [MoboBrokerResourceResponse].
  /// [id] Resource Id of MoboBrokerResource
  MoboBrokerResourceResponse({required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  factory MoboBrokerResourceResponse.fromMap(Map<String, dynamic> map) {
    return MoboBrokerResourceResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
