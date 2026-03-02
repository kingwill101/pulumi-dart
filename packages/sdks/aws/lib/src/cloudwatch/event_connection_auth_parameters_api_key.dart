// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventConnectionAuthParametersApiKey {
  /// Header Name.
  final pulumi.Input<String> key;
  /// Header Value. Created and stored in AWS Secrets Manager.
  final pulumi.Input<String> value;

  /// Creates a new [EventConnectionAuthParametersApiKey].
  /// [key] Header Name.
  /// [value] Header Value. Created and stored in AWS Secrets Manager.
  EventConnectionAuthParametersApiKey({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory EventConnectionAuthParametersApiKey.fromMap(Map<String, dynamic> map) {
    return EventConnectionAuthParametersApiKey(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

