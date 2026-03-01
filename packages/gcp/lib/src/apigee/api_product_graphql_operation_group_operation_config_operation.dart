// ignore_for_file: unused_element, unnecessary_cast

class ApiProductGraphqlOperationGroupOperationConfigOperation {
  /// GraphQL operation name. The name and operation type will be used to apply quotas. If no name is specified, the quota will be applied to all GraphQL operations irrespective of their operation names in the payload.
  final String? operation;

  /// Required. GraphQL operation types. Valid values include query or mutation.
  /// Note: Apigee does not currently support subscription types.
  final List<String>? operationTypes;

  /// Creates a new [ApiProductGraphqlOperationGroupOperationConfigOperation].
  /// [operation] GraphQL operation name. The name and operation type will be used to apply quotas. If no name is specified, the quota will be applied to all GraphQL operations irrespective of their operation names in the payload.
  /// [operationTypes] Required. GraphQL operation types. Valid values include query or mutation.
  ApiProductGraphqlOperationGroupOperationConfigOperation({
    this.operation,
    this.operationTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operation': ?operation,
      'operationTypes': ?operationTypes,
    };
  }

  factory ApiProductGraphqlOperationGroupOperationConfigOperation.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApiProductGraphqlOperationGroupOperationConfigOperation(
      operation: map['operation'] == null ? null : map['operation'] as String,
      operationTypes: map['operationTypes'] == null
          ? null
          : (map['operationTypes'] as List).cast<String>(),
    );
  }
}
