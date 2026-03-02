// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourceSharesShare {
  /// The ID of the Resource Share.
  final pulumi.Input<String> id;
  /// The ID of the resource share.
  final pulumi.Input<String> resourceShareId;
  /// The name of resource share.
  final pulumi.Input<String> resourceShareName;
  /// The owner of resource share.
  final pulumi.Input<String> resourceShareOwner;
  /// The status of resource share.
  final pulumi.Input<String> status;

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
      id: (map['id'] as String).input(),
      resourceShareId: (map['resourceShareId'] as String).input(),
      resourceShareName: (map['resourceShareName'] as String).input(),
      resourceShareOwner: (map['resourceShareOwner'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

