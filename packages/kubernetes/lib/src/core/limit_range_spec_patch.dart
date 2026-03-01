// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'limit_range_item_patch.dart';

/// LimitRangeSpec defines a min/max usage limit for resources that match on kind.
class LimitRangeSpecPatch {
  /// Limits is the list of LimitRangeItem objects that are enforced.
  final List<LimitRangeItemPatch>? limits;

  /// Creates a new [LimitRangeSpecPatch].
  /// [limits] Limits is the list of LimitRangeItem objects that are enforced.
  LimitRangeSpecPatch({
    this.limits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?limits == null ? null : pulumi.Input.encodeList<LimitRangeItemPatch, Map<String, dynamic>>(limits!, (value) => value.toMap()),
    };
  }

  factory LimitRangeSpecPatch.fromMap(Map<String, dynamic> map) {
    return LimitRangeSpecPatch(
      limits: map['limits'] == null ? null : pulumi.Input.decodeList<LimitRangeItemPatch>(map['limits'], (value) => LimitRangeItemPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

