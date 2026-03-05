// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_log_delivery_configuration_s3_configuration.dart';

class DbInstanceLogDeliveryConfiguration {
  /// Configuration for S3 bucket log delivery.
  final pulumi.Input<DbInstanceLogDeliveryConfigurationS3Configuration>? s3Configuration;

  /// Creates a new [DbInstanceLogDeliveryConfiguration].
  /// [s3Configuration] Configuration for S3 bucket log delivery.
  DbInstanceLogDeliveryConfiguration({
    this.s3Configuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Configuration': ?pulumi.Input.mapOptionalInputValue<DbInstanceLogDeliveryConfigurationS3Configuration, Map<String, dynamic>>(s3Configuration, (value) => value.toMap()),
    };
  }

  factory DbInstanceLogDeliveryConfiguration.fromMap(Map<String, dynamic> map) {
    return DbInstanceLogDeliveryConfiguration(
      s3Configuration: (() { final guardedValue = map['s3Configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DbInstanceLogDeliveryConfigurationS3Configuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

