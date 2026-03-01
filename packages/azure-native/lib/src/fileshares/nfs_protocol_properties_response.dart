// ignore_for_file: unused_element, unnecessary_cast


/// Properties specific to the NFS protocol.
class NfsProtocolPropertiesResponse {
  /// Root squash defines how root users on clients are mapped to the NFS share.
  final String? rootSquash;

  /// Creates a new [NfsProtocolPropertiesResponse].
  /// [rootSquash] Root squash defines how root users on clients are mapped to the NFS share.
  NfsProtocolPropertiesResponse({
    this.rootSquash,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rootSquash': ?rootSquash,
    };
  }

  factory NfsProtocolPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NfsProtocolPropertiesResponse(
      rootSquash: map['rootSquash'] == null ? null : map['rootSquash'] as String,
    );
  }
}

