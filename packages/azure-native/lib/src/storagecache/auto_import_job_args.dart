// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagecache_auto_import_job_args_doc}
/// The set of arguments for AutoImportJob.
/// {@endtemplate}
/// {@macro pulumi_storagecache_auto_import_job_args_doc}
class AutoImportJobArgs {
  /// The administrative status of the auto import job. Possible values: 'Enable', 'Disable'. Passing in a value of 'Disable' will disable the current active auto import job. By default it is set to 'Enable'.
  final pulumi.Input<String>? adminStatus;
  /// Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  final pulumi.Input<String> amlFilesystemName;
  /// Name for the auto import job. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  final pulumi.Input<String>? autoImportJobName;
  /// An array of blob paths/prefixes that get auto imported to the cluster namespace. It has '/' as the default value. Number of maximum allowed paths is 100.
  final pulumi.Input<List<String>>? autoImportPrefixes;
  /// How the auto import job will handle conflicts. For example, if the auto import job is trying to bring in a directory, but a file is at that path, how it handles it. Fail indicates that the auto import job should stop immediately and not do anything with the conflict. Skip indicates that it should pass over the conflict. OverwriteIfDirty causes the auto import job to delete and re-import the file or directory if it is a conflicting type, is dirty, or is currently released. OverwriteAlways extends OverwriteIfDirty to include releasing files that had been restored but were not dirty. Please reference https://learn.microsoft.com/en-us/azure/azure-managed-lustre/blob-integration#conflict-resolution-mode for a thorough explanation of these resolution modes.
  final pulumi.Input<String>? conflictResolutionMode;
  /// Whether or not to enable deletions during auto import. This only affects overwrite-dirty.
  final pulumi.Input<bool>? enableDeletions;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Total non-conflict-oriented errors (e.g., OS errors) Import will tolerate before exiting with failure. -1 means infinite. 0 means exit immediately on any error.
  final pulumi.Input<double>? maximumErrors;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AutoImportJobArgs].
  /// [adminStatus] The administrative status of the auto import job. Possible values: 'Enable', 'Disable'. Passing in a value of 'Disable' will disable the current active auto import job. By default it is set to 'Enable'.
  /// [amlFilesystemName] Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  /// [autoImportJobName] Name for the auto import job. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.
  /// [autoImportPrefixes] An array of blob paths/prefixes that get auto imported to the cluster namespace. It has '/' as the default value. Number of maximum allowed paths is 100.
  /// [conflictResolutionMode] How the auto import job will handle conflicts. For example, if the auto import job is trying to bring in a directory, but a file is at that path, how it handles it. Fail indicates that the auto import job should stop immediately and not do anything with the conflict. Skip indicates that it should pass over the conflict. OverwriteIfDirty causes the auto import job to delete and re-import the file or directory if it is a conflicting type, is dirty, or is currently released. OverwriteAlways extends OverwriteIfDirty to include releasing files that had been restored but were not dirty. Please reference https://learn.microsoft.com/en-us/azure/azure-managed-lustre/blob-integration#conflict-resolution-mode for a thorough explanation of these resolution modes.
  /// [enableDeletions] Whether or not to enable deletions during auto import. This only affects overwrite-dirty.
  /// [location] The geo-location where the resource lives
  /// [maximumErrors] Total non-conflict-oriented errors (e.g., OS errors) Import will tolerate before exiting with failure. -1 means infinite. 0 means exit immediately on any error.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  AutoImportJobArgs({
    String? adminStatus,
    required String amlFilesystemName,
    String? autoImportJobName,
    List<String>? autoImportPrefixes,
    String? conflictResolutionMode,
    bool? enableDeletions,
    String? location,
    double? maximumErrors,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      adminStatus = pulumi.Input.asOptionalInput<String>(adminStatus),
      amlFilesystemName = pulumi.Input.asInput<String>(amlFilesystemName),
      autoImportJobName = pulumi.Input.asOptionalInput<String>(autoImportJobName),
      autoImportPrefixes = pulumi.Input.asOptionalInput<List<String>>(autoImportPrefixes),
      conflictResolutionMode = pulumi.Input.asOptionalInput<String>(conflictResolutionMode),
      enableDeletions = pulumi.Input.asOptionalInput<bool>(enableDeletions),
      location = pulumi.Input.asOptionalInput<String>(location),
      maximumErrors = pulumi.Input.asOptionalInput<double>(maximumErrors),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStatus': ?adminStatus,
      'amlFilesystemName': amlFilesystemName,
      'autoImportJobName': ?autoImportJobName,
      'autoImportPrefixes': ?autoImportPrefixes,
      'conflictResolutionMode': ?conflictResolutionMode,
      'enableDeletions': ?enableDeletions,
      'location': ?location,
      'maximumErrors': ?maximumErrors,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AutoImportJobArgs.fromMap(Map<String, dynamic> map) {
    return AutoImportJobArgs(
      adminStatus: map['adminStatus'] == null ? null : map['adminStatus'] as String,
      amlFilesystemName: map['amlFilesystemName'] as String,
      autoImportJobName: map['autoImportJobName'] == null ? null : map['autoImportJobName'] as String,
      autoImportPrefixes: map['autoImportPrefixes'] == null ? null : (map['autoImportPrefixes'] as List).cast<String>(),
      conflictResolutionMode: map['conflictResolutionMode'] == null ? null : map['conflictResolutionMode'] as String,
      enableDeletions: map['enableDeletions'] == null ? null : map['enableDeletions'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      maximumErrors: map['maximumErrors'] == null ? null : map['maximumErrors'] as double,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

