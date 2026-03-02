// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sae_get_applications_get_applications_args_doc}
/// Arguments for getApplications.
/// {@endtemplate}
/// {@macro pulumi_sae_get_applications_get_applications_args_doc}
class GetApplicationsArgs {
  /// Application Name. Combinations of numbers, letters, and dashes (-) are allowed. It must start with a letter and the maximum length is 36 characters.
  final pulumi.Input<String>? appName;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// The field type. Valid values:`appName`, `appIds`, `slbIps`, `instanceIps`
  final pulumi.Input<String>? fieldType;
  /// The field value.
  final pulumi.Input<String>? fieldValue;
  /// A list of Application IDs.
  final pulumi.Input<List<String>>? ids;
  /// SAE namespace ID. Only namespaces whose names are lowercase letters and dashes (-) are supported, and must start with a letter. The namespace can be obtained by calling the DescribeNamespaceList interface.
  final pulumi.Input<String>? namespaceId;
  /// The order by.Valid values:`running`,`instances`.
  final pulumi.Input<String>? orderBy;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The reverse.
  final pulumi.Input<bool>? reverse;
  /// The status of the resource. Valid values: `RUNNING`, `STOPPED`,`UNKNOWN`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetApplicationsArgs].
  /// [appName] Application Name. Combinations of numbers, letters, and dashes (-) are allowed. It must start with a letter and the maximum length is 36 characters.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [fieldType] The field type. Valid values:`appName`, `appIds`, `slbIps`, `instanceIps`
  /// [fieldValue] The field value.
  /// [ids] A list of Application IDs.
  /// [namespaceId] SAE namespace ID. Only namespaces whose names are lowercase letters and dashes (-) are supported, and must start with a letter. The namespace can be obtained by calling the DescribeNamespaceList interface.
  /// [orderBy] The order by.Valid values:`running`,`instances`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [reverse] The reverse.
  /// [status] The status of the resource. Valid values: `RUNNING`, `STOPPED`,`UNKNOWN`.
  GetApplicationsArgs({
    this.appName,
    this.enableDetails,
    this.fieldType,
    this.fieldValue,
    this.ids,
    this.namespaceId,
    this.orderBy,
    this.outputFile,
    this.reverse,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': ?appName,
      'enableDetails': ?enableDetails,
      'fieldType': ?fieldType,
      'fieldValue': ?fieldValue,
      'ids': ?ids,
      'namespaceId': ?namespaceId,
      'orderBy': ?orderBy,
      'outputFile': ?outputFile,
      'reverse': ?reverse,
      'status': ?status,
    };
  }

  factory GetApplicationsArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationsArgs(
      appName: map['appName'] == null ? null : (map['appName'] as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      fieldType: map['fieldType'] == null ? null : (map['fieldType'] as String).input(),
      fieldValue: map['fieldValue'] == null ? null : (map['fieldValue'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      namespaceId: map['namespaceId'] == null ? null : (map['namespaceId'] as String).input(),
      orderBy: map['orderBy'] == null ? null : (map['orderBy'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      reverse: map['reverse'] == null ? null : (map['reverse'] as bool).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

