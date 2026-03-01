// ignore_for_file: unused_element, unnecessary_cast


class GetReceiversReceiverse {
  /// The creation time of the resource.
  final String createTime;
  /// The description.
  final String description;
  /// The ID of the Receivers.
  final String id;
  /// The Receivers Alias.
  final String receiversAlias;
  /// The first ID of the resource.
  final String receiversId;
  /// The name of the resource.
  final String receiversName;
  /// The status of the resource.
  final int status;

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
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      receiversAlias: map['receiversAlias'] as String,
      receiversId: map['receiversId'] as String,
      receiversName: map['receiversName'] as String,
      status: map['status'] as int,
    );
  }
}

