// ignore_for_file: unused_element, unnecessary_cast

import '../subscriber_source_aws_log_source_resource/subscriber_source_aws_log_source_resource.dart';
import '../subscriber_source_custom_log_source_resource/subscriber_source_custom_log_source_resource.dart';

class SubscriberSource {
  /// Amazon Security Lake supports log and event collection for natively supported AWS services. See `aws_log_source_resource` Block below.
  final SubscriberSourceAwsLogSourceResource? awsLogSourceResource;

  /// Amazon Security Lake supports custom source types. See `custom_log_source_resource` Block below.
  final SubscriberSourceCustomLogSourceResource? customLogSourceResource;

  SubscriberSource({
    this.awsLogSourceResource,
    this.customLogSourceResource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsLogSourceResourceValue = awsLogSourceResource;
    if (awsLogSourceResourceValue != null) {
      map['awsLogSourceResource'] = awsLogSourceResourceValue.toMap();
    }
    final customLogSourceResourceValue = customLogSourceResource;
    if (customLogSourceResourceValue != null) {
      map['customLogSourceResource'] = customLogSourceResourceValue.toMap();
    }
    return map;
  }

  factory SubscriberSource.fromMap(Map<String, dynamic> map) {
    return SubscriberSource(
      awsLogSourceResource: map['awsLogSourceResource'] == null
          ? null
          : SubscriberSourceAwsLogSourceResource.fromMap(
              (map['awsLogSourceResource'] as Map).cast<String, dynamic>()),
      customLogSourceResource: map['customLogSourceResource'] == null
          ? null
          : SubscriberSourceCustomLogSourceResource.fromMap(
              (map['customLogSourceResource'] as Map).cast<String, dynamic>()),
    );
  }
}
