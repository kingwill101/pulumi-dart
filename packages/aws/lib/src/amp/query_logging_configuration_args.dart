// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_logging_configuration_destination.dart';
import 'query_logging_configuration_timeouts.dart';

/// {@template pulumi_amp_query_logging_configuration_query_logging_configuration_args_doc}
/// The set of arguments for QueryLoggingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_amp_query_logging_configuration_query_logging_configuration_args_doc}
class QueryLoggingConfigurationArgs {
  /// Configuration block for the logging destinations. See `destinations`.
  final pulumi.Input<List<QueryLoggingConfigurationDestination>> destinations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<QueryLoggingConfigurationTimeouts>? timeouts;
  /// The ID of the AMP workspace for which to configure query logging.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> workspaceId;

  /// Creates a new [QueryLoggingConfigurationArgs].
  /// [destinations] Configuration block for the logging destinations. See `destinations`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [workspaceId] The ID of the AMP workspace for which to configure query logging.
  QueryLoggingConfigurationArgs({
    required List<QueryLoggingConfigurationDestination> destinations,
    String? region,
    QueryLoggingConfigurationTimeouts? timeouts,
    required String workspaceId,
  }) :
      destinations = pulumi.Input.asInput<List<QueryLoggingConfigurationDestination>>(destinations),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<QueryLoggingConfigurationTimeouts>(timeouts),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': pulumi.Input.mapInputValue<List<QueryLoggingConfigurationDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<QueryLoggingConfigurationDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<QueryLoggingConfigurationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'workspaceId': workspaceId,
    };
  }

  factory QueryLoggingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return QueryLoggingConfigurationArgs(
      destinations: pulumi.Input.decodeList<QueryLoggingConfigurationDestination>(map['destinations'], (value) => QueryLoggingConfigurationDestination.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      timeouts: map['timeouts'] == null ? null : QueryLoggingConfigurationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
      workspaceId: map['workspaceId'] as String,
    );
  }
}

