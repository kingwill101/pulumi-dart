// ignore_for_file: unused_element, unnecessary_cast


/// The nfvi details.
class NfviDetailsResponse {
  /// The nfvi name.
  final String? name;
  /// The nfvi type.
  final String? type;

  /// Creates a new [NfviDetailsResponse].
  /// [name] The nfvi name.
  /// [type] The nfvi type.
  NfviDetailsResponse({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory NfviDetailsResponse.fromMap(Map<String, dynamic> map) {
    return NfviDetailsResponse(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

