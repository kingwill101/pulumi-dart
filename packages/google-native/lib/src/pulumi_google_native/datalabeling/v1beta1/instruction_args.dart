// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_datalabeling_v1beta1_csv_instruction.dart';
import 'google_cloud_datalabeling_v1beta1_pdf_instruction.dart';
import 'instruction_data_type.dart';

/// The set of arguments for Instruction.
class InstructionArgs {
  /// Deprecated: this instruction format is not supported any more. Instruction from a CSV file, such as for classification task. The CSV file should have exact two columns, in the following format: * The first column is labeled data, such as an image reference, text. * The second column is comma separated labels associated with data.
  final Input<GoogleCloudDatalabelingV1beta1CsvInstruction>? csvInstruction;

  /// The data type of this instruction.
  final Input<InstructionDataType> dataType;

  /// Optional. User-provided description of the instruction. The description can be up to 10000 characters long.
  final Input<String>? description;

  /// The display name of the instruction. Maximum of 64 characters.
  final Input<String> displayName;

  /// Instruction from a PDF document. The PDF should be in a Cloud Storage bucket.
  final Input<GoogleCloudDatalabelingV1beta1PdfInstruction>? pdfInstruction;
  final Input<String>? project;

  InstructionArgs({
    this.csvInstruction,
    required this.dataType,
    this.description,
    required this.displayName,
    this.pdfInstruction,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final csvInstructionValue = csvInstruction;
    if (csvInstructionValue != null) {
      map['csvInstruction'] = Input.mapOptionalInputValue<
          GoogleCloudDatalabelingV1beta1CsvInstruction,
          Map<String, dynamic>>(csvInstructionValue, (value) => value.toMap());
    }
    map['dataType'] = Input.mapInputValue<InstructionDataType, String>(
        dataType, (value) => value.value);
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final pdfInstructionValue = pdfInstruction;
    if (pdfInstructionValue != null) {
      map['pdfInstruction'] = Input.mapOptionalInputValue<
          GoogleCloudDatalabelingV1beta1PdfInstruction,
          Map<String, dynamic>>(pdfInstructionValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InstructionArgs.fromMap(Map<String, dynamic> map) {
    return InstructionArgs(
      csvInstruction:
          Input.asOptionalInput<GoogleCloudDatalabelingV1beta1CsvInstruction>(
              map['csvInstruction']),
      dataType: Input.asInput<InstructionDataType>(map['dataType']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      pdfInstruction:
          Input.asOptionalInput<GoogleCloudDatalabelingV1beta1PdfInstruction>(
              map['pdfInstruction']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
