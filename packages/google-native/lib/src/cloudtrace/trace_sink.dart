import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_config_response.dart';
import 'trace_sink_args.dart';

/// Creates a sink that exports trace spans to a destination. The export of newly-ingested traces begins immediately, unless the sink's `writer_identity` is not permitted to write to the destination. A sink can export traces only from the resource owning the sink (the 'parent').
class TraceSink extends pulumi.CustomResource {
  /// The canonical sink resource name, unique within the project. Must be of the form: projects/[PROJECT_NUMBER]/traceSinks/[SINK_ID]. E.g.: `"projects/12345/traceSinks/my-project-trace-sink"`. Sink identifiers are limited to 256 characters and can include only the following characters: upper and lower-case alphanumeric characters, underscores, hyphens, and periods.
  late final pulumi.Output<String> name;

  /// The export destination.
  late final pulumi.Output<OutputConfigResponse> outputConfig;
  late final pulumi.Output<String> project;

  /// A service account name for exporting the data. This field is set by sinks.create and sinks.update. The service account will need to be granted write access to the destination specified in the output configuration, see [Granting access for a resource](/iam/docs/granting-roles-to-service-accounts#granting_access_to_a_service_account_for_a_resource). To create tables and to write data, this account needs the `dataEditor` role. Read more about roles in the [BigQuery documentation](https://cloud.google.com/bigquery/docs/access-control). E.g.: "service-00000001@00000002.iam.gserviceaccount.com"
  late final pulumi.Output<String> writerIdentity;

  /// Creates a new [TraceSink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TraceSink]. {@macro pulumi_cloudtrace_v2beta1_trace_sink_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TraceSink(
    String name, {
    TraceSinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:cloudtrace/v2beta1:TraceSink',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    this.outputConfig = registerOutput<OutputConfigResponse>('outputConfig');
    this.project = registerOutput<String>('project');
    this.writerIdentity = registerOutput<String>('writerIdentity');
  }
}
