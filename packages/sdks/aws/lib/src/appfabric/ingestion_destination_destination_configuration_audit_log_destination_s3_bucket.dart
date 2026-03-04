// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket {
  final pulumi.Input<String> bucketName;

  /// The object key to use.
  final pulumi.Input<String>? prefix;

  /// Creates a new [IngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket].
  /// [bucketName] Required.
  /// [prefix] The object key to use.
  IngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket({
    required this.bucketName,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucketName': bucketName, 'prefix': ?prefix};
  }

  factory IngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket.fromMap(
    Map<String, dynamic> map,
  ) {
    return IngestionDestinationDestinationConfigurationAuditLogDestinationS3Bucket(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      prefix: (() {
        final guardedValue = map['prefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
