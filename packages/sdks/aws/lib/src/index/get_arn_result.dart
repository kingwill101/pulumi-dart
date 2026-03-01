// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getArn.
class GetArnResult {
  /// The [ID](https://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html) of the AWS account that owns the resource, without the hyphens.
  final String account;
  final String arn;
  final String id;
  /// Partition that the resource is in.
  final String partition;
  /// Region the resource resides in.
  /// Note that the ARNs for some resources do not include a Region, so this component might be omitted.
  final String region;
  /// Content of this part of the ARN varies by service.
  /// It often includes an indicator of the type of resource—for example, an IAM user or Amazon RDS database —followed by a slash (/) or a colon (:), followed by the resource name itself.
  final String resource;
  /// The [service namespace](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces) that identifies the AWS product.
  final String service;

  /// Creates a new [GetArnResult].
  /// [account] The [ID](https://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html) of the AWS account that owns the resource, without the hyphens.
  /// [arn] Required.
  /// [id] Required.
  /// [partition] Partition that the resource is in.
  /// [region] Region the resource resides in.
  /// [resource] Content of this part of the ARN varies by service.
  /// [service] The [service namespace](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces) that identifies the AWS product.
  GetArnResult({
    required this.account,
    required this.arn,
    required this.id,
    required this.partition,
    required this.region,
    required this.resource,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': account,
      'arn': arn,
      'id': id,
      'partition': partition,
      'region': region,
      'resource': resource,
      'service': service,
    };
  }

  factory GetArnResult.fromMap(Map<String, dynamic> map) {
    return GetArnResult(
      account: map['account'] as String,
      arn: map['arn'] as String,
      id: map['id'] as String,
      partition: map['partition'] as String,
      region: map['region'] as String,
      resource: map['resource'] as String,
      service: map['service'] as String,
    );
  }
}

