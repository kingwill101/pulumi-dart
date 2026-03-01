// ignore_for_file: unused_element, unnecessary_cast


/// MoboBroker resource.
class MoboBrokerResourceResponse {
  /// The fully qualified resource ID of the MoboBroker resource.
  /// Example: `/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}`
  final String id;

  /// Creates a new [MoboBrokerResourceResponse].
  /// [id] The fully qualified resource ID of the MoboBroker resource.
  MoboBrokerResourceResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory MoboBrokerResourceResponse.fromMap(Map<String, dynamic> map) {
    return MoboBrokerResourceResponse(
      id: map['id'] as String,
    );
  }
}

