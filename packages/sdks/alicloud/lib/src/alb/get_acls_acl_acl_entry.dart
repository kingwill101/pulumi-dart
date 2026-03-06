// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAclsAclAclEntry {
  /// Access Control Entries Note Description Length Is Limited to 1 to 256 Characters, Letters, digital, the Dash (-), a Forward Slash (/), Half a Period (.) and Underscores (_), Support Chinese Characters.
  final pulumi.Input<String> description;
  final pulumi.Input<String> entry;
  /// The status of the ACL entry. Valid values: `Adding` , `Available` and `Removing`. `Adding`: The entry is being added. `Available`: The entry is added and available. `Removing`: The entry is being removed.
  final pulumi.Input<String> status;

  /// Creates a new [GetAclsAclAclEntry].
  /// [description] Access Control Entries Note Description Length Is Limited to 1 to 256 Characters, Letters, digital, the Dash (-), a Forward Slash (/), Half a Period (.) and Underscores (_), Support Chinese Characters.
  /// [entry] Required.
  /// [status] The status of the ACL entry. Valid values: `Adding` , `Available` and `Removing`. `Adding`: The entry is being added. `Available`: The entry is added and available. `Removing`: The entry is being removed.
  const GetAclsAclAclEntry({
    required this.description,
    required this.entry,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'entry': entry,
      'status': status,
    };
  }

  factory GetAclsAclAclEntry.fromMap(Map<String, dynamic> map) {
    return GetAclsAclAclEntry(
      description: pulumi.Input.fromValue(map['description'] as String),
      entry: pulumi.Input.fromValue(map['entry'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

