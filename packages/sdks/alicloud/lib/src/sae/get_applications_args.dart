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
    pulumi.Output<String>? appName,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<String>? fieldType,
    pulumi.Output<String>? fieldValue,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? namespaceId,
    pulumi.Output<String>? orderBy,
    pulumi.Output<String>? outputFile,
    pulumi.Output<bool>? reverse,
    pulumi.Output<String>? status,
  }) :
      appName = pulumi.Input.asOptionalInput<String>(appName),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      fieldType = pulumi.Input.asOptionalInput<String>(fieldType),
      fieldValue = pulumi.Input.asOptionalInput<String>(fieldValue),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      namespaceId = pulumi.Input.asOptionalInput<String>(namespaceId),
      orderBy = pulumi.Input.asOptionalInput<String>(orderBy),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      reverse = pulumi.Input.asOptionalInput<bool>(reverse),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      appName: map['appName'] == null ? null : pulumi.Output.create<String>(map['appName'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      fieldType: map['fieldType'] == null ? null : pulumi.Output.create<String>(map['fieldType'] as String),
      fieldValue: map['fieldValue'] == null ? null : pulumi.Output.create<String>(map['fieldValue'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      namespaceId: map['namespaceId'] == null ? null : pulumi.Output.create<String>(map['namespaceId'] as String),
      orderBy: map['orderBy'] == null ? null : pulumi.Output.create<String>(map['orderBy'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      reverse: map['reverse'] == null ? null : pulumi.Output.create<bool>(map['reverse'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

