// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionNodePropertyNodeRangePropertyContainerSecret {
  /// The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final String name;

  /// The secret to expose to the container. The supported values are either the full Amazon Resource Name (ARN) of the AWS Secrets Manager secret or the full ARN of the parameter in the AWS Systems Manager Parameter Store.
  final String valueFrom;

  GetJobDefinitionNodePropertyNodeRangePropertyContainerSecret({
    required this.name,
    required this.valueFrom,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['valueFrom'] = valueFrom;
    return map;
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerSecret.fromMap(
      Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerSecret(
      name: map['name'] as String,
      valueFrom: map['valueFrom'] as String,
    );
  }
}
