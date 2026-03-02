// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_class_response.dart';

/// Label category definition
class LabelCategoryResponse {
  /// Dictionary of label classes in this category.
  final pulumi.Input<Map<String, LabelClassResponse>>? classes;
  /// Display name of the label category.
  final pulumi.Input<String>? displayName;
  /// Indicates whether it is allowed to select multiple classes in this category.
  final pulumi.Input<String>? multiSelect;

  /// Creates a new [LabelCategoryResponse].
  /// [classes] Dictionary of label classes in this category.
  /// [displayName] Display name of the label category.
  /// [multiSelect] Indicates whether it is allowed to select multiple classes in this category.
  LabelCategoryResponse({
    this.classes,
    this.displayName,
    this.multiSelect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classes': ?pulumi.Input.mapOptionalInputValue<Map<String, LabelClassResponse>, Map<String, Map<String, dynamic>>>(classes, (value) => pulumi.Input.encodeMapValues<LabelClassResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': ?displayName,
      'multiSelect': ?multiSelect,
    };
  }

  factory LabelCategoryResponse.fromMap(Map<String, dynamic> map) {
    return LabelCategoryResponse(
      classes: map['classes'] == null ? null : (pulumi.Input.decodeMapValues<LabelClassResponse>(map['classes']!, (value) => LabelClassResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      multiSelect: map['multiSelect'] == null ? null : (map['multiSelect']! as String).input(),
    );
  }
}

