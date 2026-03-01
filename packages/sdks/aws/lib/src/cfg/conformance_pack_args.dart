// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conformance_pack_input_parameter.dart';

/// {@template pulumi_cfg_conformance_pack_conformance_pack_args_doc}
/// The set of arguments for ConformancePack.
/// {@endtemplate}
/// {@macro pulumi_cfg_conformance_pack_conformance_pack_args_doc}
class ConformancePackArgs {
  /// Amazon S3 bucket where AWS Config stores conformance pack templates. Maximum length of 63.
  final pulumi.Input<String>? deliveryS3Bucket;
  /// The prefix for the Amazon S3 bucket. Maximum length of 1024.
  final pulumi.Input<String>? deliveryS3KeyPrefix;
  /// Set of configuration blocks describing input parameters passed to the conformance pack template. Documented below. When configured, the parameters must also be included in the `template_body` or in the template stored in Amazon S3 if using `template_s3_uri`.
  final pulumi.Input<List<ConformancePackInputParameter>>? inputParameters;
  /// The name of the conformance pack. Must begin with a letter and contain from 1 to 256 alphanumeric characters and hyphens.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A string containing full conformance pack template body. Maximum length of 51200. Drift detection is not possible with this argument.
  final pulumi.Input<String>? templateBody;
  /// Location of file, e.g., `s3://bucketname/prefix`, containing the template body. The uri must point to the conformance pack template that is located in an Amazon S3 bucket in the same region as the conformance pack. Maximum length of 1024. Drift detection is not possible with this argument.
  ///
  /// > **Note:** If both `template_body` and `template_s3_uri` are specified, AWS Config uses the `template_s3_uri` and ignores the `template_body`.
  final pulumi.Input<String>? templateS3Uri;

  /// Creates a new [ConformancePackArgs].
  /// [deliveryS3Bucket] Amazon S3 bucket where AWS Config stores conformance pack templates. Maximum length of 63.
  /// [deliveryS3KeyPrefix] The prefix for the Amazon S3 bucket. Maximum length of 1024.
  /// [inputParameters] Set of configuration blocks describing input parameters passed to the conformance pack template. Documented below. When configured, the parameters must also be included in the `template_body` or in the template stored in Amazon S3 if using `template_s3_uri`.
  /// [name] The name of the conformance pack. Must begin with a letter and contain from 1 to 256 alphanumeric characters and hyphens.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [templateBody] A string containing full conformance pack template body. Maximum length of 51200. Drift detection is not possible with this argument.
  /// [templateS3Uri] Location of file, e.g., `s3://bucketname/prefix`, containing the template body. The uri must point to the conformance pack template that is located in an Amazon S3 bucket in the same region as the conformance pack. Maximum length of 1024. Drift detection is not possible with this argument.
  ConformancePackArgs({
    pulumi.Output<String>? deliveryS3Bucket,
    pulumi.Output<String>? deliveryS3KeyPrefix,
    pulumi.Output<List<ConformancePackInputParameter>>? inputParameters,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? templateBody,
    pulumi.Output<String>? templateS3Uri,
  }) :
      deliveryS3Bucket = pulumi.Input.asOptionalInput<String>(deliveryS3Bucket),
      deliveryS3KeyPrefix = pulumi.Input.asOptionalInput<String>(deliveryS3KeyPrefix),
      inputParameters = pulumi.Input.asOptionalInput<List<ConformancePackInputParameter>>(inputParameters),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      templateBody = pulumi.Input.asOptionalInput<String>(templateBody),
      templateS3Uri = pulumi.Input.asOptionalInput<String>(templateS3Uri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryS3Bucket': ?deliveryS3Bucket,
      'deliveryS3KeyPrefix': ?deliveryS3KeyPrefix,
      'inputParameters': ?pulumi.Input.mapOptionalInputValue<List<ConformancePackInputParameter>, List<Map<String, dynamic>>>(inputParameters, (value) => pulumi.Input.encodeList<ConformancePackInputParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'templateBody': ?templateBody,
      'templateS3Uri': ?templateS3Uri,
    };
  }

  factory ConformancePackArgs.fromMap(Map<String, dynamic> map) {
    return ConformancePackArgs(
      deliveryS3Bucket: map['deliveryS3Bucket'] == null ? null : pulumi.Output.create<String>(map['deliveryS3Bucket'] as String),
      deliveryS3KeyPrefix: map['deliveryS3KeyPrefix'] == null ? null : pulumi.Output.create<String>(map['deliveryS3KeyPrefix'] as String),
      inputParameters: map['inputParameters'] == null ? null : pulumi.Output.create<List<ConformancePackInputParameter>>(pulumi.Input.decodeList<ConformancePackInputParameter>(map['inputParameters'], (value) => ConformancePackInputParameter.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      templateBody: map['templateBody'] == null ? null : pulumi.Output.create<String>(map['templateBody'] as String),
      templateS3Uri: map['templateS3Uri'] == null ? null : pulumi.Output.create<String>(map['templateS3Uri'] as String),
    );
  }
}

