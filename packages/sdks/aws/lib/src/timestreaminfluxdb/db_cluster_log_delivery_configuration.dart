// ignore_for_file: unused_element, unnecessary_cast

import 'db_cluster_log_delivery_configuration_s3_configuration.dart';

class DbClusterLogDeliveryConfiguration {
  /// Configuration for S3 bucket log delivery.
  final DbClusterLogDeliveryConfigurationS3Configuration? s3Configuration;

  /// Creates a new [DbClusterLogDeliveryConfiguration].
  /// [s3Configuration] Configuration for S3 bucket log delivery.
  DbClusterLogDeliveryConfiguration({
    this.s3Configuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Configuration': ?s3Configuration == null ? null : s3Configuration!.toMap(),
    };
  }

  factory DbClusterLogDeliveryConfiguration.fromMap(Map<String, dynamic> map) {
    return DbClusterLogDeliveryConfiguration(
      s3Configuration: map['s3Configuration'] == null ? null : DbClusterLogDeliveryConfigurationS3Configuration.fromMap((map['s3Configuration'] as Map).cast<String, dynamic>()),
    );
  }
}

