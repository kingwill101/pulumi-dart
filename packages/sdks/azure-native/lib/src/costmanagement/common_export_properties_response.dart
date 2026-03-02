// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_definition_response.dart';
import 'export_delivery_info_response.dart';
import 'export_execution_list_result_response.dart';

/// The common properties of the export.
class CommonExportPropertiesResponse {
  /// Has the definition for the export.
  final pulumi.Input<ExportDefinitionResponse> definition;
  /// Has delivery information for the export.
  final pulumi.Input<ExportDeliveryInfoResponse> deliveryInfo;
  /// The format of the export being delivered. Currently only 'Csv' is supported.
  final pulumi.Input<String>? format;
  /// If the export has an active schedule, provides an estimate of the next run time.
  final pulumi.Input<String> nextRunTimeEstimate;
  /// If set to true, exported data will be partitioned by size and placed in a blob directory together with a manifest file. Note: this option is currently available only for Microsoft Customer Agreement commerce scopes.
  final pulumi.Input<bool>? partitionData;
  /// If requested, has the most recent run history for the export.
  final pulumi.Input<ExportExecutionListResultResponse>? runHistory;

  /// Creates a new [CommonExportPropertiesResponse].
  /// [definition] Has the definition for the export.
  /// [deliveryInfo] Has delivery information for the export.
  /// [format] The format of the export being delivered. Currently only 'Csv' is supported.
  /// [nextRunTimeEstimate] If the export has an active schedule, provides an estimate of the next run time.
  /// [partitionData] If set to true, exported data will be partitioned by size and placed in a blob directory together with a manifest file. Note: this option is currently available only for Microsoft Customer Agreement commerce scopes.
  /// [runHistory] If requested, has the most recent run history for the export.
  CommonExportPropertiesResponse({
    required this.definition,
    required this.deliveryInfo,
    this.format,
    required this.nextRunTimeEstimate,
    this.partitionData,
    this.runHistory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': pulumi.Input.mapInputValue<ExportDefinitionResponse, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'deliveryInfo': pulumi.Input.mapInputValue<ExportDeliveryInfoResponse, Map<String, dynamic>>(deliveryInfo, (value) => value.toMap()),
      'format': ?format,
      'nextRunTimeEstimate': nextRunTimeEstimate,
      'partitionData': ?partitionData,
      'runHistory': ?pulumi.Input.mapOptionalInputValue<ExportExecutionListResultResponse, Map<String, dynamic>>(runHistory, (value) => value.toMap()),
    };
  }

  factory CommonExportPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CommonExportPropertiesResponse(
      definition: (ExportDefinitionResponse.fromMap((map['definition'] as Map).cast<String, dynamic>())).input(),
      deliveryInfo: (ExportDeliveryInfoResponse.fromMap((map['deliveryInfo'] as Map).cast<String, dynamic>())).input(),
      format: map['format'] == null ? null : (map['format']! as String).input(),
      nextRunTimeEstimate: (map['nextRunTimeEstimate'] as String).input(),
      partitionData: map['partitionData'] == null ? null : (map['partitionData']! as bool).input(),
      runHistory: map['runHistory'] == null ? null : (ExportExecutionListResultResponse.fromMap((map['runHistory']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

