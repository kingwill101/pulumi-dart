// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscriber_source_aws_log_source_resource.dart';
import 'subscriber_source_custom_log_source_resource.dart';

class SubscriberSource {
  /// Amazon Security Lake supports log and event collection for natively supported AWS services. See `aws_log_source_resource` Block below.
  final pulumi.Input<SubscriberSourceAwsLogSourceResource>?
  awsLogSourceResource;

  /// Amazon Security Lake supports custom source types. See `custom_log_source_resource` Block below.
  final pulumi.Input<SubscriberSourceCustomLogSourceResource>?
  customLogSourceResource;

  /// Creates a new [SubscriberSource].
  /// [awsLogSourceResource] Amazon Security Lake supports log and event collection for natively supported AWS services. See `aws_log_source_resource` Block below.
  /// [customLogSourceResource] Amazon Security Lake supports custom source types. See `custom_log_source_resource` Block below.
  SubscriberSource({this.awsLogSourceResource, this.customLogSourceResource});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsLogSourceResource':
          ?pulumi.Input.mapOptionalInputValue<
            SubscriberSourceAwsLogSourceResource,
            Map<String, dynamic>
          >(awsLogSourceResource, (value) => value.toMap()),
      'customLogSourceResource':
          ?pulumi.Input.mapOptionalInputValue<
            SubscriberSourceCustomLogSourceResource,
            Map<String, dynamic>
          >(customLogSourceResource, (value) => value.toMap()),
    };
  }

  factory SubscriberSource.fromMap(Map<String, dynamic> map) {
    return SubscriberSource(
      awsLogSourceResource: (() {
        final guardedValue = map['awsLogSourceResource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubscriberSourceAwsLogSourceResource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      customLogSourceResource: (() {
        final guardedValue = map['customLogSourceResource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubscriberSourceCustomLogSourceResource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
