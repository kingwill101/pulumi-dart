// ignore_for_file: unused_element, unnecessary_cast

import '../data_product_access_group_principal/data_product_access_group_principal.dart';

class DataProductAccessGroup {
  /// Description of the access group.
  final String? description;

  /// User friendly display name.
  final String displayName;

  /// Unique identifier of the access group.
  final String groupId;

  /// The identifier for this object. Format specified above.
  final String id;

  /// The principal entity.
  /// Structure is documented below.
  final DataProductAccessGroupPrincipal principal;

  DataProductAccessGroup({
    this.description,
    required this.displayName,
    required this.groupId,
    required this.id,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    map['groupId'] = groupId;
    map['id'] = id;
    map['principal'] = principal.toMap();
    return map;
  }

  factory DataProductAccessGroup.fromMap(Map<String, dynamic> map) {
    return DataProductAccessGroup(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      groupId: map['groupId'] as String,
      id: map['id'] as String,
      principal: DataProductAccessGroupPrincipal.fromMap(
          (map['principal'] as Map).cast<String, dynamic>()),
    );
  }
}
