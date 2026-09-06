// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// (Optional) The ID of the parent management group used during creation.
class CreateParentGroupInfo {
  /// The fully qualified ID for the parent management group.  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
  final pulumi.Input<String?>? id;

  /// Creates a new [CreateParentGroupInfo].
  /// [id] The fully qualified ID for the parent management group.  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
  const CreateParentGroupInfo({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory CreateParentGroupInfo.fromMap(Map<String, dynamic> map) {
    return CreateParentGroupInfo(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
