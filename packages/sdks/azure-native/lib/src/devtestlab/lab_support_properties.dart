// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a lab's support banner
class LabSupportProperties {
  /// Is the lab support banner active/enabled at this time?
  final pulumi.Input<String>? enabled;
  /// The markdown text (if any) that this lab displays in the UI. If left empty/null, nothing will be shown.
  final pulumi.Input<String>? markdown;

  /// Creates a new [LabSupportProperties].
  /// [enabled] Is the lab support banner active/enabled at this time?
  /// [markdown] The markdown text (if any) that this lab displays in the UI. If left empty/null, nothing will be shown.
  LabSupportProperties({
    this.enabled,
    this.markdown,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'markdown': ?markdown,
    };
  }

  factory LabSupportProperties.fromMap(Map<String, dynamic> map) {
    return LabSupportProperties(
      enabled: map['enabled'] == null ? null : (map['enabled']! as String).input(),
      markdown: map['markdown'] == null ? null : (map['markdown']! as String).input(),
    );
  }
}

