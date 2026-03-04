// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_logging_configuration_access_logs.dart';

/// Input properties used for looking up and filtering InstanceLoggingConfiguration resources.
class InstanceLoggingConfigurationState {
  /// A block that specifies the configuration options for Verified Access instances. Detailed below.
  final pulumi.Input<InstanceLoggingConfigurationAccessLogs>? accessLogs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the Verified Access instance.
  final pulumi.Input<String>? verifiedaccessInstanceId;

  /// Creates a new [InstanceLoggingConfigurationState].
  /// [accessLogs] A block that specifies the configuration options for Verified Access instances. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [verifiedaccessInstanceId] The ID of the Verified Access instance.
  InstanceLoggingConfigurationState({
    this.accessLogs,
    this.region,
    this.verifiedaccessInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogs':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceLoggingConfigurationAccessLogs,
            Map<String, dynamic>
          >(accessLogs, (value) => value.toMap()),
      'region': ?region,
      'verifiedaccessInstanceId': ?verifiedaccessInstanceId,
    };
  }

  factory InstanceLoggingConfigurationState.fromMap(Map<String, dynamic> map) {
    return InstanceLoggingConfigurationState(
      accessLogs: (() {
        final guardedValue = map['accessLogs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceLoggingConfigurationAccessLogs.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      verifiedaccessInstanceId: (() {
        final guardedValue = map['verifiedaccessInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
