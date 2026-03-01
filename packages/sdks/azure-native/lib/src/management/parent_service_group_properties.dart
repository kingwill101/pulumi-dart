// ignore_for_file: unused_element, unnecessary_cast


/// The details of the parent serviceGroup.
class ParentServiceGroupProperties {
  /// The fully qualified ID of the parent serviceGroup.  For example, '/providers/Microsoft.Management/serviceGroups/TestServiceGroup'
  final String? resourceId;

  /// Creates a new [ParentServiceGroupProperties].
  /// [resourceId] The fully qualified ID of the parent serviceGroup.  For example, '/providers/Microsoft.Management/serviceGroups/TestServiceGroup'
  ParentServiceGroupProperties({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory ParentServiceGroupProperties.fromMap(Map<String, dynamic> map) {
    return ParentServiceGroupProperties(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

