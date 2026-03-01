// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcspayload_info.dart';
import 'inline_payload_info.dart';

/// {@template pulumi_migrationcenter_v1alpha1_import_job_migrationcenter_v1alpha1_args_doc}
/// The set of arguments for ImportJob.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1alpha1_import_job_migrationcenter_v1alpha1_args_doc}
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

  /// Creates a new [ImportJobMigrationcenterV1alpha1Args].
  /// [assetSource] Reference to a source.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [gcsPayload] The payload is in Google Cloud Storage.
  /// [importJobId] Required. ID of the import job.
  /// [inlinePayload] The payload is included in the request, mainly used for small import jobs.
  /// [labels] Labels as key value pairs.
  /// [location] Optional.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  ImportJobMigrationcenterV1alpha1Args({
    required String assetSource,
    String? displayName,
    GCSPayloadInfo? gcsPayload,
    required String importJobId,
    InlinePayloadInfo? inlinePayload,
    Map<String, String>? labels,
    String? location,
    String? project,
    String? requestId,
  }) : assetSource = pulumi.Input.asInput<String>(assetSource),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       gcsPayload = pulumi.Input.asOptionalInput<GCSPayloadInfo>(gcsPayload),
       importJobId = pulumi.Input.asInput<String>(importJobId),
       inlinePayload = pulumi.Input.asOptionalInput<InlinePayloadInfo>(
         inlinePayload,
       ),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       requestId = pulumi.Input.asOptionalInput<String>(requestId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetSource': assetSource,
      'displayName': ?displayName,
      'gcsPayload':
          ?pulumi.Input.mapOptionalInputValue<
            GCSPayloadInfo,
            Map<String, dynamic>
          >(gcsPayload, (value) => value.toMap()),
      'importJobId': importJobId,
      'inlinePayload':
          ?pulumi.Input.mapOptionalInputValue<
            InlinePayloadInfo,
            Map<String, dynamic>
          >(inlinePayload, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'requestId': ?requestId,
    };
  }

  factory ImportJobMigrationcenterV1alpha1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return ImportJobMigrationcenterV1alpha1Args(
      assetSource: map['assetSource'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      gcsPayload: map['gcsPayload'] == null
          ? null
          : GCSPayloadInfo.fromMap(
              (map['gcsPayload'] as Map).cast<String, dynamic>(),
            ),
      importJobId: map['importJobId'] as String,
      inlinePayload: map['inlinePayload'] == null
          ? null
          : InlinePayloadInfo.fromMap(
              (map['inlinePayload'] as Map).cast<String, dynamic>(),
            ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
    );
  }
}
