// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExpressSyncsSync {
  /// The name of the OSS Bucket.
  final pulumi.Input<String> bucketName;
  /// The prefix of the OSS Bucket.
  final pulumi.Input<String> bucketPrefix;
  /// The region of the OSS Bucket.
  final pulumi.Input<String> bucketRegion;
  /// The description of the Express Sync.
  final pulumi.Input<String> description;
  /// The ID of the Express Sync.
  final pulumi.Input<String> expressSyncId;
  /// The name of the Express Sync.
  final pulumi.Input<String> expressSyncName;
  final pulumi.Input<String> id;
  /// The name of the message topic (Topic) corresponding to the Express Sync in the Alibaba Cloud Message Service MNS.
  final pulumi.Input<String> mnsTopic;

  /// Creates a new [GetExpressSyncsSync].
  /// [bucketName] The name of the OSS Bucket.
  /// [bucketPrefix] The prefix of the OSS Bucket.
  /// [bucketRegion] The region of the OSS Bucket.
  /// [description] The description of the Express Sync.
  /// [expressSyncId] The ID of the Express Sync.
  /// [expressSyncName] The name of the Express Sync.
  /// [id] Required.
  /// [mnsTopic] The name of the message topic (Topic) corresponding to the Express Sync in the Alibaba Cloud Message Service MNS.
  GetExpressSyncsSync({
    required this.bucketName,
    required this.bucketPrefix,
    required this.bucketRegion,
    required this.description,
    required this.expressSyncId,
    required this.expressSyncName,
    required this.id,
    required this.mnsTopic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'bucketPrefix': bucketPrefix,
      'bucketRegion': bucketRegion,
      'description': description,
      'expressSyncId': expressSyncId,
      'expressSyncName': expressSyncName,
      'id': id,
      'mnsTopic': mnsTopic,
    };
  }

  factory GetExpressSyncsSync.fromMap(Map<String, dynamic> map) {
    return GetExpressSyncsSync(
      bucketName: (map['bucketName'] as String).input(),
      bucketPrefix: (map['bucketPrefix'] as String).input(),
      bucketRegion: (map['bucketRegion'] as String).input(),
      description: (map['description'] as String).input(),
      expressSyncId: (map['expressSyncId'] as String).input(),
      expressSyncName: (map['expressSyncName'] as String).input(),
      id: (map['id'] as String).input(),
      mnsTopic: (map['mnsTopic'] as String).input(),
    );
  }
}

