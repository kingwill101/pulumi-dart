// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_delivery_configuration_log_configuration.dart';

/// Input properties used for looking up and filtering LogDeliveryConfiguration resources.
class LogDeliveryConfigurationState {
  /// Configuration block for log delivery. At least one configuration block is required. See Log Configurations below.
  final pulumi.Input<List<LogDeliveryConfigurationLogConfiguration>>? logConfigurations;
  /// The AWS region.
  final pulumi.Input<String>? region;
  /// The ID of the user pool for which to configure log delivery.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? userPoolId;

  /// Creates a new [LogDeliveryConfigurationState].
  /// [logConfigurations] Configuration block for log delivery. At least one configuration block is required. See Log Configurations below.
  /// [region] The AWS region.
  /// [userPoolId] The ID of the user pool for which to configure log delivery.
  LogDeliveryConfigurationState({
    pulumi.Output<List<LogDeliveryConfigurationLogConfiguration>>? logConfigurations,
    pulumi.Output<String>? region,
    pulumi.Output<String>? userPoolId,
  }) :
      logConfigurations = pulumi.Input.asOptionalInput<List<LogDeliveryConfigurationLogConfiguration>>(logConfigurations),
      region = pulumi.Input.asOptionalInput<String>(region),
      userPoolId = pulumi.Input.asOptionalInput<String>(userPoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logConfigurations': ?pulumi.Input.mapOptionalInputValue<List<LogDeliveryConfigurationLogConfiguration>, List<Map<String, dynamic>>>(logConfigurations, (value) => pulumi.Input.encodeList<LogDeliveryConfigurationLogConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'userPoolId': ?userPoolId,
    };
  }

  factory LogDeliveryConfigurationState.fromMap(Map<String, dynamic> map) {
    return LogDeliveryConfigurationState(
      logConfigurations: map['logConfigurations'] == null ? null : pulumi.Output.create<List<LogDeliveryConfigurationLogConfiguration>>(pulumi.Input.decodeList<LogDeliveryConfigurationLogConfiguration>(map['logConfigurations'], (value) => LogDeliveryConfigurationLogConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      userPoolId: map['userPoolId'] == null ? null : pulumi.Output.create<String>(map['userPoolId'] as String),
    );
  }
}

