// ignore_for_file: unused_element, unnecessary_cast

class GetResourceCollectionCloudformation {
  /// Array of the names of the AWS CloudFormation stacks.
  final List<String> stackNames;

  GetResourceCollectionCloudformation({
    required this.stackNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['stackNames'] = stackNames;
    return map;
  }

  factory GetResourceCollectionCloudformation.fromMap(
      Map<String, dynamic> map) {
    return GetResourceCollectionCloudformation(
      stackNames: (map['stackNames'] as List).cast<String>(),
    );
  }
}
