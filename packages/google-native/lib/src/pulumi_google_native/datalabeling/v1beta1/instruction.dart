import 'package:pulumi/pulumi.dart';
import 'google_cloud_datalabeling_v1beta1_csv_instruction_response.dart';
import 'google_cloud_datalabeling_v1beta1_pdf_instruction_response.dart';
import 'instruction_args.dart';

/// Creates an instruction for how data should be labeled.
/// Auto-naming is currently not supported for this resource.
class Instruction extends CustomResource {
  /// The names of any related resources that are blocking changes to the instruction.
  late final Output<List<String>> blockingResources;

  /// Creation time of instruction.
  late final Output<String> createTime;

  /// Deprecated: this instruction format is not supported any more. Instruction from a CSV file, such as for classification task. The CSV file should have exact two columns, in the following format: * The first column is labeled data, such as an image reference, text. * The second column is comma separated labels associated with data.
  late final Output<GoogleCloudDatalabelingV1beta1CsvInstructionResponse>
      csvInstruction;

  /// The data type of this instruction.
  late final Output<String> dataType;

  /// Optional. User-provided description of the instruction. The description can be up to 10000 characters long.
  late final Output<String> description;

  /// The display name of the instruction. Maximum of 64 characters.
  late final Output<String> displayName;

  /// Instruction resource name, format: projects/{project_id}/instructions/{instruction_id}
  late final Output<String> name;

  /// Instruction from a PDF document. The PDF should be in a Cloud Storage bucket.
  late final Output<GoogleCloudDatalabelingV1beta1PdfInstructionResponse>
      pdfInstruction;
  late final Output<String> project;

  /// Last update time of instruction.
  late final Output<String> updateTime;

  Instruction(
    String name, {
    InstructionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datalabeling/v1beta1:Instruction',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.blockingResources = Output.createUnknown<List<String>>();
    this.createTime = Output.createUnknown<String>();
    this.csvInstruction = Output.createUnknown<
        GoogleCloudDatalabelingV1beta1CsvInstructionResponse>();
    this.dataType = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.pdfInstruction = Output.createUnknown<
        GoogleCloudDatalabelingV1beta1PdfInstructionResponse>();
    this.project = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
