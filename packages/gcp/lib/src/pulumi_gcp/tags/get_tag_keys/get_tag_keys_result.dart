// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_tag_keys_key/get_tag_keys_key.dart';

/// Result data returned by getTagKeys.
class GetTagKeysResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetTagKeysKey> keys;

  /// The resource name of the TagKey's parent. A TagKey can be parented by an Orgination or a Project.
  final String parent;

  GetTagKeysResult({
    required this.id,
    required this.keys,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['keys'] = pulumi.Input.encodeList<GetTagKeysKey, Map<String, dynamic>>(
        keys, (value) => value.toMap());
    map['parent'] = parent;
    return map;
  }

  factory GetTagKeysResult.fromMap(Map<String, dynamic> map) {
    return GetTagKeysResult(
      id: map['id'] as String,
      keys: pulumi.Input.decodeList<GetTagKeysKey>(
          map['keys'],
          (value) =>
              GetTagKeysKey.fromMap((value as Map).cast<String, dynamic>())),
      parent: map['parent'] as String,
    );
  }
}
