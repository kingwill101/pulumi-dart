// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendsBackend {
  /// The id of the Backend.
  final pulumi.Input<String> backendId;
  /// The name of the Backend.
  final pulumi.Input<String> backendName;
  /// The type of the Backend.
  final pulumi.Input<String> backendType;
  /// The created time of the Backend.
  final pulumi.Input<String> createTime;
  /// The description of the Backend.
  final pulumi.Input<String> description;
  final pulumi.Input<String> id;
  /// The modified time of the Backend.
  final pulumi.Input<String> modifiedTime;

  /// Creates a new [GetBackendsBackend].
  /// [backendId] The id of the Backend.
  /// [backendName] The name of the Backend.
  /// [backendType] The type of the Backend.
  /// [createTime] The created time of the Backend.
  /// [description] The description of the Backend.
  /// [id] Required.
  /// [modifiedTime] The modified time of the Backend.
  const GetBackendsBackend({
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
      backendId: pulumi.Input.fromValue(map['backendId'] as String),
      backendName: pulumi.Input.fromValue(map['backendName'] as String),
      backendType: pulumi.Input.fromValue(map['backendType'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedTime: pulumi.Input.fromValue(map['modifiedTime'] as String),
    );
  }
}

