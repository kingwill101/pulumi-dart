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
      'accessLogs': ?pulumi.Input.mapOptionalInputValue<InstanceLoggingConfigurationAccessLogs, Map<String, dynamic>>(accessLogs, (value) => value.toMap()),
      'region': ?region,
      'verifiedaccessInstanceId': ?verifiedaccessInstanceId,
    };
  }

  factory InstanceLoggingConfigurationState.fromMap(Map<String, dynamic> map) {
    return InstanceLoggingConfigurationState(
      accessLogs: map['accessLogs'] == null ? null : ((InstanceLoggingConfigurationAccessLogs.fromMap((map['accessLogs']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      verifiedaccessInstanceId: map['verifiedaccessInstanceId'] == null ? null : ((map['verifiedaccessInstanceId'] as String).input()).input(),
    );
  }
}

