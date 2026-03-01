// ignore_for_file: unused_element, unnecessary_cast


class GetPlacementGroupsPlacementGroupMigrationsInbound {
  /// The unique identifier for the Linode being migrated out of the placement group.
  final int linodeId;

  /// Creates a new [GetPlacementGroupsPlacementGroupMigrationsInbound].
  /// [linodeId] The unique identifier for the Linode being migrated out of the placement group.
  GetPlacementGroupsPlacementGroupMigrationsInbound({
    required this.linodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linodeId': linodeId,
    };
  }

  factory GetPlacementGroupsPlacementGroupMigrationsInbound.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupsPlacementGroupMigrationsInbound(
      linodeId: map['linodeId'] as int,
    );
  }
}

