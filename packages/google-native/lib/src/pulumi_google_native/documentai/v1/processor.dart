import 'package:pulumi/pulumi.dart';
import 'google_cloud_documentai_v1_processor_version_alias_response.dart';
import 'processor_args.dart';

/// Creates a processor from the ProcessorType provided. The processor will be at `ENABLED` state by default after its creation.
/// Auto-naming is currently not supported for this resource.
class Processor extends CustomResource {
  /// The time the processor was created.
  late final Output<String> createTime;

  /// The default processor version.
  late final Output<String> defaultProcessorVersion;

  /// The display name of the processor.
  late final Output<String> displayName;

  /// The [KMS key](https://cloud.google.com/security-key-management) used for encryption and decryption in CMEK scenarios.
  late final Output<String> kmsKeyName;
  late final Output<String> location;

  /// Immutable. The resource name of the processor. Format: `projects/{project}/locations/{location}/processors/{processor}`
  late final Output<String> name;

  /// Immutable. The http endpoint that can be called to invoke processing.
  late final Output<String> processEndpoint;

  /// The processor version aliases.
  late final Output<List<GoogleCloudDocumentaiV1ProcessorVersionAliasResponse>>
      processorVersionAliases;
  late final Output<String> project;

  /// The state of the processor.
  late final Output<String> state;

  /// The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`. To get a list of processor types, see FetchProcessorTypes.
  late final Output<String> type;

  Processor(
    String name, {
    ProcessorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:documentai/v1:Processor',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.defaultProcessorVersion = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.kmsKeyName = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.processEndpoint = Output.createUnknown<String>();
    this.processorVersionAliases = Output.createUnknown<
        List<GoogleCloudDocumentaiV1ProcessorVersionAliasResponse>>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
  }
}
