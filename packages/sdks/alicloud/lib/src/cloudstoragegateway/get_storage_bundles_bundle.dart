// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStorageBundlesBundle {
  final pulumi.Input<String> createTime;
  final pulumi.Input<String> description;
  final pulumi.Input<String> id;
  final pulumi.Input<String> location;
  final pulumi.Input<String> storageBundleId;
  final pulumi.Input<String> storageBundleName;

  /// Creates a new [GetStorageBundlesBundle].
  /// [createTime] Required.
  /// [description] Required.
  /// [id] Required.
  /// [location] Required.
  /// [storageBundleId] Required.
  /// [storageBundleName] Required.
  GetStorageBundlesBundle({
    required this.createTime,
    required this.description,
    required this.id,
    required this.location,
    required this.storageBundleId,
    required this.storageBundleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'id': id,
      'location': location,
      'storageBundleId': storageBundleId,
      'storageBundleName': storageBundleName,
    };
  }

  factory GetStorageBundlesBundle.fromMap(Map<String, dynamic> map) {
    return GetStorageBundlesBundle(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      storageBundleId: pulumi.Input.fromValue(map['storageBundleId'] as String),
      storageBundleName: pulumi.Input.fromValue(map['storageBundleName'] as String),
    );
  }
}

