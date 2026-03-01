// ignore_for_file: unused_element, unnecessary_cast


class GetStorageBundlesBundle {
  final String createTime;
  final String description;
  final String id;
  final String location;
  final String storageBundleId;
  final String storageBundleName;

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
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      storageBundleId: map['storageBundleId'] as String,
      storageBundleName: map['storageBundleName'] as String,
    );
  }
}

