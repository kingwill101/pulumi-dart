// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectDataDeliveryS3Destination {
  /// The name of the bucket in which Evidently stores evaluation events.
  final pulumi.Input<String>? bucket;
  /// The bucket prefix in which Evidently stores evaluation events.
  final pulumi.Input<String>? prefix;

  /// Creates a new [ProjectDataDeliveryS3Destination].
  /// [bucket] The name of the bucket in which Evidently stores evaluation events.
  /// [prefix] The bucket prefix in which Evidently stores evaluation events.
  ProjectDataDeliveryS3Destination({
    this.bucket,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'prefix': ?prefix,
    };
  }

  factory ProjectDataDeliveryS3Destination.fromMap(Map<String, dynamic> map) {
    return ProjectDataDeliveryS3Destination(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
    );
  }
}

