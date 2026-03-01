// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datalabeling_v1beta1_csv_instruction.dart';
import 'google_cloud_datalabeling_v1beta1_pdf_instruction.dart';
import 'instruction_data_type.dart';

/// {@template pulumi_datalabeling_v1beta1_instruction_args_doc}
/// The set of arguments for Instruction.
/// {@endtemplate}
/// {@macro pulumi_datalabeling_v1beta1_instruction_args_doc}
class InstructionArgs {
  /// Deprecated: this instruction format is not supported any more. Instruction from a CSV file, such as for classification task. The CSV file should have exact two columns, in the following format: * The first column is labeled data, such as an image reference, text. * The second column is comma separated labels associated with data.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1CsvInstruction>?
  csvInstruction;

  /// The data type of this instruction.
  final pulumi.Input<InstructionDataType> dataType;

  /// Optional. User-provided description of the instruction. The description can be up to 10000 characters long.
  final pulumi.Input<String>? description;

  /// The display name of the instruction. Maximum of 64 characters.
  final pulumi.Input<String> displayName;

  /// Instruction from a PDF document. The PDF should be in a Cloud Storage bucket.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1PdfInstruction>?
  pdfInstruction;
  final pulumi.Input<String>? project;

  /// Creates a new [InstructionArgs].
  /// [csvInstruction] Deprecated: this instruction format is not supported any more. Instruction from a CSV file, such as for classification task. The CSV file should have exact two columns, in the following format: * The first column is labeled data, such as an image reference, text. * The second column is comma separated labels associated with data.
  /// [dataType] The data type of this instruction.
  /// [description] Optional. User-provided description of the instruction. The description can be up to 10000 characters long.
  /// [displayName] The display name of the instruction. Maximum of 64 characters.
  /// [pdfInstruction] Instruction from a PDF document. The PDF should be in a Cloud Storage bucket.
  /// [project] Optional.
  InstructionArgs({
    GoogleCloudDatalabelingV1beta1CsvInstruction? csvInstruction,
    required InstructionDataType dataType,
    String? description,
    required String displayName,
    GoogleCloudDatalabelingV1beta1PdfInstruction? pdfInstruction,
    String? project,
  }) : csvInstruction =
           pulumi.Input.asOptionalInput<
             GoogleCloudDatalabelingV1beta1CsvInstruction
           >(csvInstruction),
       dataType = pulumi.Input.asInput<InstructionDataType>(dataType),
       description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asInput<String>(displayName),
       pdfInstruction =
           pulumi.Input.asOptionalInput<
             GoogleCloudDatalabelingV1beta1PdfInstruction
           >(pdfInstruction),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvInstruction':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDatalabelingV1beta1CsvInstruction,
            Map<String, dynamic>
          >(csvInstruction, (value) => value.toMap()),
      'dataType': pulumi.Input.mapInputValue<InstructionDataType, String>(
        dataType,
        (value) => value.value,
      ),
      'description': ?description,
      'displayName': displayName,
      'pdfInstruction':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDatalabelingV1beta1PdfInstruction,
            Map<String, dynamic>
          >(pdfInstruction, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory InstructionArgs.fromMap(Map<String, dynamic> map) {
    return InstructionArgs(
      csvInstruction: map['csvInstruction'] == null
          ? null
          : GoogleCloudDatalabelingV1beta1CsvInstruction.fromMap(
              (map['csvInstruction'] as Map).cast<String, dynamic>(),
            ),
      dataType: InstructionDataType.fromValue(map['dataType'] as String),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] as String,
      pdfInstruction: map['pdfInstruction'] == null
          ? null
          : GoogleCloudDatalabelingV1beta1PdfInstruction.fromMap(
              (map['pdfInstruction'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
