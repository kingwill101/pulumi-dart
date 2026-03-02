// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_conformance_pack_input_parameter.dart';

/// {@template pulumi_cfg_organization_conformance_pack_organization_conformance_pack_args_doc}
/// The set of arguments for OrganizationConformancePack.
/// {@endtemplate}
/// {@macro pulumi_cfg_organization_conformance_pack_organization_conformance_pack_args_doc}
class OrganizationConformancePackArgs {
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

  /// Creates a new [OrganizationConformancePackArgs].
  /// [deliveryS3Bucket] Amazon S3 bucket where AWS Config stores conformance pack templates. Delivery bucket must begin with `awsconfigconforms` prefix. Maximum length of 63.
  /// [deliveryS3KeyPrefix] The prefix for the Amazon S3 bucket. Maximum length of 1024.
  /// [excludedAccounts] Set of AWS accounts to be excluded from an organization conformance pack while deploying a conformance pack. Maximum of 1000 accounts.
  /// [inputParameters] Set of configuration blocks describing input parameters passed to the conformance pack template. Documented below. When configured, the parameters must also be included in the `template_body` or in the template stored in Amazon S3 if using `template_s3_uri`.
  /// [name] The name of the organization conformance pack. Must begin with a letter and contain from 1 to 128 alphanumeric characters and hyphens.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [templateBody] A string containing full conformance pack template body. Maximum length of 51200. Drift detection is not possible with this argument.
  /// [templateS3Uri] Location of file, e.g., `s3://bucketname/prefix`, containing the template body. The uri must point to the conformance pack template that is located in an Amazon S3 bucket in the same region as the conformance pack. Maximum length of 1024. Drift detection is not possible with this argument.
  OrganizationConformancePackArgs({
    this.deliveryS3Bucket,
    this.deliveryS3KeyPrefix,
    this.excludedAccounts,
    this.inputParameters,
    this.name,
    this.region,
    this.templateBody,
    this.templateS3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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

  factory OrganizationConformancePackArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationConformancePackArgs(
      deliveryS3Bucket: map['deliveryS3Bucket'] == null ? null : (map['deliveryS3Bucket'] as String).input(),
      deliveryS3KeyPrefix: map['deliveryS3KeyPrefix'] == null ? null : (map['deliveryS3KeyPrefix'] as String).input(),
      excludedAccounts: map['excludedAccounts'] == null ? null : ((map['excludedAccounts'] as List).cast<String>()).input(),
      inputParameters: map['inputParameters'] == null ? null : (pulumi.Input.decodeList<OrganizationConformancePackInputParameter>(map['inputParameters'], (value) => OrganizationConformancePackInputParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      templateBody: map['templateBody'] == null ? null : (map['templateBody'] as String).input(),
      templateS3Uri: map['templateS3Uri'] == null ? null : (map['templateS3Uri'] as String).input(),
    );
  }
}

