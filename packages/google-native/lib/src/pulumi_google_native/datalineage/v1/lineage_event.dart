import 'package:pulumi/pulumi.dart';
import 'google_cloud_datacatalog_lineage_v1_event_link_response.dart';
import 'lineage_event_args.dart';

/// Creates a new lineage event.
class LineageEvent extends CustomResource {
  /// Optional. The end of the transformation which resulted in this lineage event. For streaming scenarios, it should be the end of the period from which the lineage is being reported.
  late final Output<String> endTime;

  /// Optional. List of source-target pairs. Can't contain more than 100 tuples.
  late final Output<List<GoogleCloudDatacatalogLineageV1EventLinkResponse>>
      links;
  late final Output<String> location;

  /// Immutable. The resource name of the lineage event. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}/lineageEvents/{lineage_event}`. Can be specified or auto-assigned. {lineage_event} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  late final Output<String> name;
  late final Output<String> processId;
  late final Output<String> project;

  /// A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This request is idempotent only if a `request_id` is provided.
  late final Output<String?> requestId;
  late final Output<String> runId;

  /// The beginning of the transformation which resulted in this lineage event. For streaming scenarios, it should be the beginning of the period from which the lineage is being reported.
  late final Output<String> startTime;

  LineageEvent(
    String name, {
    LineageEventArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datalineage/v1:LineageEvent',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.endTime = Output.createUnknown<String>();
    this.links = Output.createUnknown<
        List<GoogleCloudDatacatalogLineageV1EventLinkResponse>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.processId = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.runId = Output.createUnknown<String>();
    this.startTime = Output.createUnknown<String>();
  }
}
