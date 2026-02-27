// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LogView.
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

  LogViewArgs({
    required this.bucket,
    this.description,
    this.filter,
    this.location,
    this.name,
    this.parent,
  });

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
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      filter: pulumi.Input.asOptionalInput<String>(map['filter']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parent: pulumi.Input.asOptionalInput<String>(map['parent']),
    );
  }
}
