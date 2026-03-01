// ignore_for_file: unused_element, unnecessary_cast


/// Keytab used for authenticate with Active Directory.
class KeytabInformation {
  /// A base64-encoded keytab.
  final String? keytab;

  /// Creates a new [KeytabInformation].
  /// [keytab] A base64-encoded keytab.
  KeytabInformation({
    this.keytab,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keytab': ?keytab,
    };
  }

  factory KeytabInformation.fromMap(Map<String, dynamic> map) {
    return KeytabInformation(
      keytab: map['keytab'] == null ? null : map['keytab'] as String,
    );
  }
}

