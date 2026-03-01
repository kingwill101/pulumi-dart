// ignore_for_file: unused_element, unnecessary_cast


/// The details of the parent serviceGroup.
class ParentServiceGroupPropertiesResponse {
  /// The fully qualified ID of the parent serviceGroup.  For example, '/providers/Microsoft.Management/serviceGroups/TestServiceGroup'
  final String? resourceId;

  /// Creates a new [ParentServiceGroupPropertiesResponse].
  /// [resourceId] The fully qualified ID of the parent serviceGroup.  For example, '/providers/Microsoft.Management/serviceGroups/TestServiceGroup'
  ParentServiceGroupPropertiesResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory ParentServiceGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ParentServiceGroupPropertiesResponse(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

