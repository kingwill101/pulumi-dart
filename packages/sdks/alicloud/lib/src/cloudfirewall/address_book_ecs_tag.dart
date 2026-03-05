// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AddressBookEcsTag {
  /// The key of ECS tag that to be matched.
  final pulumi.Input<String>? tagKey;
  /// The value of ECS tag that to be matched.
  final pulumi.Input<String>? tagValue;

  /// Creates a new [AddressBookEcsTag].
  /// [tagKey] The key of ECS tag that to be matched.
  /// [tagValue] The value of ECS tag that to be matched.
  AddressBookEcsTag({
    this.tagKey,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
    };
  }

  factory AddressBookEcsTag.fromMap(Map<String, dynamic> map) {
    return AddressBookEcsTag(
      tagKey: (() { final guardedValue = map['tagKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagValue: (() { final guardedValue = map['tagValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

