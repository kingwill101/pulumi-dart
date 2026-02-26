// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_tag_values_value/get_tag_values_value.dart';

/// Result data returned by getTagValues.
class GetTagValuesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The resource name of the new TagValue's parent TagKey. Must be of the form tagKeys/{tag_key_id}.
  final String parent;
  final List<GetTagValuesValue> values;

  GetTagValuesResult({
    required this.id,
    required this.parent,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['parent'] = parent;
    map['values'] = Input.encodeList<GetTagValuesValue, Map<String, dynamic>>(
        values, (value) => value.toMap());
    return map;
  }

  factory GetTagValuesResult.fromMap(Map<String, dynamic> map) {
    return GetTagValuesResult(
      id: map['id'] as String,
      parent: map['parent'] as String,
      values: Input.decodeList<GetTagValuesValue>(
          map['values'],
          (value) => GetTagValuesValue.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
