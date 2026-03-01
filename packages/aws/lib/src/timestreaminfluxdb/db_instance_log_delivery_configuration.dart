// ignore_for_file: unused_element, unnecessary_cast

import 'db_instance_log_delivery_configuration_s3_configuration.dart';

class DbInstanceLogDeliveryConfiguration {
  /// Configuration for S3 bucket log delivery.
  final DbInstanceLogDeliveryConfigurationS3Configuration? s3Configuration;

  /// Creates a new [DbInstanceLogDeliveryConfiguration].
  /// [s3Configuration] Configuration for S3 bucket log delivery.
  DbInstanceLogDeliveryConfiguration({this.s3Configuration});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Configuration': ?s3Configuration == null
          ? null
          : s3Configuration!.toMap(),
    };
  }

  factory DbInstanceLogDeliveryConfiguration.fromMap(Map<String, dynamic> map) {
    return DbInstanceLogDeliveryConfiguration(
      s3Configuration: map['s3Configuration'] == null
          ? null
          : DbInstanceLogDeliveryConfigurationS3Configuration.fromMap(
              (map['s3Configuration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
