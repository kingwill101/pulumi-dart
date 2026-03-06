// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties related to CMK
class CmkProfileResponse {
  /// URI of Key in AKV
  final pulumi.Input<String> keyUri;

  /// Creates a new [CmkProfileResponse].
  /// [keyUri] URI of Key in AKV
  const CmkProfileResponse({
    required this.keyUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUri': keyUri,
    };
  }

  factory CmkProfileResponse.fromMap(Map<String, dynamic> map) {
    return CmkProfileResponse(
      keyUri: pulumi.Input.fromValue(map['keyUri'] as String),
    );
  }
}

