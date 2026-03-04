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
    this.ids,
    this.keyword,
    this.maxResults,
    this.nameRegex,
    this.orderType,
    this.outputFile,
    this.resourceGroupId,
    this.status,
  });

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
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      keyword: (() {
        final guardedValue = map['keyword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxResults: (() {
        final guardedValue = map['maxResults'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orderType: (() {
        final guardedValue = map['orderType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
