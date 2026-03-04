// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties related to CMK
class CmkProfile {
  /// URI of Key in AKV
  final pulumi.Input<String> keyUri;

  /// Creates a new [CmkProfile].
  /// [keyUri] URI of Key in AKV
  CmkProfile({required this.keyUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyUri': keyUri};
  }

  factory CmkProfile.fromMap(Map<String, dynamic> map) {
    return CmkProfile(keyUri: pulumi.Input.fromValue(map['keyUri'] as String));
  }
}
