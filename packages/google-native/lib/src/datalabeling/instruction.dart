import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datalabeling_v1beta1_csv_instruction_response.dart';
import 'google_cloud_datalabeling_v1beta1_pdf_instruction_response.dart';
import 'instruction_args.dart';

/// Creates an instruction for how data should be labeled.
/// Auto-naming is currently not supported for this resource.
class Instruction extends pulumi.CustomResource {
  /// The names of any related resources that are blocking changes to the instruction.
  late final pulumi.Output<List<String>> blockingResources;

  /// Creation time of instruction.
  late final pulumi.Output<String> createTime;

  /// Deprecated: this instruction format is not supported any more. Instruction from a CSV file, such as for classification task. The CSV file should have exact two columns, in the following format: * The first column is labeled data, such as an image reference, text. * The second column is comma separated labels associated with data.
  late final pulumi.Output<GoogleCloudDatalabelingV1beta1CsvInstructionResponse>
      csvInstruction;

  /// The data type of this instruction.
  late final pulumi.Output<String> dataType;

  /// Optional. User-provided description of the instruction. The description can be up to 10000 characters long.
  late final pulumi.Output<String> description;

  /// The display name of the instruction. Maximum of 64 characters.
  late final pulumi.Output<String> displayName;

  /// Instruction resource name, format: projects/{project_id}/instructions/{instruction_id}
  late final pulumi.Output<String> name;

  /// Instruction from a PDF document. The PDF should be in a Cloud Storage bucket.
  late final pulumi.Output<GoogleCloudDatalabelingV1beta1PdfInstructionResponse>
      pdfInstruction;
  late final pulumi.Output<String> project;

  /// Last update time of instruction.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Instruction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instruction]. {@macro pulumi_datalabeling_v1beta1_instruction_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instruction(
    String name, {
    InstructionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:datalabeling/v1beta1:Instruction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blockingResources = registerOutput<List<String>>('blockingResources');
    this.createTime = registerOutput<String>('createTime');
    this.csvInstruction =
        registerOutput<GoogleCloudDatalabelingV1beta1CsvInstructionResponse>(
            'csvInstruction');
    this.dataType = registerOutput<String>('dataType');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.pdfInstruction =
        registerOutput<GoogleCloudDatalabelingV1beta1PdfInstructionResponse>(
            'pdfInstruction');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
