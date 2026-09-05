// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_logging_configuration_destination.dart';
import 'query_logging_configuration_timeouts.dart';

/// Input properties used for looking up and filtering QueryLoggingConfiguration resources.
class QueryLoggingConfigurationState {
  /// Configuration block for the logging destinations. See `destinations`.
  final pulumi.Input<List<QueryLoggingConfigurationDestination>?>? destinations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<QueryLoggingConfigurationTimeouts?>? timeouts;
  /// The ID of the AMP workspace for which to configure query logging.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? workspaceId;

  /// Creates a new [QueryLoggingConfigurationState].
  /// [destinations] Configuration block for the logging destinations. See `destinations`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [workspaceId] The ID of the AMP workspace for which to configure query logging.
  const QueryLoggingConfigurationState({
    this.destinations,
    this.region,
    this.timeouts,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<QueryLoggingConfigurationDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<QueryLoggingConfigurationDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<QueryLoggingConfigurationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'workspaceId': ?workspaceId,
    };
  }

  factory QueryLoggingConfigurationState.fromMap(Map<String, dynamic> map) {
    return QueryLoggingConfigurationState(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QueryLoggingConfigurationDestination>(guardedValue, (value) => QueryLoggingConfigurationDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueryLoggingConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
