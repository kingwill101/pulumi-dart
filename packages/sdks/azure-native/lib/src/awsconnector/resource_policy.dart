// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ResourcePolicy
class ResourcePolicy {
  /// A resource-based policy document that contains permissions to add to the specified DDB table, index, or both. In a CFNshort template, you can provide the policy in JSON or YAML format because CFNshort converts YAML to JSON before submitting it to DDB. For more information about resource-based policies, see [Using resource-based policies for](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/access-control-resource-based.html) and [Resource-based policy examples](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-examples.html).
  final dynamic policyDocument;

  /// Creates a new [ResourcePolicy].
  /// [policyDocument] A resource-based policy document that contains permissions to add to the specified DDB table, index, or both. In a CFNshort template, you can provide the policy in JSON or YAML format because CFNshort converts YAML to JSON before submitting it to DDB. For more information about resource-based policies, see [Using resource-based policies for](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/access-control-resource-based.html) and [Resource-based policy examples](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-examples.html).
  ResourcePolicy({
    this.policyDocument,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyDocument': ?policyDocument,
    };
  }

  factory ResourcePolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicy(
      policyDocument: map['policyDocument'] == null ? null : map['policyDocument'],
    );
  }
}

