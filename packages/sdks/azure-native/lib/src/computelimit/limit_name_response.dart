// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the limit name.
class LimitNameResponse {
  /// The localized limit name.
  final pulumi.Input<String> localizedValue;
  /// The limit name.
  final pulumi.Input<String> value;

  /// Creates a new [LimitNameResponse].
  /// [localizedValue] The localized limit name.
  /// [value] The limit name.
  LimitNameResponse({
    required this.localizedValue,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localizedValue': localizedValue,
      'value': value,
    };
  }

  factory LimitNameResponse.fromMap(Map<String, dynamic> map) {
    return LimitNameResponse(
      localizedValue: (map['localizedValue'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

