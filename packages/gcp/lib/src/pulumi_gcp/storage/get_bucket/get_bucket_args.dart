// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBucket.
class GetBucketArgs {
  /// The name of the bucket.
  final pulumi.Input<String> name;

  /// The ID of the project in which the resource belongs. If it is not provided then the data source will use the Compute API to find the project id that corresponds to the project number returned from the Storage API, and if no Compute API permissions are available or if the Compute API is disabled it defaults to the provider value. Supplying a value for `project` doesn't influence retrieving data about the bucket but it can be used to prevent use of the Compute API. If you do provide a `project` value ensure that it is the correct value for that bucket; the data source will not check that the project id and project number match.
  final pulumi.Input<String>? project;

  GetBucketArgs({
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
