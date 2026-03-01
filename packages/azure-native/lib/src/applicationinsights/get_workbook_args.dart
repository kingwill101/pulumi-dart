// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_applicationinsights_get_workbook_args_doc}
/// Arguments for getWorkbook.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_get_workbook_args_doc}
class GetWorkbookArgs {
  /// Flag indicating whether or not to return the full content for each applicable workbook. If false, only return summary content for workbooks.
  final pulumi.Input<bool>? canFetchContent;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workbook resource. The value must be an UUID.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetWorkbookArgs].
  /// [canFetchContent] Flag indicating whether or not to return the full content for each applicable workbook. If false, only return summary content for workbooks.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the workbook resource. The value must be an UUID.
  GetWorkbookArgs({
    bool? canFetchContent,
    required String resourceGroupName,
    required String resourceName,
  }) :
      canFetchContent = pulumi.Input.asOptionalInput<bool>(canFetchContent),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canFetchContent': ?canFetchContent,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetWorkbookArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkbookArgs(
      canFetchContent: map['canFetchContent'] == null ? null : map['canFetchContent'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

