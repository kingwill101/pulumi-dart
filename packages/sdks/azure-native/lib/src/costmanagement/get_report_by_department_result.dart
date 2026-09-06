// ignore_for_file: unused_element, unnecessary_cast

import 'report_definition_response.dart';
import 'report_delivery_info_response.dart';
import 'report_schedule_response.dart';

/// Result data returned by getReportByDepartment.
class GetReportByDepartmentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Has definition for the report.
  final ReportDefinitionResponse? definition;
  /// Has delivery information for the report.
  final ReportDeliveryInfoResponse? deliveryInfo;
  /// The format of the report being delivered.
  final String? format;
  /// Resource Id.
  final String? id;
  /// Resource name.
  final String? name;
  /// Has schedule information for the report.
  final ReportScheduleResponse? schedule;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

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
  const GetReportByDepartmentResult({
    this.azureApiVersion,
    this.definition,
    this.deliveryInfo,
    this.format,
    this.id,
    this.name,
    this.schedule,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'definition': ?definition?.toMap(),
      'deliveryInfo': ?deliveryInfo?.toMap(),
      'format': ?format,
      'id': ?id,
      'name': ?name,
      'schedule': ?schedule?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetReportByDepartmentResult.fromMap(Map<String, dynamic> map) {
    return GetReportByDepartmentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return ReportDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deliveryInfo: (() { final guardedValue = map['deliveryInfo']; if (guardedValue == null) return null; return ReportDeliveryInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return ReportScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
