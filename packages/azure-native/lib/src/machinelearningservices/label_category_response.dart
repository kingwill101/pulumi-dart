// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_class_response.dart';

/// Label category definition
class LabelCategoryResponse {
  /// Dictionary of label classes in this category.
  final Map<String, LabelClassResponse>? classes;
  /// Display name of the label category.
  final String? displayName;
  /// Indicates whether it is allowed to select multiple classes in this category.
  final String? multiSelect;

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
      'classes': ?classes == null ? null : pulumi.Input.encodeMapValues<LabelClassResponse, Map<String, dynamic>>(classes!, (value) => value.toMap()),
      'displayName': ?displayName,
      'multiSelect': ?multiSelect,
    };
  }

  factory LabelCategoryResponse.fromMap(Map<String, dynamic> map) {
    return LabelCategoryResponse(
      classes: map['classes'] == null ? null : pulumi.Input.decodeMapValues<LabelClassResponse>(map['classes'], (value) => LabelClassResponse.fromMap((value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      multiSelect: map['multiSelect'] == null ? null : map['multiSelect'] as String,
    );
  }
}

