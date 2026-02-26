// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAlias.
class GetAliasResult2 {
  /// ARN identifying the Lambda function alias.
  final String arn;

  /// Description of the alias.
  final String description;
  final String functionName;

  /// Lambda function version which the alias uses.
  final String functionVersion;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// ARN to be used for invoking Lambda Function from API Gateway - to be used in <span pulumi-lang-nodejs="`aws.apigateway.Integration`" pulumi-lang-dotnet="`aws.apigateway.Integration`" pulumi-lang-go="`apigateway.Integration`" pulumi-lang-python="`apigateway.Integration`" pulumi-lang-yaml="`aws.apigateway.Integration`" pulumi-lang-java="`aws.apigateway.Integration`">`aws.apigateway.Integration`</span>'s <span pulumi-lang-nodejs="`uri`" pulumi-lang-dotnet="`Uri`" pulumi-lang-go="`uri`" pulumi-lang-python="`uri`" pulumi-lang-yaml="`uri`" pulumi-lang-java="`uri`">`uri`</span>.
  final String invokeArn;
  final String name;
  final String region;

  GetAliasResult2({
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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['description'] = description;
    map['functionName'] = functionName;
    map['functionVersion'] = functionVersion;
    map['id'] = id;
    map['invokeArn'] = invokeArn;
    map['name'] = name;
    map['region'] = region;
    return map;
  }

  factory GetAliasResult2.fromMap(Map<String, dynamic> map) {
    return GetAliasResult2(
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
