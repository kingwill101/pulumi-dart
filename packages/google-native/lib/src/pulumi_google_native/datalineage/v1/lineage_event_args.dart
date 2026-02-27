// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_lineage_v1_event_link.dart';

/// The set of arguments for LineageEvent.
class LineageEventArgs {
  /// Optional. The end of the transformation which resulted in this lineage event. For streaming scenarios, it should be the end of the period from which the lineage is being reported.
  final pulumi.Input<String>? endTime;

  /// Optional. List of source-target pairs. Can't contain more than 100 tuples.
  final pulumi.Input<List<GoogleCloudDatacatalogLineageV1EventLink>>? links;
  final pulumi.Input<String>? location;

  /// Immutable. The resource name of the lineage event. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}/lineageEvents/{lineage_event}`. Can be specified or auto-assigned. {lineage_event} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  final pulumi.Input<String>? name;
  final pulumi.Input<String> processId;
  final pulumi.Input<String>? project;

  /// A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This request is idempotent only if a `request_id` is provided.
  final pulumi.Input<String>? requestId;
  final pulumi.Input<String> runId;

  /// The beginning of the transformation which resulted in this lineage event. For streaming scenarios, it should be the beginning of the period from which the lineage is being reported.
  final pulumi.Input<String> startTime;

  LineageEventArgs({
    this.endTime,
    this.links,
    this.location,
    this.name,
    required this.processId,
    this.project,
    this.requestId,
    required this.runId,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final linksValue = links;
    if (linksValue != null) {
      map['links'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDatacatalogLineageV1EventLink>,
              List<Map<String, dynamic>>>(
          linksValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDatacatalogLineageV1EventLink,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['processId'] = processId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['runId'] = runId;
    map['startTime'] = startTime;
    return map;
  }

  factory LineageEventArgs.fromMap(Map<String, dynamic> map) {
    return LineageEventArgs(
      endTime: pulumi.Input.asOptionalInput<String>(map['endTime']),
      links: pulumi.Input.asOptionalInput<
          List<GoogleCloudDatacatalogLineageV1EventLink>>(map['links']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      processId: pulumi.Input.asInput<String>(map['processId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      runId: pulumi.Input.asInput<String>(map['runId']),
      startTime: pulumi.Input.asInput<String>(map['startTime']),
    );
  }
}
