// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Tag resources.
class TagState {
  /// The name of the tag. The name must be `1` to `50` characters in length, and can contain letters and digits.
  final pulumi.Input<String>? tagName;

  /// Creates a new [TagState].
  /// [tagName] The name of the tag. The name must be `1` to `50` characters in length, and can contain letters and digits.
  const TagState({
    this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagName': ?tagName,
    };
  }

  factory TagState.fromMap(Map<String, dynamic> map) {
    return TagState(
      tagName: (() { final guardedValue = map['tagName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

