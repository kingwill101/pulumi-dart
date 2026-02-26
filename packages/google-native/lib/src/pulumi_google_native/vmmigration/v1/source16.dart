import 'package:pulumi/pulumi.dart';
import 'aws_source_details_response.dart';
import 'azure_source_details_response.dart';
import 'encryption_response2.dart';
import 'source_args5.dart';
import 'vmware_source_details_response.dart';

/// Creates a new Source in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Source16 extends CustomResource {
  /// AWS type source details.
  late final Output<AwsSourceDetailsResponse> aws;

  /// Azure type source details.
  late final Output<AzureSourceDetailsResponse> azure;

  /// The create time timestamp.
  late final Output<String> createTime;

  /// User-provided description of the source.
  late final Output<String> description;

  /// Optional. Immutable. The encryption details of the source data stored by the service.
  late final Output<EncryptionResponse2> encryption;

  /// The labels of the source.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The Source name.
  late final Output<String> name;
  late final Output<String> project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Required. The source identifier.
  late final Output<String> sourceId;

  /// The update time timestamp.
  late final Output<String> updateTime;

  /// Vmware type source details.
  late final Output<VmwareSourceDetailsResponse> vmware;

  Source16(
    String name, {
    SourceArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vmmigration/v1:Source',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.aws = registerOutput<AwsSourceDetailsResponse>('aws');
    this.azure = registerOutput<AzureSourceDetailsResponse>('azure');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.encryption = registerOutput<EncryptionResponse2>('encryption');
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
