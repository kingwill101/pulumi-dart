import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_source_details_response.dart';
import 'azure_source_details_response.dart';
import 'encryption_response_vmmigration_v1.dart';
import 'source_vmmigration_v1_args.dart';
import 'vmware_source_details_response.dart';

/// Creates a new Source in a given project and location.
/// Auto-naming is currently not supported for this resource.
class SourceVmmigrationV1 extends pulumi.CustomResource {
  /// AWS type source details.
  late final pulumi.Output<AwsSourceDetailsResponse> aws;

  /// Azure type source details.
  late final pulumi.Output<AzureSourceDetailsResponse> azure;

  /// The create time timestamp.
  late final pulumi.Output<String> createTime;

  /// User-provided description of the source.
  late final pulumi.Output<String> description;

  /// Optional. Immutable. The encryption details of the source data stored by the service.
  late final pulumi.Output<EncryptionResponseVmmigrationV1> encryption;

  /// The labels of the source.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The Source name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Required. The source identifier.
  late final pulumi.Output<String> sourceId;

  /// The update time timestamp.
  late final pulumi.Output<String> updateTime;

  /// Vmware type source details.
  late final pulumi.Output<VmwareSourceDetailsResponse> vmware;

  SourceVmmigrationV1(
    String name, {
    SourceVmmigrationV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:vmmigration/v1:Source',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aws = registerOutput<AwsSourceDetailsResponse>('aws');
    this.azure = registerOutput<AzureSourceDetailsResponse>('azure');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.encryption =
        registerOutput<EncryptionResponseVmmigrationV1>('encryption');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.sourceId = registerOutput<String>('sourceId');
    this.updateTime = registerOutput<String>('updateTime');
    this.vmware = registerOutput<VmwareSourceDetailsResponse>('vmware');
  }
}
