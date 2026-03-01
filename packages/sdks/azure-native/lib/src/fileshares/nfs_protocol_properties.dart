// ignore_for_file: unused_element, unnecessary_cast


/// Properties specific to the NFS protocol.
class NfsProtocolProperties {
  /// Root squash defines how root users on clients are mapped to the NFS share.
  final String? rootSquash;

  /// Creates a new [NfsProtocolProperties].
  /// [rootSquash] Root squash defines how root users on clients are mapped to the NFS share.
  NfsProtocolProperties({
    this.rootSquash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rootSquash': ?rootSquash,
    };
  }

  factory NfsProtocolProperties.fromMap(Map<String, dynamic> map) {
    return NfsProtocolProperties(
      rootSquash: map['rootSquash'] == null ? null : map['rootSquash'] as String,
    );
  }
}

