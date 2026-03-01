// ignore_for_file: unused_element, unnecessary_cast


class FlexibleServerIdentity {
  /// A list of User Assigned Managed Identity IDs to be assigned to this MySQL Flexible Server.
  final List<String> identityIds;
  /// Specifies the type of Managed Service Identity that should be configured on this MySQL Flexible Server. The only possible value is `UserAssigned`.
  final String type;

  /// Creates a new [FlexibleServerIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs to be assigned to this MySQL Flexible Server.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this MySQL Flexible Server. The only possible value is `UserAssigned`.
  FlexibleServerIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory FlexibleServerIdentity.fromMap(Map<String, dynamic> map) {
    return FlexibleServerIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

