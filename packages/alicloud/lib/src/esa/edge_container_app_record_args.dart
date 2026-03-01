// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_edge_container_app_record_edge_container_app_record_args_doc}
/// The set of arguments for EdgeContainerAppRecord.
/// {@endtemplate}
/// {@macro pulumi_esa_edge_container_app_record_edge_container_app_record_args_doc}
class EdgeContainerAppRecordArgs {
  /// The application ID
  final pulumi.Input<String> appId;
  /// The associated domain name.
  final pulumi.Input<String> recordName;
  /// The website ID.
  final pulumi.Input<String>? siteId;

  /// Creates a new [EdgeContainerAppRecordArgs].
  /// [appId] The application ID
  /// [recordName] The associated domain name.
  /// [siteId] The website ID.
  EdgeContainerAppRecordArgs({
    required String appId,
    required String recordName,
    String? siteId,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      recordName = pulumi.Input.asInput<String>(recordName),
      siteId = pulumi.Input.asOptionalInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'recordName': recordName,
      'siteId': ?siteId,
    };
  }

  factory EdgeContainerAppRecordArgs.fromMap(Map<String, dynamic> map) {
    return EdgeContainerAppRecordArgs(
      appId: map['appId'] as String,
      recordName: map['recordName'] as String,
      siteId: map['siteId'] == null ? null : map['siteId'] as String,
    );
  }
}

