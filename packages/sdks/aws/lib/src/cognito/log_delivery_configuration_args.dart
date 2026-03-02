// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_delivery_configuration_log_configuration.dart';

/// {@template pulumi_cognito_log_delivery_configuration_log_delivery_configuration_args_doc}
/// The set of arguments for LogDeliveryConfiguration.
/// {@endtemplate}
/// {@macro pulumi_cognito_log_delivery_configuration_log_delivery_configuration_args_doc}
class LogDeliveryConfigurationArgs {
  /// Configuration block for log delivery. At least one configuration block is required. See Log Configurations below.
  final pulumi.Input<List<LogDeliveryConfigurationLogConfiguration>> logConfigurations;
  /// The AWS region.
  final pulumi.Input<String>? region;
  /// The ID of the user pool for which to configure log delivery.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> userPoolId;

  /// Creates a new [LogDeliveryConfigurationArgs].
  /// [logConfigurations] Configuration block for log delivery. At least one configuration block is required. See Log Configurations below.
  /// [region] The AWS region.
  /// [userPoolId] The ID of the user pool for which to configure log delivery.
  LogDeliveryConfigurationArgs({
    required this.logConfigurations,
    this.region,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logConfigurations': pulumi.Input.mapInputValue<List<LogDeliveryConfigurationLogConfiguration>, List<Map<String, dynamic>>>(logConfigurations, (value) => pulumi.Input.encodeList<LogDeliveryConfigurationLogConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'userPoolId': userPoolId,
    };
  }

  factory LogDeliveryConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return LogDeliveryConfigurationArgs(
      logConfigurations: (pulumi.Input.decodeList<LogDeliveryConfigurationLogConfiguration>(map['logConfigurations'], (value) => LogDeliveryConfigurationLogConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      userPoolId: (map['userPoolId'] as String).input(),
    );
  }
}

