// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_group_lookup_group_key/get_group_lookup_group_key.dart';

/// Arguments for getGroupLookup.
class GetGroupLookupArgs {
  /// The EntityKey of the Group to lookup. A unique identifier for an entity in the Cloud Identity Groups API.
  /// An entity can represent either a group with an optional namespace or a user without a namespace.
  /// The combination of id and namespace must be unique; however, the same id can be used with different namespaces. Structure is documented below.
  final pulumi.Input<GetGroupLookupGroupKey> groupKey;

  GetGroupLookupArgs({
    required this.groupKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupKey'] = pulumi.Input.mapInputValue<GetGroupLookupGroupKey,
        Map<String, dynamic>>(groupKey, (value) => value.toMap());
    return map;
  }

  factory GetGroupLookupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupLookupArgs(
      groupKey: pulumi.Input.asInput<GetGroupLookupGroupKey>(map['groupKey']),
    );
  }
}
