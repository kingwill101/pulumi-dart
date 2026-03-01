// ignore_for_file: unused_element, unnecessary_cast


/// Access Control List (ACL) for an iSCSI Target; defines LUN masking policy
class Acl {
  /// iSCSI initiator IQN (iSCSI Qualified Name); example: "iqn.2005-03.org.iscsi:client".
  final String initiatorIqn;
  /// List of LUN names mapped to the ACL.
  final List<String> mappedLuns;

  /// Creates a new [Acl].
  /// [initiatorIqn] iSCSI initiator IQN (iSCSI Qualified Name); example: "iqn.2005-03.org.iscsi:client".
  /// [mappedLuns] List of LUN names mapped to the ACL.
  Acl({
    required this.initiatorIqn,
    required this.mappedLuns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initiatorIqn': initiatorIqn,
      'mappedLuns': mappedLuns,
    };
  }

  factory Acl.fromMap(Map<String, dynamic> map) {
    return Acl(
      initiatorIqn: map['initiatorIqn'] as String,
      mappedLuns: (map['mappedLuns'] as List).cast<String>(),
    );
  }
}

