// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlControlMappingSourceSourceKeyword {
  final pulumi.Input<String> keywordInputType;
  final pulumi.Input<String> keywordValue;

  /// Creates a new [GetControlControlMappingSourceSourceKeyword].
  /// [keywordInputType] Required.
  /// [keywordValue] Required.
  const GetControlControlMappingSourceSourceKeyword({
    required this.keywordInputType,
    required this.keywordValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keywordInputType': keywordInputType,
      'keywordValue': keywordValue,
    };
  }

  factory GetControlControlMappingSourceSourceKeyword.fromMap(Map<String, dynamic> map) {
    return GetControlControlMappingSourceSourceKeyword(
      keywordInputType: pulumi.Input.fromValue(map['keywordInputType'] as String),
      keywordValue: pulumi.Input.fromValue(map['keywordValue'] as String),
    );
  }
}
