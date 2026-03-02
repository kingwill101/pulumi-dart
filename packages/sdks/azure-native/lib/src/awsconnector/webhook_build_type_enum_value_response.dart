// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of WebhookBuildTypeEnumValue
class WebhookBuildTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [WebhookBuildTypeEnumValueResponse].
  /// [value] Property value
  WebhookBuildTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory WebhookBuildTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return WebhookBuildTypeEnumValueResponse(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

