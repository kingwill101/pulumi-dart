import 'package:pulumi/pulumi.dart';
import 'document_ai_processor_default_version_args.dart';

/// The default version for the processor. Deleting this resource is a no-op, and does not unset the default version.
///
///
///
/// ## Example Usage
///
/// ### Documentai Default Version
///
///
///
///
/// ## Import
///
/// ProcessorDefaultVersion can be imported using any of these accepted formats:
///
/// * `{{processor}}`
///
/// When using the `pulumi import` command, ProcessorDefaultVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:essentialcontacts/documentAiProcessorDefaultVersion:DocumentAiProcessorDefaultVersion default {{processor}}
/// ```
class DocumentAiProcessorDefaultVersion extends CustomResource {
  /// The processor to set the version on.
  late final Output<String> processor;

  /// The version to set. Using `stable` or `rc` will cause the API to return the latest version in that release channel.
  /// Apply `lifecycle.ignore_changes` to the `version` field to suppress this diff.
  late final Output<String> version;

  DocumentAiProcessorDefaultVersion(
    String name, {
    DocumentAiProcessorDefaultVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:essentialcontacts/documentAiProcessorDefaultVersion:DocumentAiProcessorDefaultVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.processor = registerOutput<String>('processor');
    this.version = registerOutput<String>('version');
  }
}
