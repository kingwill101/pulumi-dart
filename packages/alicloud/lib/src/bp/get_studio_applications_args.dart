// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bp_get_studio_applications_get_studio_applications_args_doc}
/// Arguments for getStudioApplications.
/// {@endtemplate}
/// {@macro pulumi_bp_get_studio_applications_get_studio_applications_args_doc}
class GetStudioApplicationsArgs {
  /// A list of Application IDs.
  final pulumi.Input<List<String>>? ids;
  /// The keyword of the Application.
  final pulumi.Input<String>? keyword;
  final pulumi.Input<int>? maxResults;
  /// A regex string to filter results by Application name.
  final pulumi.Input<String>? nameRegex;
  /// The order type of the Application. Valid values:
  final pulumi.Input<int>? orderType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the Application. Valid values: `success`, `release`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetStudioApplicationsArgs].
  /// [ids] A list of Application IDs.
  /// [keyword] The keyword of the Application.
  /// [maxResults] Optional.
  /// [nameRegex] A regex string to filter results by Application name.
  /// [orderType] The order type of the Application. Valid values:
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the Application. Valid values: `success`, `release`.
  GetStudioApplicationsArgs({
    List<String>? ids,
    String? keyword,
    int? maxResults,
    String? nameRegex,
    int? orderType,
    String? outputFile,
    String? resourceGroupId,
    String? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      keyword = pulumi.Input.asOptionalInput<String>(keyword),
      maxResults = pulumi.Input.asOptionalInput<int>(maxResults),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      orderType = pulumi.Input.asOptionalInput<int>(orderType),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'keyword': ?keyword,
      'maxResults': ?maxResults,
      'nameRegex': ?nameRegex,
      'orderType': ?orderType,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
    };
  }

  factory GetStudioApplicationsArgs.fromMap(Map<String, dynamic> map) {
    return GetStudioApplicationsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      keyword: map['keyword'] == null ? null : map['keyword'] as String,
      maxResults: map['maxResults'] == null ? null : map['maxResults'] as int,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      orderType: map['orderType'] == null ? null : map['orderType'] as int,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

