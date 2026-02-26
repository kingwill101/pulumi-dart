// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'gcspayload_info.dart';
import 'inline_payload_info.dart';

/// The set of arguments for ImportJob.
class ImportJobArgs3 {
  /// Reference to a source.
  final Input<String> assetSource;

  /// User-friendly display name. Maximum length is 63 characters.
  final Input<String>? displayName;

  /// The payload is in Google Cloud Storage.
  final Input<GCSPayloadInfo>? gcsPayload;

  /// Required. ID of the import job.
  final Input<String> importJobId;

  /// The payload is included in the request, mainly used for small import jobs.
  final Input<InlinePayloadInfo>? inlinePayload;

  /// Labels as key value pairs.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  ImportJobArgs3({
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
      map['gcsPayload'] =
          Input.mapOptionalInputValue<GCSPayloadInfo, Map<String, dynamic>>(
              gcsPayloadValue, (value) => value.toMap());
    }
    map['importJobId'] = importJobId;
    final inlinePayloadValue = inlinePayload;
    if (inlinePayloadValue != null) {
      map['inlinePayload'] =
          Input.mapOptionalInputValue<InlinePayloadInfo, Map<String, dynamic>>(
              inlinePayloadValue, (value) => value.toMap());
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

  factory ImportJobArgs3.fromMap(Map<String, dynamic> map) {
    return ImportJobArgs3(
      assetSource: Input.asInput<String>(map['assetSource']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      gcsPayload: Input.asOptionalInput<GCSPayloadInfo>(map['gcsPayload']),
      importJobId: Input.asInput<String>(map['importJobId']),
      inlinePayload:
          Input.asOptionalInput<InlinePayloadInfo>(map['inlinePayload']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
