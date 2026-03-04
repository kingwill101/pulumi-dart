// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MetaTag resources.
class MetaTagState {
  /// The key of the tag meta tag. key must be 1 to 128 characters in length.
  final pulumi.Input<String>? key;

  /// The values of the tag meta tag.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [MetaTagState].
  /// [key] The key of the tag meta tag. key must be 1 to 128 characters in length.
  /// [values] The values of the tag meta tag.
  MetaTagState({this.key, this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'values': ?values};
  }

  factory MetaTagState.fromMap(Map<String, dynamic> map) {
    return MetaTagState(
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
