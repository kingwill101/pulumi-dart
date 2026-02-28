// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_log_view_log_view_args_doc}
/// The set of arguments for LogView.
/// {@endtemplate}
/// {@macro pulumi_logging_log_view_log_view_args_doc}
class LogViewArgs {
  /// The bucket of the resource
  final pulumi.Input<String> bucket;

  /// Describes this view.
  final pulumi.Input<String>? description;

  /// Filter that restricts which log entries in a bucket are visible in this view. Filters are restricted to be a logical AND of ==/!= of any of the following: - originating project/folder/organization/billing account. - resource type - log id For example: SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  final pulumi.Input<String>? filter;

  /// The location of the resource. The supported locations are: global, us-central1, us-east1, us-west1, asia-east1, europe-west1.
  final pulumi.Input<String>? location;

  /// The resource name of the view. For example: \`projects/my-project/locations/global/buckets/my-bucket/views/my-view\`
  final pulumi.Input<String>? name;

  /// The parent of the resource.
  final pulumi.Input<String>? parent;

  /// Creates a new [LogViewArgs].
  /// [bucket] The bucket of the resource
  /// [description] Describes this view.
  /// [filter] Filter that restricts which log entries in a bucket are visible in this view. Filters are restricted to be a logical AND of ==/!= of any of the following: - originating project/folder/organization/billing account. - resource type - log id For example: SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  /// [location] The location of the resource. The supported locations are: global, us-central1, us-east1, us-west1, asia-east1, europe-west1.
  /// [name] The resource name of the view. For example: \`projects/my-project/locations/global/buckets/my-bucket/views/my-view\`
  /// [parent] The parent of the resource.
  LogViewArgs({
    required String bucket,
    String? description,
    String? filter,
    String? location,
    String? name,
    String? parent,
  })  : bucket = pulumi.Input.asInput<String>(bucket),
        description = pulumi.Input.asOptionalInput<String>(description),
        filter = pulumi.Input.asOptionalInput<String>(filter),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        parent = pulumi.Input.asOptionalInput<String>(parent);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    return map;
  }

  factory LogViewArgs.fromMap(Map<String, dynamic> map) {
    return LogViewArgs(
      bucket: map['bucket'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parent: map['parent'] == null ? null : map['parent'] as String,
    );
  }
}
