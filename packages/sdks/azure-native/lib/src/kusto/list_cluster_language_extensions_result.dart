// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'language_extension_response.dart';

/// Result data returned by listClusterLanguageExtensions.
class ListClusterLanguageExtensionsResult {
  /// The list of language extensions.
  final List<LanguageExtensionResponse>? value;

  /// Creates a new [ListClusterLanguageExtensionsResult].
  /// [value] The list of language extensions.
  const ListClusterLanguageExtensionsResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<LanguageExtensionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListClusterLanguageExtensionsResult.fromMap(Map<String, dynamic> map) {
    return ListClusterLanguageExtensionsResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<LanguageExtensionResponse>(guardedValue, (value) => LanguageExtensionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

