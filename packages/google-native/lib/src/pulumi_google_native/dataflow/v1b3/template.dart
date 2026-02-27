import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_metadata_response.dart';
import 'status_response_dataflow_v1b3.dart';
import 'template_args.dart';
import 'template_metadata_response.dart';

/// Creates a Cloud Dataflow job from a template. Do not enter confidential information when you supply string values using the API.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Template extends pulumi.CustomResource {
  late final pulumi.Output<String> location;

  /// The template metadata describing the template name, available parameters, etc.
  late final pulumi.Output<TemplateMetadataResponse> metadata;
  late final pulumi.Output<String> project;

  /// Describes the runtime metadata with SDKInfo and available parameters.
  late final pulumi.Output<RuntimeMetadataResponse> runtimeMetadata;

  /// The status of the get template request. Any problems with the request will be indicated in the error_details.
  late final pulumi.Output<StatusResponseDataflowV1b3> status;

  /// Template Type.
  late final pulumi.Output<String> templateType;

  Template(
    String name, {
    TemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dataflow/v1b3:Template',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<TemplateMetadataResponse>('metadata');
    this.project = registerOutput<String>('project');
    this.runtimeMetadata =
        registerOutput<RuntimeMetadataResponse>('runtimeMetadata');
    this.status = registerOutput<StatusResponseDataflowV1b3>('status');
    this.templateType = registerOutput<String>('templateType');
  }
}
