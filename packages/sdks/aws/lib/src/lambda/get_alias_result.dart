// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAlias.
class GetAliasResult {
  /// ARN identifying the Lambda function alias.
  final String arn;

  /// Description of the alias.
  final String description;
  final String functionName;

  /// Lambda function version which the alias uses.
  final String functionVersion;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// ARN to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  final String invokeArn;
  final String name;
  final String region;

  /// Creates a new [GetAliasResult].
  /// [arn] ARN identifying the Lambda function alias.
  /// [description] Description of the alias.
  /// [functionName] Required.
  /// [functionVersion] Lambda function version which the alias uses.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [invokeArn] ARN to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  /// [name] Required.
  /// [region] Required.
  GetAliasResult({
    required this.arn,
    required this.description,
    required this.functionName,
    required this.functionVersion,
    required this.id,
    required this.invokeArn,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'functionName': functionName,
      'functionVersion': functionVersion,
      'id': id,
      'invokeArn': invokeArn,
      'name': name,
      'region': region,
    };
  }

  factory GetAliasResult.fromMap(Map<String, dynamic> map) {
    return GetAliasResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      functionName: map['functionName'] as String,
      functionVersion: map['functionVersion'] as String,
      id: map['id'] as String,
      invokeArn: map['invokeArn'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
