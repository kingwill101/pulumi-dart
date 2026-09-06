// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'language_extension.dart';

/// The list of language extension objects.
class LanguageExtensionsList {
  /// The list of language extensions.
  final pulumi.Input<List<LanguageExtension>?>? value;

  /// Creates a new [LanguageExtensionsList].
  /// [value] The list of language extensions.
  const LanguageExtensionsList({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?pulumi.Input.mapOptionalInputValue<List<LanguageExtension>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<LanguageExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LanguageExtensionsList.fromMap(Map<String, dynamic> map) {
    return LanguageExtensionsList(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LanguageExtension>(guardedValue, (value) => LanguageExtension.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
