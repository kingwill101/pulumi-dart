// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getLogViewIamPolicy.
class GetLogViewIamPolicyArgs {
  /// The bucket of the resource Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> bucket;

  /// The location of the resource. The supported locations are: global, us-central1, us-east1, us-west1, asia-east1, europe-west1. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> name;

  /// The parent of the resource. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> parent;

  GetLogViewIamPolicyArgs({
    required this.bucket,
    this.location,
    required this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['name'] = name;
    map['parent'] = parent;
    return map;
  }

  factory GetLogViewIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetLogViewIamPolicyArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asInput<String>(map['name']),
      parent: pulumi.Input.asInput<String>(map['parent']),
    );
  }
}
