// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../query_logging_configuration_destination/query_logging_configuration_destination.dart';
import '../query_logging_configuration_timeouts/query_logging_configuration_timeouts.dart';

/// The set of arguments for QueryLoggingConfiguration.
class QueryLoggingConfigurationArgs {
  /// Configuration block for the logging destinations. See `destinations`.
  final Input<List<QueryLoggingConfigurationDestination>> destinations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<QueryLoggingConfigurationTimeouts>? timeouts;

  /// The ID of the AMP workspace for which to configure query logging.
  ///
  /// The following arguments are optional:
  final Input<String> workspaceId;

  QueryLoggingConfigurationArgs({
    required this.destinations,
    this.region,
    this.timeouts,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinations'] = Input.mapInputValue<
            List<QueryLoggingConfigurationDestination>,
            List<Map<String, dynamic>>>(
        destinations,
        (value) => Input.encodeList<QueryLoggingConfigurationDestination,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          QueryLoggingConfigurationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['workspaceId'] = workspaceId;
    return map;
  }

  factory QueryLoggingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return QueryLoggingConfigurationArgs(
      destinations: Input.asInput<List<QueryLoggingConfigurationDestination>>(
          map['destinations']),
      region: Input.asOptionalInput<String>(map['region']),
      timeouts: Input.asOptionalInput<QueryLoggingConfigurationTimeouts>(
          map['timeouts']),
      workspaceId: Input.asInput<String>(map['workspaceId']),
    );
  }
}
