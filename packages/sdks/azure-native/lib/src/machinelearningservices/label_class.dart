// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Label class definition
class LabelClass {
  /// Display name of the label class.
  final pulumi.Input<String?>? displayName;
  /// Dictionary of subclasses of the label class.
  final pulumi.Input<Map<String, LabelClass>?>? subclasses;

  /// Creates a new [LabelClass].
  /// [displayName] Display name of the label class.
  /// [subclasses] Dictionary of subclasses of the label class.
  const LabelClass({
    this.displayName,
    this.subclasses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'subclasses': ?pulumi.Input.mapOptionalInputValue<Map<String, LabelClass>, Map<String, Map<String, dynamic>>>(subclasses, (value) => pulumi.Input.encodeMapValues<LabelClass, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LabelClass.fromMap(Map<String, dynamic> map) {
    return LabelClass(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subclasses: (() { final guardedValue = map['subclasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<LabelClass>(guardedValue, (value) => LabelClass.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
