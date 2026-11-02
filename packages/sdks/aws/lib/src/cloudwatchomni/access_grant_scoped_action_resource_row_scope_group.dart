// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_grant_scoped_action_resource_row_scope_group_row_scope.dart';

class AccessGrantScopedActionResourceRowScopeGroup {
  /// Row filter. 1-20 blocks. See below.
  final pulumi.Input<List<AccessGrantScopedActionResourceRowScopeGroupRowScope>> rowScopes;

  /// Creates a new [AccessGrantScopedActionResourceRowScopeGroup].
  /// [rowScopes] Row filter. 1-20 blocks. See below.
  const AccessGrantScopedActionResourceRowScopeGroup({
    required this.rowScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rowScopes': pulumi.Input.mapInputValue<List<AccessGrantScopedActionResourceRowScopeGroupRowScope>, List<Map<String, dynamic>>>(rowScopes, (value) => pulumi.Input.encodeList<AccessGrantScopedActionResourceRowScopeGroupRowScope, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccessGrantScopedActionResourceRowScopeGroup.fromMap(Map<String, dynamic> map) {
    return AccessGrantScopedActionResourceRowScopeGroup(
      rowScopes: pulumi.Input.fromValue(pulumi.Input.decodeList<AccessGrantScopedActionResourceRowScopeGroupRowScope>(map['rowScopes']!, (value) => AccessGrantScopedActionResourceRowScopeGroupRowScope.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
