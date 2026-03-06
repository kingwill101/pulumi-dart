// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AclAclEntry {
  /// The description of the ACL entry. The description must be `1` to `256` characters in length, and can contain letters, digits, hyphens (-), forward slashes (/), periods (.),and underscores (_). It can also contain Chinese characters.
  final pulumi.Input<String>? description;
  /// The IP address for the ACL entry.
  final pulumi.Input<String>? entry;
  /// The status of the ACL entry. Valid values:
  /// - `Adding`: The ACL entry is being added.
  /// - `Available`: The ACL entry is added and available.
  /// - `Removing`: The ACL entry is being removed.
  final pulumi.Input<String>? status;

  /// Creates a new [AclAclEntry].
  /// [description] The description of the ACL entry. The description must be `1` to `256` characters in length, and can contain letters, digits, hyphens (-), forward slashes (/), periods (.),and underscores (_). It can also contain Chinese characters.
  /// [entry] The IP address for the ACL entry.
  /// [status] The status of the ACL entry. Valid values:
  const AclAclEntry({
    this.description,
    this.entry,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'entry': ?entry,
      'status': ?status,
    };
  }

  factory AclAclEntry.fromMap(Map<String, dynamic> map) {
    return AclAclEntry(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entry: (() { final guardedValue = map['entry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

