// ignore_for_file: unused_element, unnecessary_cast


class GetResourceSharesShare {
  /// The ID of the Resource Share.
  final String id;
  /// The ID of the resource share.
  final String resourceShareId;
  /// The name of resource share.
  final String resourceShareName;
  /// The owner of resource share.
  final String resourceShareOwner;
  /// The status of resource share.
  final String status;

  /// Creates a new [GetResourceSharesShare].
  /// [id] The ID of the Resource Share.
  /// [resourceShareId] The ID of the resource share.
  /// [resourceShareName] The name of resource share.
  /// [resourceShareOwner] The owner of resource share.
  /// [status] The status of resource share.
  GetResourceSharesShare({
    required this.id,
    required this.resourceShareId,
    required this.resourceShareName,
    required this.resourceShareOwner,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'resourceShareId': resourceShareId,
      'resourceShareName': resourceShareName,
      'resourceShareOwner': resourceShareOwner,
      'status': status,
    };
  }

  factory GetResourceSharesShare.fromMap(Map<String, dynamic> map) {
    return GetResourceSharesShare(
      id: map['id'] as String,
      resourceShareId: map['resourceShareId'] as String,
      resourceShareName: map['resourceShareName'] as String,
      resourceShareOwner: map['resourceShareOwner'] as String,
      status: map['status'] as String,
    );
  }
}

