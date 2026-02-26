// ignore_for_file: unused_element, unnecessary_cast

import '../subscriber_source_aws_log_source_resource/subscriber_source_aws_log_source_resource.dart';
import '../subscriber_source_custom_log_source_resource/subscriber_source_custom_log_source_resource.dart';

class SubscriberSource {
  /// Amazon Security Lake supports log and event collection for natively supported AWS services. See <span pulumi-lang-nodejs="`awsLogSourceResource`" pulumi-lang-dotnet="`AwsLogSourceResource`" pulumi-lang-go="`awsLogSourceResource`" pulumi-lang-python="`aws_log_source_resource`" pulumi-lang-yaml="`awsLogSourceResource`" pulumi-lang-java="`awsLogSourceResource`">`aws_log_source_resource`</span> Block below.
  final SubscriberSourceAwsLogSourceResource? awsLogSourceResource;

  /// Amazon Security Lake supports custom source types. See <span pulumi-lang-nodejs="`customLogSourceResource`" pulumi-lang-dotnet="`CustomLogSourceResource`" pulumi-lang-go="`customLogSourceResource`" pulumi-lang-python="`custom_log_source_resource`" pulumi-lang-yaml="`customLogSourceResource`" pulumi-lang-java="`customLogSourceResource`">`custom_log_source_resource`</span> Block below.
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
