// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of WebhookFilterTypeEnumValue
class WebhookFilterTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [WebhookFilterTypeEnumValueResponse].
  /// [value] Property value
  WebhookFilterTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory WebhookFilterTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return WebhookFilterTypeEnumValueResponse(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

