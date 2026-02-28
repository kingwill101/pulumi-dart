import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_data_file_migrationcenter_v1alpha1_args.dart';
import 'upload_file_info_response_migrationcenter_v1alpha1.dart';

/// Creates an import data file.
/// Auto-naming is currently not supported for this resource.
class ImportDataFileMigrationcenterV1alpha1 extends pulumi.CustomResource {
  /// The timestamp when the file was created.
  late final pulumi.Output<String> createTime;

  /// Optional. User-friendly display name. Maximum length is 256 characters.
  late final pulumi.Output<String> displayName;

  /// The payload format.
  late final pulumi.Output<String> format;

  /// Required. The ID of the new data file.
  late final pulumi.Output<String> importDataFileId;
  late final pulumi.Output<String> importJobId;
  late final pulumi.Output<String> location;

  /// The name of the file.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The state of the import data file.
  late final pulumi.Output<String> state;

  /// Information about a file that is uploaded to a storage service.
  late final pulumi.Output<UploadFileInfoResponseMigrationcenterV1alpha1>
      uploadFileInfo;

  /// Creates a new [ImportDataFileMigrationcenterV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImportDataFileMigrationcenterV1alpha1]. {@macro pulumi_migrationcenter_v1alpha1_import_data_file_migrationcenter_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImportDataFileMigrationcenterV1alpha1(
    String name, {
    ImportDataFileMigrationcenterV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:migrationcenter/v1alpha1:ImportDataFile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.format = registerOutput<String>('format');
    this.importDataFileId = registerOutput<String>('importDataFileId');
    this.importJobId = registerOutput<String>('importJobId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.uploadFileInfo =
        registerOutput<UploadFileInfoResponseMigrationcenterV1alpha1>(
            'uploadFileInfo');
  }
}
