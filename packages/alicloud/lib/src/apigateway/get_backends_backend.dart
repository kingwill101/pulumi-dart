// ignore_for_file: unused_element, unnecessary_cast


class GetBackendsBackend {
  /// The id of the Backend.
  final String backendId;
  /// The name of the Backend.
  final String backendName;
  /// The type of the Backend.
  final String backendType;
  /// The created time of the Backend.
  final String createTime;
  /// The description of the Backend.
  final String description;
  final String id;
  /// The modified time of the Backend.
  final String modifiedTime;

  /// Creates a new [GetBackendsBackend].
  /// [backendId] The id of the Backend.
  /// [backendName] The name of the Backend.
  /// [backendType] The type of the Backend.
  /// [createTime] The created time of the Backend.
  /// [description] The description of the Backend.
  /// [id] Required.
  /// [modifiedTime] The modified time of the Backend.
  GetBackendsBackend({
    required this.backendId,
    required this.backendName,
    required this.backendType,
    required this.createTime,
    required this.description,
    required this.id,
    required this.modifiedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendId': backendId,
      'backendName': backendName,
      'backendType': backendType,
      'createTime': createTime,
      'description': description,
      'id': id,
      'modifiedTime': modifiedTime,
    };
  }

  factory GetBackendsBackend.fromMap(Map<String, dynamic> map) {
    return GetBackendsBackend(
      backendId: map['backendId'] as String,
      backendName: map['backendName'] as String,
      backendType: map['backendType'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      modifiedTime: map['modifiedTime'] as String,
    );
  }
}

