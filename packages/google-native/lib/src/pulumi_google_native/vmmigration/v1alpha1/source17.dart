import 'package:pulumi/pulumi.dart' hide Config;
import 'aws_source_details_response2.dart';
import 'azure_source_details_response2.dart';
import 'encryption_response3.dart';
import 'source_args6.dart';
import 'status_response31.dart';
import 'vmware_source_details_response2.dart';

/// Creates a new Source in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Source17 extends CustomResource {
  /// AWS type source details.
  late final Output<AwsSourceDetailsResponse2> aws;

  /// Azure type source details.
  late final Output<AzureSourceDetailsResponse2> azure;

  /// The create time timestamp.
  late final Output<String> createTime;

  /// User-provided description of the source.
  late final Output<String> description;

  /// Optional. Immutable. The encryption details of the source data stored by the service.
  late final Output<EncryptionResponse3> encryption;

  /// Provides details on the state of the Source in case of an error.
  late final Output<StatusResponse31> error;

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
  late final Output<VmwareSourceDetailsResponse2> vmware;

  Source17(
    String name, {
    SourceArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vmmigration/v1alpha1:Source',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.aws = registerOutput<AwsSourceDetailsResponse2>('aws');
    this.azure = registerOutput<AzureSourceDetailsResponse2>('azure');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.encryption = registerOutput<EncryptionResponse3>('encryption');
    this.error = registerOutput<StatusResponse31>('error');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.sourceId = registerOutput<String>('sourceId');
    this.updateTime = registerOutput<String>('updateTime');
    this.vmware = registerOutput<VmwareSourceDetailsResponse2>('vmware');
  }
}
