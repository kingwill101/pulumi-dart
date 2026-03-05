// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceCollectionCloudformation {
  /// Array of the names of the AWS CloudFormation stacks. If `type` is `AWS_SERVICE` (all acccount resources) this array should be a single item containing a wildcard (`"*"`).
  final pulumi.Input<List<String>> stackNames;

  /// Creates a new [ResourceCollectionCloudformation].
  /// [stackNames] Array of the names of the AWS CloudFormation stacks. If `type` is `AWS_SERVICE` (all acccount resources) this array should be a single item containing a wildcard (`"*"`).
  ResourceCollectionCloudformation({
    required this.stackNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stackNames': stackNames,
    };
  }

  factory ResourceCollectionCloudformation.fromMap(Map<String, dynamic> map) {
    return ResourceCollectionCloudformation(
      stackNames: pulumi.Input.fromValue((map['stackNames'] as List).cast<String>()),
    );
  }
}

