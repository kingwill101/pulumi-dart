// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of WebhookFilterTypeEnumValue
class WebhookFilterTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [WebhookFilterTypeEnumValue].
  /// [value] Property value
  WebhookFilterTypeEnumValue({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory WebhookFilterTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return WebhookFilterTypeEnumValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
