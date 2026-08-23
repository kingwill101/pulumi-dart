// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_class.dart';

/// Label category definition
class LabelCategory {
  /// Dictionary of label classes in this category.
  final pulumi.Input<Map<String, LabelClass>>? classes;
  /// Display name of the label category.
  final pulumi.Input<String>? displayName;
  /// Indicates whether it is allowed to select multiple classes in this category.
  final pulumi.Input<String>? multiSelect;

  /// Creates a new [LabelCategory].
  /// [classes] Dictionary of label classes in this category.
  /// [displayName] Display name of the label category.
  /// [multiSelect] Indicates whether it is allowed to select multiple classes in this category.
  const LabelCategory({
    this.classes,
    this.displayName,
    this.multiSelect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classes': ?pulumi.Input.mapOptionalInputValue<Map<String, LabelClass>, Map<String, Map<String, dynamic>>>(classes, (value) => pulumi.Input.encodeMapValues<LabelClass, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': ?displayName,
      'multiSelect': ?multiSelect,
    };
  }

  factory LabelCategory.fromMap(Map<String, dynamic> map) {
    return LabelCategory(
      classes: (() { final guardedValue = map['classes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<LabelClass>(guardedValue, (value) => LabelClass.fromMap((value as Map).cast<String, dynamic>()))); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiSelect: (() { final guardedValue = map['multiSelect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
