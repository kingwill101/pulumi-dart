// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcspayload_info.dart';
import 'inline_payload_info.dart';

/// The set of arguments for ImportJob.
class ImportJobMigrationcenterV1alpha1Args {
  /// Reference to a source.
  final pulumi.Input<String> assetSource;

  /// User-friendly display name. Maximum length is 63 characters.
  final pulumi.Input<String>? displayName;

  /// The payload is in Google Cloud Storage.
  final pulumi.Input<GCSPayloadInfo>? gcsPayload;

  /// Required. ID of the import job.
  final pulumi.Input<String> importJobId;

  /// The payload is included in the request, mainly used for small import jobs.
  final pulumi.Input<InlinePayloadInfo>? inlinePayload;

  /// Labels as key value pairs.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  ImportJobMigrationcenterV1alpha1Args({
    required this.assetSource,
    this.displayName,
    this.gcsPayload,
    required this.importJobId,
    this.inlinePayload,
    this.labels,
    this.location,
    this.project,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assetSource'] = assetSource;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final gcsPayloadValue = gcsPayload;
    if (gcsPayloadValue != null) {
      map['gcsPayload'] = pulumi.Input.mapOptionalInputValue<GCSPayloadInfo,
          Map<String, dynamic>>(gcsPayloadValue, (value) => value.toMap());
    }
    map['importJobId'] = importJobId;
    final inlinePayloadValue = inlinePayload;
    if (inlinePayloadValue != null) {
      map['inlinePayload'] = pulumi.Input.mapOptionalInputValue<
          InlinePayloadInfo,
          Map<String, dynamic>>(inlinePayloadValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory ImportJobMigrationcenterV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return ImportJobMigrationcenterV1alpha1Args(
      assetSource: pulumi.Input.asInput<String>(map['assetSource']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      gcsPayload:
          pulumi.Input.asOptionalInput<GCSPayloadInfo>(map['gcsPayload']),
      importJobId: pulumi.Input.asInput<String>(map['importJobId']),
      inlinePayload:
          pulumi.Input.asOptionalInput<InlinePayloadInfo>(map['inlinePayload']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
