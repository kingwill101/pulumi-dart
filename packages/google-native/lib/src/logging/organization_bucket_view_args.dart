// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_organization_bucket_view_args_doc}
/// The set of arguments for OrganizationBucketView.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_organization_bucket_view_args_doc}
class OrganizationBucketViewArgs {
  final pulumi.Input<String> bucketId;

  /// Describes this view.
  final pulumi.Input<String>? description;

  /// Filter that restricts which log entries in a bucket are visible in this view.Filters are restricted to be a logical AND of ==/!= of any of the following: originating project/folder/organization/billing account. resource type log idFor example:SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  final pulumi.Input<String>? filter;
  final pulumi.Input<String>? location;

  /// The resource name of the view.For example:projects/my-project/locations/global/buckets/my-bucket/views/my-view
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Required. A client-assigned identifier such as "my-view". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  final pulumi.Input<String> viewId;

  /// Creates a new [OrganizationBucketViewArgs].
  /// [bucketId] Required.
  /// [description] Describes this view.
  /// [filter] Filter that restricts which log entries in a bucket are visible in this view.Filters are restricted to be a logical AND of ==/!= of any of the following: originating project/folder/organization/billing account. resource type log idFor example:SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  /// [location] Optional.
  /// [name] The resource name of the view.For example:projects/my-project/locations/global/buckets/my-bucket/views/my-view
  /// [organizationId] Required.
  /// [viewId] Required. A client-assigned identifier such as "my-view". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  OrganizationBucketViewArgs({
    required String bucketId,
    String? description,
    String? filter,
    String? location,
    String? name,
    required String organizationId,
    required String viewId,
  }) : bucketId = pulumi.Input.asInput<String>(bucketId),
       description = pulumi.Input.asOptionalInput<String>(description),
       filter = pulumi.Input.asOptionalInput<String>(filter),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       organizationId = pulumi.Input.asInput<String>(organizationId),
       viewId = pulumi.Input.asInput<String>(viewId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'description': ?description,
      'filter': ?filter,
      'location': ?location,
      'name': ?name,
      'organizationId': organizationId,
      'viewId': viewId,
    };
  }

  factory OrganizationBucketViewArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationBucketViewArgs(
      bucketId: map['bucketId'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
      viewId: map['viewId'] as String,
    );
  }
}
