// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'display_data.dart';
import 'transform_summary_kind.dart';

/// Description of the type, names/ids, and input/outputs for a transform.
class TransformSummary {
  /// Transform-specific display data.
  final List<DisplayData>? displayData;

  /// SDK generated id of this transform instance.
  final String? id;

  /// User names for all collection inputs to this transform.
  final List<String>? inputCollectionName;

  /// Type of transform.
  final TransformSummaryKind? kind;

  /// User provided name for this transform instance.
  final String? name;

  /// User names for all collection outputs to this transform.
  final List<String>? outputCollectionName;

  TransformSummary({
    this.displayData,
    this.id,
    this.inputCollectionName,
    this.kind,
    this.name,
    this.outputCollectionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayDataValue = displayData;
    if (displayDataValue != null) {
      map['displayData'] = Input.encodeList<DisplayData, Map<String, dynamic>>(
          displayDataValue, (value) => value.toMap());
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final inputCollectionNameValue = inputCollectionName;
    if (inputCollectionNameValue != null) {
      map['inputCollectionName'] = inputCollectionNameValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue.value;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final outputCollectionNameValue = outputCollectionName;
    if (outputCollectionNameValue != null) {
      map['outputCollectionName'] = outputCollectionNameValue;
    }
    return map;
  }

  factory TransformSummary.fromMap(Map<String, dynamic> map) {
    return TransformSummary(
      displayData: map['displayData'] == null
          ? null
          : Input.decodeList<DisplayData>(
              map['displayData'],
              (value) =>
                  DisplayData.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      inputCollectionName: map['inputCollectionName'] == null
          ? null
          : (map['inputCollectionName'] as List).cast<String>(),
      kind: map['kind'] == null
          ? null
          : TransformSummaryKind.fromValue(map['kind'] as String),
      name: map['name'] == null ? null : map['name'] as String,
      outputCollectionName: map['outputCollectionName'] == null
          ? null
          : (map['outputCollectionName'] as List).cast<String>(),
    );
  }
}
