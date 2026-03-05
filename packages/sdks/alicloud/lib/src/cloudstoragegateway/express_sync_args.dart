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
    required this.bucketName,
    this.bucketPrefix,
    required this.bucketRegion,
    this.description,
    required this.expressSyncName,
  });

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
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      bucketPrefix: (() { final guardedValue = map['bucketPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketRegion: pulumi.Input.fromValue(map['bucketRegion'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expressSyncName: pulumi.Input.fromValue(map['expressSyncName'] as String),
    );
  }
}

