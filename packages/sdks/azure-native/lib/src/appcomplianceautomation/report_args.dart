// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_metadata.dart';
import 'storage_info.dart';

/// {@template pulumi_appcomplianceautomation_report_args_doc}
/// The set of arguments for Report.
/// {@endtemplate}
/// {@macro pulumi_appcomplianceautomation_report_args_doc}
class ReportArgs {
  /// A list of comma-separated offerGuids indicates a series of offerGuids that map to the report. For example, "00000000-0000-0000-0000-000000000001,00000000-0000-0000-0000-000000000002" and "00000000-0000-0000-0000-000000000003".
  final pulumi.Input<String>? offerGuid;
  /// Report Name.
  final pulumi.Input<String>? reportName;
  /// List of resource data.
  final pulumi.Input<List<ResourceMetadata>> resources;
  /// The information of 'bring your own storage' binding to the report
  final pulumi.Input<StorageInfo>? storageInfo;
  /// Report collection trigger time's time zone, the available list can be obtained by executing "Get-TimeZone -ListAvailable" in PowerShell.
  /// An example of valid timezone id is "Pacific Standard Time".
  final pulumi.Input<String> timeZone;
  /// Report collection trigger time.
  final pulumi.Input<String> triggerTime;

  /// Creates a new [ReportArgs].
  /// [offerGuid] A list of comma-separated offerGuids indicates a series of offerGuids that map to the report. For example, "00000000-0000-0000-0000-000000000001,00000000-0000-0000-0000-000000000002" and "00000000-0000-0000-0000-000000000003".
  /// [reportName] Report Name.
  /// [resources] List of resource data.
  /// [storageInfo] The information of 'bring your own storage' binding to the report
  /// [timeZone] Report collection trigger time's time zone, the available list can be obtained by executing "Get-TimeZone -ListAvailable" in PowerShell.
  /// [triggerTime] Report collection trigger time.
  ReportArgs({
    pulumi.Output<String>? offerGuid,
    pulumi.Output<String>? reportName,
    required pulumi.Output<List<ResourceMetadata>> resources,
    pulumi.Output<StorageInfo>? storageInfo,
    required pulumi.Output<String> timeZone,
    required pulumi.Output<String> triggerTime,
  }) :
      offerGuid = pulumi.Input.asOptionalInput<String>(offerGuid),
      reportName = pulumi.Input.asOptionalInput<String>(reportName),
      resources = pulumi.Input.asInput<List<ResourceMetadata>>(resources),
      storageInfo = pulumi.Input.asOptionalInput<StorageInfo>(storageInfo),
      timeZone = pulumi.Input.asInput<String>(timeZone),
      triggerTime = pulumi.Input.asInput<String>(triggerTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offerGuid': ?offerGuid,
      'reportName': ?reportName,
      'resources': pulumi.Input.mapInputValue<List<ResourceMetadata>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<ResourceMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageInfo': ?pulumi.Input.mapOptionalInputValue<StorageInfo, Map<String, dynamic>>(storageInfo, (value) => value.toMap()),
      'timeZone': timeZone,
      'triggerTime': triggerTime,
    };
  }

  factory ReportArgs.fromMap(Map<String, dynamic> map) {
    return ReportArgs(
      offerGuid: map['offerGuid'] == null ? null : pulumi.Output.create<String>(map['offerGuid'] as String),
      reportName: map['reportName'] == null ? null : pulumi.Output.create<String>(map['reportName'] as String),
      resources: pulumi.Output.create<List<ResourceMetadata>>(pulumi.Input.decodeList<ResourceMetadata>(map['resources'], (value) => ResourceMetadata.fromMap((value as Map).cast<String, dynamic>()))),
      storageInfo: map['storageInfo'] == null ? null : pulumi.Output.create<StorageInfo>(StorageInfo.fromMap((map['storageInfo'] as Map).cast<String, dynamic>())),
      timeZone: pulumi.Output.create<String>(map['timeZone'] as String),
      triggerTime: pulumi.Output.create<String>(map['triggerTime'] as String),
    );
  }
}

