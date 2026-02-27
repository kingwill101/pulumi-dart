import 'package:pulumi/pulumi.dart';
import '../query_logging_configuration_destination/query_logging_configuration_destination.dart';
import '../query_logging_configuration_timeouts/query_logging_configuration_timeouts.dart';
import 'query_logging_configuration_args.dart';

/// Manages an Amazon Managed Service for Prometheus (AMP) Query Logging Configuration.
class QueryLoggingConfiguration extends CustomResource {
  /// Configuration block for the logging destinations. See `destinations`.
  late final Output<List<QueryLoggingConfigurationDestination>> destinations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<QueryLoggingConfigurationTimeouts?> timeouts;

  /// The ID of the AMP workspace for which to configure query logging.
  ///
  /// The following arguments are optional:
  late final Output<String> workspaceId;

  QueryLoggingConfiguration(
    String name, {
    QueryLoggingConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:amp/queryLoggingConfiguration:QueryLoggingConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.destinations =
        registerOutput<List<QueryLoggingConfigurationDestination>>(
            'destinations');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<QueryLoggingConfigurationTimeouts?>('timeouts');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
