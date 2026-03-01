// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_list_featureset_version_materialization_jobs_args_doc}
/// Arguments for listFeaturesetVersionMaterializationJobs.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_list_featureset_version_materialization_jobs_args_doc}
class ListFeaturesetVersionMaterializationJobsArgs {
  /// End time of the feature window to filter materialization jobs.
  final pulumi.Input<String>? featureWindowEnd;
  /// Start time of the feature window to filter materialization jobs.
  final pulumi.Input<String>? featureWindowStart;
  /// Comma-separated list of tag names (and optionally values). Example: tag1,tag2=value2
  final pulumi.Input<String>? filters;
  /// Container name. This is case-sensitive.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Continuation token for pagination.
  final pulumi.Input<String>? skip;
  /// Version identifier. This is case-sensitive.
  final pulumi.Input<String> version;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListFeaturesetVersionMaterializationJobsArgs].
  /// [featureWindowEnd] End time of the feature window to filter materialization jobs.
  /// [featureWindowStart] Start time of the feature window to filter materialization jobs.
  /// [filters] Comma-separated list of tag names (and optionally values). Example: tag1,tag2=value2
  /// [name] Container name. This is case-sensitive.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [skip] Continuation token for pagination.
  /// [version] Version identifier. This is case-sensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  ListFeaturesetVersionMaterializationJobsArgs({
    pulumi.Output<String>? featureWindowEnd,
    pulumi.Output<String>? featureWindowStart,
    pulumi.Output<String>? filters,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? skip,
    required pulumi.Output<String> version,
    required pulumi.Output<String> workspaceName,
  }) :
      featureWindowEnd = pulumi.Input.asOptionalInput<String>(featureWindowEnd),
      featureWindowStart = pulumi.Input.asOptionalInput<String>(featureWindowStart),
      filters = pulumi.Input.asOptionalInput<String>(filters),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skip = pulumi.Input.asOptionalInput<String>(skip),
      version = pulumi.Input.asInput<String>(version),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureWindowEnd': ?featureWindowEnd,
      'featureWindowStart': ?featureWindowStart,
      'filters': ?filters,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'skip': ?skip,
      'version': version,
      'workspaceName': workspaceName,
    };
  }

  factory ListFeaturesetVersionMaterializationJobsArgs.fromMap(Map<String, dynamic> map) {
    return ListFeaturesetVersionMaterializationJobsArgs(
      featureWindowEnd: map['featureWindowEnd'] == null ? null : pulumi.Output.create<String>(map['featureWindowEnd'] as String),
      featureWindowStart: map['featureWindowStart'] == null ? null : pulumi.Output.create<String>(map['featureWindowStart'] as String),
      filters: map['filters'] == null ? null : pulumi.Output.create<String>(map['filters'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skip: map['skip'] == null ? null : pulumi.Output.create<String>(map['skip'] as String),
      version: pulumi.Output.create<String>(map['version'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

