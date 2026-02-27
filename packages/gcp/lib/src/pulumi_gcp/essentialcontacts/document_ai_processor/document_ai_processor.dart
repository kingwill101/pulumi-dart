import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_ai_processor_args.dart';

/// The first-class citizen for Document AI. Each processor defines how to extract structural information from a document.
///
///
/// To get more information about Processor, see:
///
/// * [API documentation](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations.processors)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/document-ai/docs/overview)
///
/// ## Example Usage
///
/// ### Documentai Processor
///
///
///
///
/// ## Import
///
/// Processor can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/processors/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Processor can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:essentialcontacts/documentAiProcessor:DocumentAiProcessor default projects/{{project}}/locations/{{location}}/processors/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:essentialcontacts/documentAiProcessor:DocumentAiProcessor default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:essentialcontacts/documentAiProcessor:DocumentAiProcessor default {{location}}/{{name}}
/// ```
class DocumentAiProcessor extends pulumi.CustomResource {
  /// The display name. Must be unique.
  late final pulumi.Output<String> displayName;

  /// The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management.
  late final pulumi.Output<String?> kmsKeyName;

  /// The location of the resource.
  late final pulumi.Output<String> location;

  /// The resource name of the processor.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The type of processor. For possible types see the [official list](https://cloud.google.com/document-ai/docs/reference/rest/v1/projects.locations/fetchProcessorTypes#google.cloud.documentai.v1.DocumentProcessorService.FetchProcessorTypes)
  late final pulumi.Output<String> type;

  DocumentAiProcessor(
    String name, {
    DocumentAiProcessorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:essentialcontacts/documentAiProcessor:DocumentAiProcessor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.type = registerOutput<String>('type');
  }
}
