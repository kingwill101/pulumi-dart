// ignore_for_file: unused_element, unnecessary_cast

class ResourceCollectionCloudformation {
  /// Array of the names of the AWS CloudFormation stacks. If `type` is `AWS_SERVICE` (all acccount resources) this array should be a single item containing a wildcard (`"*"`).
  final List<String> stackNames;

  ResourceCollectionCloudformation({
    required this.stackNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['stackNames'] = stackNames;
    return map;
  }

  factory ResourceCollectionCloudformation.fromMap(Map<String, dynamic> map) {
    return ResourceCollectionCloudformation(
      stackNames: (map['stackNames'] as List).cast<String>(),
    );
  }
}
