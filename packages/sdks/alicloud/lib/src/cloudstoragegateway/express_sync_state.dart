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
    pulumi.Output<String>? bucketName,
    pulumi.Output<String>? bucketPrefix,
    pulumi.Output<String>? bucketRegion,
    pulumi.Output<String>? description,
    pulumi.Output<String>? expressSyncName,
  }) :
      bucketName = pulumi.Input.asOptionalInput<String>(bucketName),
      bucketPrefix = pulumi.Input.asOptionalInput<String>(bucketPrefix),
      bucketRegion = pulumi.Input.asOptionalInput<String>(bucketRegion),
      description = pulumi.Input.asOptionalInput<String>(description),
      expressSyncName = pulumi.Input.asOptionalInput<String>(expressSyncName);

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
      bucketName: map['bucketName'] == null ? null : pulumi.Output.create<String>(map['bucketName'] as String),
      bucketPrefix: map['bucketPrefix'] == null ? null : pulumi.Output.create<String>(map['bucketPrefix'] as String),
      bucketRegion: map['bucketRegion'] == null ? null : pulumi.Output.create<String>(map['bucketRegion'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      expressSyncName: map['expressSyncName'] == null ? null : pulumi.Output.create<String>(map['expressSyncName'] as String),
    );
  }
}

