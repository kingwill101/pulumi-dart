// ignore_for_file: unused_element, unnecessary_cast

class NoteAttestationAuthorityHint {
  /// The human readable name of this Attestation Authority, for
  /// example "qa".
  final String humanReadableName;

  NoteAttestationAuthorityHint({
    required this.humanReadableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['humanReadableName'] = humanReadableName;
    return map;
  }

  factory NoteAttestationAuthorityHint.fromMap(Map<String, dynamic> map) {
    return NoteAttestationAuthorityHint(
      humanReadableName: map['humanReadableName'] as String,
    );
  }
}
