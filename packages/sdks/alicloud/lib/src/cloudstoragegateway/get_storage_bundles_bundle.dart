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
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      location: (map['location'] as String).input(),
      storageBundleId: (map['storageBundleId'] as String).input(),
      storageBundleName: (map['storageBundleName'] as String).input(),
    );
  }
}

