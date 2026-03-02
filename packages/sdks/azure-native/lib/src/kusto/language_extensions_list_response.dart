// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'language_extension_response.dart';

/// The list of language extension objects.
class LanguageExtensionsListResponse {
  /// The list of language extensions.
  final pulumi.Input<List<LanguageExtensionResponse>>? value;

  /// Creates a new [LanguageExtensionsListResponse].
  /// [value] The list of language extensions.
  LanguageExtensionsListResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?pulumi.Input.mapOptionalInputValue<List<LanguageExtensionResponse>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<LanguageExtensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LanguageExtensionsListResponse.fromMap(Map<String, dynamic> map) {
    return LanguageExtensionsListResponse(
      value: map['value'] == null ? null : (pulumi.Input.decodeList<LanguageExtensionResponse>(map['value'], (value) => LanguageExtensionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

