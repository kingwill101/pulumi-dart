// ignore_for_file: unused_element, unnecessary_cast


/// The API entity reference.
class ApiEntityReferenceResponse {
  /// The ARM resource id in the form of
  /// /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/...
  final String? id;

  /// Creates a new [ApiEntityReferenceResponse].
  /// [id] The ARM resource id in the form of
  ApiEntityReferenceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ApiEntityReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ApiEntityReferenceResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

