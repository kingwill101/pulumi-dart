// ignore_for_file: unused_element, unnecessary_cast


/// An entity describing a content item.
class AssignmentItem {
  /// The resource id of the content item
  final String? resourceId;

  /// Creates a new [AssignmentItem].
  /// [resourceId] The resource id of the content item
  AssignmentItem({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory AssignmentItem.fromMap(Map<String, dynamic> map) {
    return AssignmentItem(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

