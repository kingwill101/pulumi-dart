// ignore_for_file: unused_element, unnecessary_cast


/// The properties related to CMK
class CmkProfileResponse {
  /// URI of Key in AKV
  final String keyUri;

  /// Creates a new [CmkProfileResponse].
  /// [keyUri] URI of Key in AKV
  CmkProfileResponse({
    required this.keyUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUri': keyUri,
    };
  }

  factory CmkProfileResponse.fromMap(Map<String, dynamic> map) {
    return CmkProfileResponse(
      keyUri: map['keyUri'] as String,
    );
  }
}

