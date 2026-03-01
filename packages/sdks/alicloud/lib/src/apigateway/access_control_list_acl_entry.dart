// ignore_for_file: unused_element, unnecessary_cast


class AccessControlListAclEntry {
  /// The description of the ACL.
  final String? aclEntryComment;
  /// The entries that you want to add to the ACL. You can add CIDR blocks. Separate multiple CIDR blocks with commas (,).
  final String? aclEntryIp;

  /// Creates a new [AccessControlListAclEntry].
  /// [aclEntryComment] The description of the ACL.
  /// [aclEntryIp] The entries that you want to add to the ACL. You can add CIDR blocks. Separate multiple CIDR blocks with commas (,).
  AccessControlListAclEntry({
    this.aclEntryComment,
    this.aclEntryIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclEntryComment': ?aclEntryComment,
      'aclEntryIp': ?aclEntryIp,
    };
  }

  factory AccessControlListAclEntry.fromMap(Map<String, dynamic> map) {
    return AccessControlListAclEntry(
      aclEntryComment: map['aclEntryComment'] == null ? null : map['aclEntryComment'] as String,
      aclEntryIp: map['aclEntryIp'] == null ? null : map['aclEntryIp'] as String,
    );
  }
}

