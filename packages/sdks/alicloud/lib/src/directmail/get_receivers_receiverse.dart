// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReceiversReceiverse {
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;
  /// The description.
  final pulumi.Input<String> description;
  /// The ID of the Receivers.
  final pulumi.Input<String> id;
  /// The Receivers Alias.
  final pulumi.Input<String> receiversAlias;
  /// The first ID of the resource.
  final pulumi.Input<String> receiversId;
  /// The name of the resource.
  final pulumi.Input<String> receiversName;
  /// The status of the resource.
  final pulumi.Input<int> status;

  /// Creates a new [GetReceiversReceiverse].
  /// [createTime] The creation time of the resource.
  /// [description] The description.
  /// [id] The ID of the Receivers.
  /// [receiversAlias] The Receivers Alias.
  /// [receiversId] The first ID of the resource.
  /// [receiversName] The name of the resource.
  /// [status] The status of the resource.
  GetReceiversReceiverse({
    required this.createTime,
    required this.description,
    required this.id,
    required this.receiversAlias,
    required this.receiversId,
    required this.receiversName,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'id': id,
      'receiversAlias': receiversAlias,
      'receiversId': receiversId,
      'receiversName': receiversName,
      'status': status,
    };
  }

  factory GetReceiversReceiverse.fromMap(Map<String, dynamic> map) {
    return GetReceiversReceiverse(
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      receiversAlias: (map['receiversAlias'] as String).input(),
      receiversId: (map['receiversId'] as String).input(),
      receiversName: (map['receiversName'] as String).input(),
      status: (map['status'] as int).input(),
    );
  }
}

