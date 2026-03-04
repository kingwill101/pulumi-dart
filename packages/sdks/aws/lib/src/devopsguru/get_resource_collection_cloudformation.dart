// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourceCollectionCloudformation {
  /// Array of the names of the AWS CloudFormation stacks.
  final pulumi.Input<List<String>> stackNames;

  /// Creates a new [GetResourceCollectionCloudformation].
  /// [stackNames] Array of the names of the AWS CloudFormation stacks.
  GetResourceCollectionCloudformation({required this.stackNames});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'stackNames': stackNames};
  }

  factory GetResourceCollectionCloudformation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetResourceCollectionCloudformation(
      stackNames: pulumi.Input.fromValue(
        (map['stackNames'] as List).cast<String>(),
      ),
    );
  }
}
