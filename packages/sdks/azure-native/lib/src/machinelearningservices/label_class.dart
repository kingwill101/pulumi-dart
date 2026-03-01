// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Label class definition
class LabelClass {
  /// Display name of the label class.
  final String? displayName;
  /// Dictionary of subclasses of the label class.
  final Map<String, LabelClass>? subclasses;

  /// Creates a new [LabelClass].
  /// [displayName] Display name of the label class.
  /// [subclasses] Dictionary of subclasses of the label class.
  LabelClass({
    this.displayName,
    this.subclasses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'subclasses': ?subclasses == null ? null : pulumi.Input.encodeMapValues<LabelClass, Map<String, dynamic>>(subclasses!, (value) => value.toMap()),
    };
  }

  factory LabelClass.fromMap(Map<String, dynamic> map) {
    return LabelClass(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      subclasses: map['subclasses'] == null ? null : pulumi.Input.decodeMapValues<LabelClass>(map['subclasses'], (value) => LabelClass.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

