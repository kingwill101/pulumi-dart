// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_conformance_pack_input_parameter.dart';

/// Input properties used for looking up and filtering OrganizationConformancePack resources.
class OrganizationConformancePackState {
  /// Amazon Resource Name (ARN) of the organization conformance pack.
  final pulumi.Input<String>? arn;
  /// Amazon S3 bucket where AWS Config stores conformance pack templates. Delivery bucket must begin with `awsconfigconforms` prefix. Maximum length of 63.
  final pulumi.Input<String>? deliveryS3Bucket;
  /// The prefix for the Amazon S3 bucket. Maximum length of 1024.
  final pulumi.Input<String>? deliveryS3KeyPrefix;
  /// Set of AWS accounts to be excluded from an organization conformance pack while deploying a conformance pack. Maximum of 1000 accounts.
  final pulumi.Input<List<String>>? excludedAccounts;
  /// Set of configuration blocks describing input parameters passed to the conformance pack template. Documented below. When configured, the parameters must also be included in the `template_body` or in the template stored in Amazon S3 if using `template_s3_uri`.
  final pulumi.Input<List<OrganizationConformancePackInputParameter>>? inputParameters;
  /// The name of the organization conformance pack. Must begin with a letter and contain from 1 to 128 alphanumeric characters and hyphens.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A string containing full conformance pack template body. Maximum length of 51200. Drift detection is not possible with this argument.
  final pulumi.Input<String>? templateBody;
  /// Location of file, e.g., `s3://bucketname/prefix`, containing the template body. The uri must point to the conformance pack template that is located in an Amazon S3 bucket in the same region as the conformance pack. Maximum length of 1024. Drift detection is not possible with this argument.
  final pulumi.Input<String>? templateS3Uri;

  /// Creates a new [OrganizationConformancePackState].
  /// [arn] Amazon Resource Name (ARN) of the organization conformance pack.
  /// [deliveryS3Bucket] Amazon S3 bucket where AWS Config stores conformance pack templates. Delivery bucket must begin with `awsconfigconforms` prefix. Maximum length of 63.
  /// [deliveryS3KeyPrefix] The prefix for the Amazon S3 bucket. Maximum length of 1024.
  /// [excludedAccounts] Set of AWS accounts to be excluded from an organization conformance pack while deploying a conformance pack. Maximum of 1000 accounts.
  /// [inputParameters] Set of configuration blocks describing input parameters passed to the conformance pack template. Documented below. When configured, the parameters must also be included in the `template_body` or in the template stored in Amazon S3 if using `template_s3_uri`.
  /// [name] The name of the organization conformance pack. Must begin with a letter and contain from 1 to 128 alphanumeric characters and hyphens.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [templateBody] A string containing full conformance pack template body. Maximum length of 51200. Drift detection is not possible with this argument.
  /// [templateS3Uri] Location of file, e.g., `s3://bucketname/prefix`, containing the template body. The uri must point to the conformance pack template that is located in an Amazon S3 bucket in the same region as the conformance pack. Maximum length of 1024. Drift detection is not possible with this argument.
  OrganizationConformancePackState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? deliveryS3Bucket,
    pulumi.Output<String>? deliveryS3KeyPrefix,
    pulumi.Output<List<String>>? excludedAccounts,
    pulumi.Output<List<OrganizationConformancePackInputParameter>>? inputParameters,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? templateBody,
    pulumi.Output<String>? templateS3Uri,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      deliveryS3Bucket = pulumi.Input.asOptionalInput<String>(deliveryS3Bucket),
      deliveryS3KeyPrefix = pulumi.Input.asOptionalInput<String>(deliveryS3KeyPrefix),
      excludedAccounts = pulumi.Input.asOptionalInput<List<String>>(excludedAccounts),
      inputParameters = pulumi.Input.asOptionalInput<List<OrganizationConformancePackInputParameter>>(inputParameters),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      templateBody = pulumi.Input.asOptionalInput<String>(templateBody),
      templateS3Uri = pulumi.Input.asOptionalInput<String>(templateS3Uri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deliveryS3Bucket': ?deliveryS3Bucket,
      'deliveryS3KeyPrefix': ?deliveryS3KeyPrefix,
      'excludedAccounts': ?excludedAccounts,
      'inputParameters': ?pulumi.Input.mapOptionalInputValue<List<OrganizationConformancePackInputParameter>, List<Map<String, dynamic>>>(inputParameters, (value) => pulumi.Input.encodeList<OrganizationConformancePackInputParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'templateBody': ?templateBody,
      'templateS3Uri': ?templateS3Uri,
    };
  }

  factory OrganizationConformancePackState.fromMap(Map<String, dynamic> map) {
    return OrganizationConformancePackState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      deliveryS3Bucket: map['deliveryS3Bucket'] == null ? null : pulumi.Output.create<String>(map['deliveryS3Bucket'] as String),
      deliveryS3KeyPrefix: map['deliveryS3KeyPrefix'] == null ? null : pulumi.Output.create<String>(map['deliveryS3KeyPrefix'] as String),
      excludedAccounts: map['excludedAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['excludedAccounts'] as List).cast<String>()),
      inputParameters: map['inputParameters'] == null ? null : pulumi.Output.create<List<OrganizationConformancePackInputParameter>>(pulumi.Input.decodeList<OrganizationConformancePackInputParameter>(map['inputParameters'], (value) => OrganizationConformancePackInputParameter.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      templateBody: map['templateBody'] == null ? null : pulumi.Output.create<String>(map['templateBody'] as String),
      templateS3Uri: map['templateS3Uri'] == null ? null : pulumi.Output.create<String>(map['templateS3Uri'] as String),
    );
  }
}

