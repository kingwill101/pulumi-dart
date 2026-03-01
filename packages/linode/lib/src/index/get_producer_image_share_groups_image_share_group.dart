// ignore_for_file: unused_element, unnecessary_cast


class GetProducerImageShareGroupsImageShareGroup {
  /// The date and time the Image Share Group was created.
  final String created;
  /// The description of the Image Share Group.
  final String description;
  /// The date and time the Image Share Group will expire.
  final String expiry;
  /// The ID of the Image Share Group.
  final int id;
  /// The number of images in the Image Share Group.
  final int imagesCount;
  /// Whether the Image Share Group is suspended.
  final bool isSuspended;
  /// The label of the Image Share Group.
  final String label;
  /// The number of members in the Image Share Group.
  final int membersCount;
  /// The date and time the Image Share Group was last updated.
  final String updated;
  /// The UUID of the Image Share Group.
  final String uuid;

  /// Creates a new [GetProducerImageShareGroupsImageShareGroup].
  /// [created] The date and time the Image Share Group was created.
  /// [description] The description of the Image Share Group.
  /// [expiry] The date and time the Image Share Group will expire.
  /// [id] The ID of the Image Share Group.
  /// [imagesCount] The number of images in the Image Share Group.
  /// [isSuspended] Whether the Image Share Group is suspended.
  /// [label] The label of the Image Share Group.
  /// [membersCount] The number of members in the Image Share Group.
  /// [updated] The date and time the Image Share Group was last updated.
  /// [uuid] The UUID of the Image Share Group.
  GetProducerImageShareGroupsImageShareGroup({
    required this.created,
    required this.description,
    required this.expiry,
    required this.id,
    required this.imagesCount,
    required this.isSuspended,
    required this.label,
    required this.membersCount,
    required this.updated,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'description': description,
      'expiry': expiry,
      'id': id,
      'imagesCount': imagesCount,
      'isSuspended': isSuspended,
      'label': label,
      'membersCount': membersCount,
      'updated': updated,
      'uuid': uuid,
    };
  }

  factory GetProducerImageShareGroupsImageShareGroup.fromMap(Map<String, dynamic> map) {
    return GetProducerImageShareGroupsImageShareGroup(
      created: map['created'] as String,
      description: map['description'] as String,
      expiry: map['expiry'] as String,
      id: map['id'] as int,
      imagesCount: map['imagesCount'] as int,
      isSuspended: map['isSuspended'] as bool,
      label: map['label'] as String,
      membersCount: map['membersCount'] as int,
      updated: map['updated'] as String,
      uuid: map['uuid'] as String,
    );
  }
}

