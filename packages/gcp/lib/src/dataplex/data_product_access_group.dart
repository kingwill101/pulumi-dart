// ignore_for_file: unused_element, unnecessary_cast

import 'data_product_access_group_principal.dart';

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

  /// Creates a new [DataProductAccessGroup].
  /// [description] Description of the access group.
  /// [displayName] User friendly display name.
  /// [groupId] Unique identifier of the access group.
  /// [id] The identifier for this object. Format specified above.
  /// [principal] The principal entity.
  DataProductAccessGroup({
    this.description,
    required this.displayName,
    required this.groupId,
    required this.id,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'groupId': groupId,
      'id': id,
      'principal': principal.toMap(),
    };
  }

  factory DataProductAccessGroup.fromMap(Map<String, dynamic> map) {
    return DataProductAccessGroup(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] as String,
      groupId: map['groupId'] as String,
      id: map['id'] as String,
      principal: DataProductAccessGroupPrincipal.fromMap(
        (map['principal'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
