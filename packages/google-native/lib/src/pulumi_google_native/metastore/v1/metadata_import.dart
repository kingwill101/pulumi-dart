import 'package:pulumi/pulumi.dart';
import 'database_dump_response.dart';
import 'metadata_import_args.dart';

/// Creates a new MetadataImport in a given project and location.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class MetadataImport extends CustomResource {
  /// The time when the metadata import was started.
  late final Output<String> createTime;

  /// Immutable. A database dump from a pre-existing metastore's database.
  late final Output<DatabaseDumpResponse> databaseDump;

  /// The description of the metadata import.
  late final Output<String> description;

  /// The time when the metadata import finished.
  late final Output<String> endTime;
  late final Output<String> location;

  /// Required. The ID of the metadata import, which is used as the final component of the metadata import's name.This value must be between 1 and 64 characters long, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  late final Output<String> metadataImportId;

  /// Immutable. The relative resource name of the metadata import, of the form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{metadata_import_id}.
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  late final Output<String?> requestId;
  late final Output<String> serviceId;

  /// The current state of the metadata import.
  late final Output<String> state;

  /// The time when the metadata import was last updated.
  late final Output<String> updateTime;

  MetadataImport(
    String name, {
    MetadataImportArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:metastore/v1:MetadataImport',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.databaseDump = Output.createUnknown<DatabaseDumpResponse>();
    this.description = Output.createUnknown<String>();
    this.endTime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.metadataImportId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.serviceId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
