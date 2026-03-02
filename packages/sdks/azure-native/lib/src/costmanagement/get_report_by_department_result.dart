// ignore_for_file: unused_element, unnecessary_cast

import 'report_definition_response.dart';
import 'report_delivery_info_response.dart';
import 'report_schedule_response.dart';

/// Result data returned by getReportByDepartment.
class GetReportByDepartmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Has definition for the report.
  final ReportDefinitionResponse definition;
  /// Has delivery information for the report.
  final ReportDeliveryInfoResponse deliveryInfo;
  /// The format of the report being delivered.
  final String? format;
  /// Resource Id.
  final String id;
  /// Resource name.
  final String name;
  /// Has schedule information for the report.
  final ReportScheduleResponse? schedule;
  /// Resource tags.
  final Map<String, String> tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetReportByDepartmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [definition] Has definition for the report.
  /// [deliveryInfo] Has delivery information for the report.
  /// [format] The format of the report being delivered.
  /// [id] Resource Id.
  /// [name] Resource name.
  /// [schedule] Has schedule information for the report.
  /// [tags] Resource tags.
  /// [type] Resource type.
  GetReportByDepartmentResult({
    required this.azureApiVersion,
    required this.definition,
    required this.deliveryInfo,
    this.format,
    required this.id,
    required this.name,
    this.schedule,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'definition': definition.toMap(),
      'deliveryInfo': deliveryInfo.toMap(),
      'format': ?format,
      'id': id,
      'name': name,
      'schedule': ?schedule == null ? null : schedule!.toMap(),
      'tags': tags,
      'type': type,
    };
  }

  factory GetReportByDepartmentResult.fromMap(Map<String, dynamic> map) {
    return GetReportByDepartmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      definition: ReportDefinitionResponse.fromMap((map['definition'] as Map).cast<String, dynamic>()),
      deliveryInfo: ReportDeliveryInfoResponse.fromMap((map['deliveryInfo'] as Map).cast<String, dynamic>()),
      format: map['format'] == null ? null : map['format']! as String,
      id: map['id'] as String,
      name: map['name'] as String,
      schedule: map['schedule'] == null ? null : ReportScheduleResponse.fromMap((map['schedule']! as Map).cast<String, dynamic>()),
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

