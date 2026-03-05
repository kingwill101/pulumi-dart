// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of WebhookBuildTypeEnumValue
class WebhookBuildTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [WebhookBuildTypeEnumValue].
  /// [value] Property value
  WebhookBuildTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory WebhookBuildTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return WebhookBuildTypeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

