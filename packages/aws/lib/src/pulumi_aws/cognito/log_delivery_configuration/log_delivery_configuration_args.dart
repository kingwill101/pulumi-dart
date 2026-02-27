// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../log_delivery_configuration_log_configuration/log_delivery_configuration_log_configuration.dart';

/// The set of arguments for LogDeliveryConfiguration.
class LogDeliveryConfigurationArgs {
  /// Configuration block for log delivery. At least one configuration block is required. See Log Configurations below.
  final pulumi.Input<List<LogDeliveryConfigurationLogConfiguration>>
      logConfigurations;

  /// The AWS region.
  final pulumi.Input<String>? region;

  /// The ID of the user pool for which to configure log delivery.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> userPoolId;

  LogDeliveryConfigurationArgs({
    required this.logConfigurations,
    this.region,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logConfigurations'] = pulumi.Input.mapInputValue<
            List<LogDeliveryConfigurationLogConfiguration>,
            List<Map<String, dynamic>>>(
        logConfigurations,
        (value) => pulumi.Input.encodeList<
            LogDeliveryConfigurationLogConfiguration,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['userPoolId'] = userPoolId;
    return map;
  }

  factory LogDeliveryConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return LogDeliveryConfigurationArgs(
      logConfigurations:
          pulumi.Input.asInput<List<LogDeliveryConfigurationLogConfiguration>>(
              map['logConfigurations']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      userPoolId: pulumi.Input.asInput<String>(map['userPoolId']),
    );
  }
}
