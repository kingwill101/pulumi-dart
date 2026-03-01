// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagecache_get_auto_export_job_args_doc}
/// Arguments for getAutoExportJob.
/// {@endtemplate}
/// {@macro pulumi_storagecache_get_auto_export_job_args_doc}
class GetAutoExportJobArgs {
  /// Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  final pulumi.Input<String> amlFilesystemName;
  /// Name for the auto export job. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  final pulumi.Input<String> autoExportJobName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAutoExportJobArgs].
  /// [amlFilesystemName] Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  /// [autoExportJobName] Name for the auto export job. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAutoExportJobArgs({
    required String amlFilesystemName,
    required String autoExportJobName,
    required String resourceGroupName,
  }) :
      amlFilesystemName = pulumi.Input.asInput<String>(amlFilesystemName),
      autoExportJobName = pulumi.Input.asInput<String>(autoExportJobName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amlFilesystemName': amlFilesystemName,
      'autoExportJobName': autoExportJobName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAutoExportJobArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoExportJobArgs(
      amlFilesystemName: map['amlFilesystemName'] as String,
      autoExportJobName: map['autoExportJobName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

