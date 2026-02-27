// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../conformance_pack_input_parameter/conformance_pack_input_parameter.dart';

/// The set of arguments for ConformancePack.
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

  ConformancePackArgs({
    this.deliveryS3Bucket,
    this.deliveryS3KeyPrefix,
    this.inputParameters,
    this.name,
    this.region,
    this.templateBody,
    this.templateS3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deliveryS3BucketValue = deliveryS3Bucket;
    if (deliveryS3BucketValue != null) {
      map['deliveryS3Bucket'] = deliveryS3BucketValue;
    }
    final deliveryS3KeyPrefixValue = deliveryS3KeyPrefix;
    if (deliveryS3KeyPrefixValue != null) {
      map['deliveryS3KeyPrefix'] = deliveryS3KeyPrefixValue;
    }
    final inputParametersValue = inputParameters;
    if (inputParametersValue != null) {
      map['inputParameters'] = pulumi.Input.mapOptionalInputValue<
              List<ConformancePackInputParameter>, List<Map<String, dynamic>>>(
          inputParametersValue,
          (value) => pulumi.Input.encodeList<ConformancePackInputParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final templateBodyValue = templateBody;
    if (templateBodyValue != null) {
      map['templateBody'] = templateBodyValue;
    }
    final templateS3UriValue = templateS3Uri;
    if (templateS3UriValue != null) {
      map['templateS3Uri'] = templateS3UriValue;
    }
    return map;
  }

  factory ConformancePackArgs.fromMap(Map<String, dynamic> map) {
    return ConformancePackArgs(
      deliveryS3Bucket:
          pulumi.Input.asOptionalInput<String>(map['deliveryS3Bucket']),
      deliveryS3KeyPrefix:
          pulumi.Input.asOptionalInput<String>(map['deliveryS3KeyPrefix']),
      inputParameters:
          pulumi.Input.asOptionalInput<List<ConformancePackInputParameter>>(
              map['inputParameters']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      templateBody: pulumi.Input.asOptionalInput<String>(map['templateBody']),
      templateS3Uri: pulumi.Input.asOptionalInput<String>(map['templateS3Uri']),
    );
  }
}
