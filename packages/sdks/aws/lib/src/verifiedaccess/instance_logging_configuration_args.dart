// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_logging_configuration_access_logs.dart';

/// {@template pulumi_verifiedaccess_instance_logging_configuration_instance_logging_configuration_args_doc}
/// The set of arguments for InstanceLoggingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_verifiedaccess_instance_logging_configuration_instance_logging_configuration_args_doc}
class InstanceLoggingConfigurationArgs {
  /// A block that specifies the configuration options for Verified Access instances. Detailed below.
  final pulumi.Input<InstanceLoggingConfigurationAccessLogs> accessLogs;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the Verified Access instance.
  final pulumi.Input<String> verifiedaccessInstanceId;

  /// Creates a new [InstanceLoggingConfigurationArgs].
  /// [accessLogs] A block that specifies the configuration options for Verified Access instances. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [verifiedaccessInstanceId] The ID of the Verified Access instance.
  InstanceLoggingConfigurationArgs({
    required pulumi.Output<InstanceLoggingConfigurationAccessLogs> accessLogs,
    pulumi.Output<String>? region,
    required pulumi.Output<String> verifiedaccessInstanceId,
  }) :
      accessLogs = pulumi.Input.asInput<InstanceLoggingConfigurationAccessLogs>(accessLogs),
      region = pulumi.Input.asOptionalInput<String>(region),
      verifiedaccessInstanceId = pulumi.Input.asInput<String>(verifiedaccessInstanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogs': pulumi.Input.mapInputValue<InstanceLoggingConfigurationAccessLogs, Map<String, dynamic>>(accessLogs, (value) => value.toMap()),
      'region': ?region,
      'verifiedaccessInstanceId': verifiedaccessInstanceId,
    };
  }

  factory InstanceLoggingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return InstanceLoggingConfigurationArgs(
      accessLogs: pulumi.Output.create<InstanceLoggingConfigurationAccessLogs>(InstanceLoggingConfigurationAccessLogs.fromMap((map['accessLogs'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      verifiedaccessInstanceId: pulumi.Output.create<String>(map['verifiedaccessInstanceId'] as String),
    );
  }
}

