// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a lab's support banner
class LabSupportPropertiesResponse {
  /// Is the lab support banner active/enabled at this time?
  final pulumi.Input<String>? enabled;
  /// The markdown text (if any) that this lab displays in the UI. If left empty/null, nothing will be shown.
  final pulumi.Input<String>? markdown;

  /// Creates a new [LabSupportPropertiesResponse].
  /// [enabled] Is the lab support banner active/enabled at this time?
  /// [markdown] The markdown text (if any) that this lab displays in the UI. If left empty/null, nothing will be shown.
  LabSupportPropertiesResponse({
    this.enabled,
    this.markdown,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'markdown': ?markdown,
    };
  }

  factory LabSupportPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LabSupportPropertiesResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      markdown: (() { final guardedValue = map['markdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

