import 'package:pulumi/pulumi.dart';
import 'runtime_metadata_response.dart';
import 'status_response13.dart';
import 'template_args.dart';
import 'template_metadata_response.dart';

/// Creates a Cloud Dataflow job from a template. Do not enter confidential information when you supply string values using the API.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Template extends CustomResource {
  late final Output<String> location;

  /// The template metadata describing the template name, available parameters, etc.
  late final Output<TemplateMetadataResponse> metadata;
  late final Output<String> project;

  /// Describes the runtime metadata with SDKInfo and available parameters.
  late final Output<RuntimeMetadataResponse> runtimeMetadata;

  /// The status of the get template request. Any problems with the request will be indicated in the error_details.
  late final Output<StatusResponse13> status;

  /// Template Type.
  late final Output<String> templateType;

  Template(
    String name, {
    TemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataflow/v1b3:Template',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<TemplateMetadataResponse>('metadata');
    this.project = registerOutput<String>('project');
    this.runtimeMetadata =
        registerOutput<RuntimeMetadataResponse>('runtimeMetadata');
    this.status = registerOutput<StatusResponse13>('status');
    this.templateType = registerOutput<String>('templateType');
  }
}
