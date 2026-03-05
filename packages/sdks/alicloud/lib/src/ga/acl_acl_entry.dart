// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AclAclEntry {
  /// The IP address(192.168.XX.XX) or CIDR(10.0.XX.XX/24) block that you want to add to the network ACL.
  final pulumi.Input<String>? entry;
  /// The description of the IP entry. The description must be `1` to `256` characters in length, and can contain letters, digits, hyphens (-), forward slashes (/), periods (.),and underscores (_).
  final pulumi.Input<String>? entryDescription;

  /// Creates a new [AclAclEntry].
  /// [entry] The IP address(192.168.XX.XX) or CIDR(10.0.XX.XX/24) block that you want to add to the network ACL.
  /// [entryDescription] The description of the IP entry. The description must be `1` to `256` characters in length, and can contain letters, digits, hyphens (-), forward slashes (/), periods (.),and underscores (_).
  AclAclEntry({
    this.entry,
    this.entryDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entry': ?entry,
      'entryDescription': ?entryDescription,
    };
  }

  factory AclAclEntry.fromMap(Map<String, dynamic> map) {
    return AclAclEntry(
      entry: (() { final guardedValue = map['entry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryDescription: (() { final guardedValue = map['entryDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

