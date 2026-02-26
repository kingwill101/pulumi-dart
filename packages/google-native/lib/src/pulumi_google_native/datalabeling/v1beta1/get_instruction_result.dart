// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datalabeling_v1beta1_csv_instruction_response.dart';
import 'google_cloud_datalabeling_v1beta1_pdf_instruction_response.dart';

/// Result data returned by getInstruction.
class GetInstructionResult {
  /// The names of any related resources that are blocking changes to the instruction.
  final List<String> blockingResources;

  /// Creation time of instruction.
  final String createTime;

  /// Deprecated: this instruction format is not supported any more. Instruction from a CSV file, such as for classification task. The CSV file should have exact two columns, in the following format: * The first column is labeled data, such as an image reference, text. * The second column is comma separated labels associated with data.
  final GoogleCloudDatalabelingV1beta1CsvInstructionResponse csvInstruction;

  /// The data type of this instruction.
  final String dataType;

  /// Optional. User-provided description of the instruction. The description can be up to 10000 characters long.
  final String description;

  /// The display name of the instruction. Maximum of 64 characters.
  final String displayName;

  /// Instruction resource name, format: projects/{project_id}/instructions/{instruction_id}
  final String name;

  /// Instruction from a PDF document. The PDF should be in a Cloud Storage bucket.
  final GoogleCloudDatalabelingV1beta1PdfInstructionResponse pdfInstruction;

  /// Last update time of instruction.
  final String updateTime;

  GetInstructionResult({
    required this.blockingResources,
    required this.createTime,
    required this.csvInstruction,
    required this.dataType,
    required this.description,
    required this.displayName,
    required this.name,
    required this.pdfInstruction,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blockingResources'] = blockingResources;
    map['createTime'] = createTime;
    map['csvInstruction'] = csvInstruction.toMap();
    map['dataType'] = dataType;
    map['description'] = description;
    map['displayName'] = displayName;
    map['name'] = name;
    map['pdfInstruction'] = pdfInstruction.toMap();
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetInstructionResult.fromMap(Map<String, dynamic> map) {
    return GetInstructionResult(
      blockingResources: (map['blockingResources'] as List).cast<String>(),
      createTime: map['createTime'] as String,
      csvInstruction:
          GoogleCloudDatalabelingV1beta1CsvInstructionResponse.fromMap(
              (map['csvInstruction'] as Map).cast<String, dynamic>()),
      dataType: map['dataType'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      pdfInstruction:
          GoogleCloudDatalabelingV1beta1PdfInstructionResponse.fromMap(
              (map['pdfInstruction'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}
