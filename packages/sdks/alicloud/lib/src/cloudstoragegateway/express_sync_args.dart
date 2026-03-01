// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudstoragegateway_express_sync_express_sync_args_doc}
/// The set of arguments for ExpressSync.
/// {@endtemplate}
/// {@macro pulumi_cloudstoragegateway_express_sync_express_sync_args_doc}
class ExpressSyncArgs {
  /// The name of the OSS Bucket.
  final pulumi.Input<String> bucketName;
  /// The prefix of the OSS Bucket.
  final pulumi.Input<String>? bucketPrefix;
  /// The region of the OSS Bucket.
  final pulumi.Input<String> bucketRegion;
  /// The description of the Express Sync. The length of the name is limited to `1` to `255` characters.
  final pulumi.Input<String>? description;
  /// The name of the ExpressSync. The length of the name is limited to `1` to `128` characters. It can contain uppercase and lowercase letters, Chinese characters, numbers, English periods (.), underscores (_), or hyphens (-), and must start with  letters.
  final pulumi.Input<String> expressSyncName;

  /// Creates a new [ExpressSyncArgs].
  /// [bucketName] The name of the OSS Bucket.
  /// [bucketPrefix] The prefix of the OSS Bucket.
  /// [bucketRegion] The region of the OSS Bucket.
  /// [description] The description of the Express Sync. The length of the name is limited to `1` to `255` characters.
  /// [expressSyncName] The name of the ExpressSync. The length of the name is limited to `1` to `128` characters. It can contain uppercase and lowercase letters, Chinese characters, numbers, English periods (.), underscores (_), or hyphens (-), and must start with  letters.
  ExpressSyncArgs({
    required pulumi.Output<String> bucketName,
    pulumi.Output<String>? bucketPrefix,
    required pulumi.Output<String> bucketRegion,
    pulumi.Output<String>? description,
    required pulumi.Output<String> expressSyncName,
  }) :
      bucketName = pulumi.Input.asInput<String>(bucketName),
      bucketPrefix = pulumi.Input.asOptionalInput<String>(bucketPrefix),
      bucketRegion = pulumi.Input.asInput<String>(bucketRegion),
      description = pulumi.Input.asOptionalInput<String>(description),
      expressSyncName = pulumi.Input.asInput<String>(expressSyncName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'bucketPrefix': ?bucketPrefix,
      'bucketRegion': bucketRegion,
      'description': ?description,
      'expressSyncName': expressSyncName,
    };
  }

  factory ExpressSyncArgs.fromMap(Map<String, dynamic> map) {
    return ExpressSyncArgs(
      bucketName: pulumi.Output.create<String>(map['bucketName'] as String),
      bucketPrefix: map['bucketPrefix'] == null ? null : pulumi.Output.create<String>(map['bucketPrefix'] as String),
      bucketRegion: pulumi.Output.create<String>(map['bucketRegion'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      expressSyncName: pulumi.Output.create<String>(map['expressSyncName'] as String),
    );
  }
}

