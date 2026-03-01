// ignore_for_file: unused_element, unnecessary_cast


/// The API entity reference.
class ApiEntityReference {
  /// The Azure resource id in the form of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/...
  final String? resourceId;

  /// Creates a new [ApiEntityReference].
  /// [resourceId] The Azure resource id in the form of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/...
  ApiEntityReference({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory ApiEntityReference.fromMap(Map<String, dynamic> map) {
    return ApiEntityReference(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

