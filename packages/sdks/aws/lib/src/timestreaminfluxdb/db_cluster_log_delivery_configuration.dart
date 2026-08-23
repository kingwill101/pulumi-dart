// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_cluster_log_delivery_configuration_s3_configuration.dart';

class DbClusterLogDeliveryConfiguration {
  /// Configuration for S3 bucket log delivery.
  final pulumi.Input<DbClusterLogDeliveryConfigurationS3Configuration>? s3Configuration;

  /// Creates a new [DbClusterLogDeliveryConfiguration].
  /// [s3Configuration] Configuration for S3 bucket log delivery.
  const DbClusterLogDeliveryConfiguration({
    this.s3Configuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Configuration': ?pulumi.Input.mapOptionalInputValue<DbClusterLogDeliveryConfigurationS3Configuration, Map<String, dynamic>>(s3Configuration, (value) => value.toMap()),
    };
  }

  factory DbClusterLogDeliveryConfiguration.fromMap(Map<String, dynamic> map) {
    return DbClusterLogDeliveryConfiguration(
      s3Configuration: (() { final guardedValue = map['s3Configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DbClusterLogDeliveryConfigurationS3Configuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
