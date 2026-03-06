// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_target_configuration_timestream_configuration.dart';

class ScheduledQueryTargetConfiguration {
  /// Configuration block for information needed to write data into the Timestream database and table. See below.
  final pulumi.Input<ScheduledQueryTargetConfigurationTimestreamConfiguration> timestreamConfiguration;

  /// Creates a new [ScheduledQueryTargetConfiguration].
  /// [timestreamConfiguration] Configuration block for information needed to write data into the Timestream database and table. See below.
  const ScheduledQueryTargetConfiguration({
    required this.timestreamConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timestreamConfiguration': pulumi.Input.mapInputValue<ScheduledQueryTargetConfigurationTimestreamConfiguration, Map<String, dynamic>>(timestreamConfiguration, (value) => value.toMap()),
    };
  }

  factory ScheduledQueryTargetConfiguration.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryTargetConfiguration(
      timestreamConfiguration: pulumi.Input.fromValue(ScheduledQueryTargetConfigurationTimestreamConfiguration.fromMap((map['timestreamConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}

