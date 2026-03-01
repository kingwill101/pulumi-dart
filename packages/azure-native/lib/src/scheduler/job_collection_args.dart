// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_collection_properties.dart';

/// {@template pulumi_scheduler_job_collection_args_doc}
/// The set of arguments for JobCollection.
/// {@endtemplate}
/// {@macro pulumi_scheduler_job_collection_args_doc}
class JobCollectionArgs {
  /// The job collection name.
  final pulumi.Input<String>? jobCollectionName;
  /// Gets or sets the storage account location.
  final pulumi.Input<String>? location;
  /// Gets or sets the job collection resource name.
  final pulumi.Input<String>? name;
  /// Gets or sets the job collection properties.
  final pulumi.Input<JobCollectionProperties>? properties;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [JobCollectionArgs].
  /// [jobCollectionName] The job collection name.
  /// [location] Gets or sets the storage account location.
  /// [name] Gets or sets the job collection resource name.
  /// [properties] Gets or sets the job collection properties.
  /// [resourceGroupName] The resource group name.
  /// [tags] Gets or sets the tags.
  JobCollectionArgs({
    String? jobCollectionName,
    String? location,
    String? name,
    JobCollectionProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      jobCollectionName = pulumi.Input.asOptionalInput<String>(jobCollectionName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<JobCollectionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobCollectionName': ?jobCollectionName,
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<JobCollectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory JobCollectionArgs.fromMap(Map<String, dynamic> map) {
    return JobCollectionArgs(
      jobCollectionName: map['jobCollectionName'] == null ? null : map['jobCollectionName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : JobCollectionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

