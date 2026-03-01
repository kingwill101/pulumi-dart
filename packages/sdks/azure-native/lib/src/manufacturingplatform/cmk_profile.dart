// ignore_for_file: unused_element, unnecessary_cast


/// The properties related to CMK
class CmkProfile {
  /// URI of Key in AKV
  final String keyUri;

  /// Creates a new [CmkProfile].
  /// [keyUri] URI of Key in AKV
  CmkProfile({
    required this.keyUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUri': keyUri,
    };
  }

  factory CmkProfile.fromMap(Map<String, dynamic> map) {
    return CmkProfile(
      keyUri: map['keyUri'] as String,
    );
  }
}

