// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_logging_configuration_access_logs/instance_logging_configuration_access_logs.dart';

/// The set of arguments for InstanceLoggingConfiguration.
class InstanceLoggingConfigurationArgs {
  /// A block that specifies the configuration options for Verified Access instances. Detailed below.
  final pulumi.Input<InstanceLoggingConfigurationAccessLogs> accessLogs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the Verified Access instance.
  final pulumi.Input<String> verifiedaccessInstanceId;

  InstanceLoggingConfigurationArgs({
    required this.accessLogs,
    this.region,
    required this.verifiedaccessInstanceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessLogs'] = pulumi.Input.mapInputValue<
        InstanceLoggingConfigurationAccessLogs,
        Map<String, dynamic>>(accessLogs, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['verifiedaccessInstanceId'] = verifiedaccessInstanceId;
    return map;
  }

  factory InstanceLoggingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return InstanceLoggingConfigurationArgs(
      accessLogs: pulumi.Input.asInput<InstanceLoggingConfigurationAccessLogs>(
          map['accessLogs']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      verifiedaccessInstanceId:
          pulumi.Input.asInput<String>(map['verifiedaccessInstanceId']),
    );
  }
}
