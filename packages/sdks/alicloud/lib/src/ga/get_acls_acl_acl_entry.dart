// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAclsAclAclEntry {
  /// The IP entry that you want to add to the ACL.
  final pulumi.Input<String> entry;

  /// The description of the IP entry.
  final pulumi.Input<String> entryDescription;

  /// Creates a new [GetAclsAclAclEntry].
  /// [entry] The IP entry that you want to add to the ACL.
  /// [entryDescription] The description of the IP entry.
  GetAclsAclAclEntry({required this.entry, required this.entryDescription});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entry': entry,
      'entryDescription': entryDescription,
    };
  }

  factory GetAclsAclAclEntry.fromMap(Map<String, dynamic> map) {
    return GetAclsAclAclEntry(
      entry: pulumi.Input.fromValue(map['entry'] as String),
      entryDescription: pulumi.Input.fromValue(
        map['entryDescription'] as String,
      ),
    );
  }
}
