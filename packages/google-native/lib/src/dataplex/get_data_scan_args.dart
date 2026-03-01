// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_data_scan_args_doc}
/// Arguments for getDataScan.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_data_scan_args_doc}
class GetDataScanArgs {
  final pulumi.Input<String> dataScanId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetDataScanArgs].
  /// [dataScanId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetDataScanArgs({
    required String dataScanId,
    required String location,
    String? project,
    String? view,
  }) : dataScanId = pulumi.Input.asInput<String>(dataScanId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataScanId': dataScanId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetDataScanArgs.fromMap(Map<String, dynamic> map) {
    return GetDataScanArgs(
      dataScanId: map['dataScanId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
