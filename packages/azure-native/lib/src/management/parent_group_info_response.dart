// ignore_for_file: unused_element, unnecessary_cast


/// (Optional) The ID of the parent management group.
class ParentGroupInfoResponse {
  /// The friendly name of the parent management group.
  final String? displayName;
  /// The fully qualified ID for the parent management group.  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
  final String? id;
  /// The name of the parent management group
  final String? name;

  /// Creates a new [ParentGroupInfoResponse].
  /// [displayName] The friendly name of the parent management group.
  /// [id] The fully qualified ID for the parent management group.  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
  /// [name] The name of the parent management group
  ParentGroupInfoResponse({
    this.displayName,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
    };
  }

  factory ParentGroupInfoResponse.fromMap(Map<String, dynamic> map) {
    return ParentGroupInfoResponse(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

