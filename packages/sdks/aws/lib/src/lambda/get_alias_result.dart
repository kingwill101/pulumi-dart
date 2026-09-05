// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAlias.
class GetAliasResult {
  /// ARN identifying the Lambda function alias.
  final String? arn;
  /// Description of the alias.
  final String? description;
  final String? functionName;
  /// Lambda function version which the alias uses.
  final String? functionVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ARN to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  final String? invokeArn;
  final String? name;
  final String? region;

  /// Creates a new [GetAliasResult].
  /// [arn] ARN identifying the Lambda function alias.
  /// [description] Description of the alias.
  /// [functionName] Optional.
  /// [functionVersion] Lambda function version which the alias uses.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [invokeArn] ARN to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  /// [name] Optional.
  /// [region] Optional.
  const GetAliasResult({
    this.arn,
    this.description,
    this.functionName,
    this.functionVersion,
    this.id,
    this.invokeArn,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'functionName': ?functionName,
      'functionVersion': ?functionVersion,
      'id': ?id,
      'invokeArn': ?invokeArn,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetAliasResult.fromMap(Map<String, dynamic> map) {
    return GetAliasResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      functionVersion: (() { final guardedValue = map['functionVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      invokeArn: (() { final guardedValue = map['invokeArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
