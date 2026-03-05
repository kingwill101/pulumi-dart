// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountAccountTag {
  /// The key of the tags
  final pulumi.Input<String>? tagKey;
  /// The value of the tags
  final pulumi.Input<String>? tagValue;

  /// Creates a new [AccountAccountTag].
  /// [tagKey] The key of the tags
  /// [tagValue] The value of the tags
  AccountAccountTag({
    this.tagKey,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
    };
  }

  factory AccountAccountTag.fromMap(Map<String, dynamic> map) {
    return AccountAccountTag(
      tagKey: (() { final guardedValue = map['tagKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagValue: (() { final guardedValue = map['tagValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

