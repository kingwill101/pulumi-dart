// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ExpressSync resources.
class ExpressSyncState {
  /// The name of the OSS Bucket.
  final pulumi.Input<String>? bucketName;
  /// The prefix of the OSS Bucket.
  final pulumi.Input<String>? bucketPrefix;
  /// The region of the OSS Bucket.
  final pulumi.Input<String>? bucketRegion;
  /// The description of the Express Sync. The length of the name is limited to `1` to `255` characters.
  final pulumi.Input<String>? description;
  /// The name of the ExpressSync. The length of the name is limited to `1` to `128` characters. It can contain uppercase and lowercase letters, Chinese characters, numbers, English periods (.), underscores (_), or hyphens (-), and must start with  letters.
  final pulumi.Input<String>? expressSyncName;

  /// Creates a new [ExpressSyncState].
  /// [bucketName] The name of the OSS Bucket.
  /// [bucketPrefix] The prefix of the OSS Bucket.
  /// [bucketRegion] The region of the OSS Bucket.
  /// [description] The description of the Express Sync. The length of the name is limited to `1` to `255` characters.
  /// [expressSyncName] The name of the ExpressSync. The length of the name is limited to `1` to `128` characters. It can contain uppercase and lowercase letters, Chinese characters, numbers, English periods (.), underscores (_), or hyphens (-), and must start with  letters.
  ExpressSyncState({
    this.bucketName,
    this.bucketPrefix,
    this.bucketRegion,
    this.description,
    this.expressSyncName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'bucketPrefix': ?bucketPrefix,
      'bucketRegion': ?bucketRegion,
      'description': ?description,
      'expressSyncName': ?expressSyncName,
    };
  }

  factory ExpressSyncState.fromMap(Map<String, dynamic> map) {
    return ExpressSyncState(
      bucketName: map['bucketName'] == null ? null : (map['bucketName']! as String).input(),
      bucketPrefix: map['bucketPrefix'] == null ? null : (map['bucketPrefix']! as String).input(),
      bucketRegion: map['bucketRegion'] == null ? null : (map['bucketRegion']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      expressSyncName: map['expressSyncName'] == null ? null : (map['expressSyncName']! as String).input(),
    );
  }
}

