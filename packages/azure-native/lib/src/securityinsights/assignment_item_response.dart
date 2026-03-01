// ignore_for_file: unused_element, unnecessary_cast


/// An entity describing a content item.
class AssignmentItemResponse {
  /// The resource id of the content item
  final String? resourceId;

  /// Creates a new [AssignmentItemResponse].
  /// [resourceId] The resource id of the content item
  AssignmentItemResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory AssignmentItemResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentItemResponse(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

