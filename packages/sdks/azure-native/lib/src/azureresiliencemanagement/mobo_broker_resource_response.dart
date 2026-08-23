// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MoboBroker resource.
class MoboBrokerResourceResponse {
  /// The fully qualified resource ID of the MoboBroker resource.
  /// Example: `/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}`
  final pulumi.Input<String> id;

  /// Creates a new [MoboBrokerResourceResponse].
  /// [id] The fully qualified resource ID of the MoboBroker resource.
  const MoboBrokerResourceResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory MoboBrokerResourceResponse.fromMap(Map<String, dynamic> map) {
    return MoboBrokerResourceResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
