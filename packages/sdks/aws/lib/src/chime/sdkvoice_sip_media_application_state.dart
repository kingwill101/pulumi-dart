// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sdkvoice_sip_media_application_endpoints.dart';

/// Input properties used for looking up and filtering SdkvoiceSipMediaApplication resources.
class SdkvoiceSipMediaApplicationState {
  /// ARN (Amazon Resource Name) of the AWS Chime SDK Voice Sip Media Application
  final pulumi.Input<String>? arn;
  /// The AWS Region in which the AWS Chime SDK Voice Sip Media Application is created.
  final pulumi.Input<String>? awsRegion;
  /// List of endpoints (Lambda Amazon Resource Names) specified for the SIP media application. Currently, only one endpoint is supported. See `endpoints`.
  final pulumi.Input<SdkvoiceSipMediaApplicationEndpoints>? endpoints;
  /// The name of the AWS Chime SDK Voice Sip Media Application.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [SdkvoiceSipMediaApplicationState].
  /// [arn] ARN (Amazon Resource Name) of the AWS Chime SDK Voice Sip Media Application
  /// [awsRegion] The AWS Region in which the AWS Chime SDK Voice Sip Media Application is created.
  /// [endpoints] List of endpoints (Lambda Amazon Resource Names) specified for the SIP media application. Currently, only one endpoint is supported. See `endpoints`.
  /// [name] The name of the AWS Chime SDK Voice Sip Media Application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  SdkvoiceSipMediaApplicationState({
    this.arn,
    this.awsRegion,
    this.endpoints,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsRegion': ?awsRegion,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<SdkvoiceSipMediaApplicationEndpoints, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory SdkvoiceSipMediaApplicationState.fromMap(Map<String, dynamic> map) {
    return SdkvoiceSipMediaApplicationState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      awsRegion: map['awsRegion'] == null ? null : ((map['awsRegion'] as String).input()).input(),
      endpoints: map['endpoints'] == null ? null : ((SdkvoiceSipMediaApplicationEndpoints.fromMap((map['endpoints']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

