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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsRegion,
    pulumi.Output<SdkvoiceSipMediaApplicationEndpoints>? endpoints,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsRegion = pulumi.Input.asOptionalInput<String>(awsRegion),
      endpoints = pulumi.Input.asOptionalInput<SdkvoiceSipMediaApplicationEndpoints>(endpoints),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsRegion: map['awsRegion'] == null ? null : pulumi.Output.create<String>(map['awsRegion'] as String),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<SdkvoiceSipMediaApplicationEndpoints>(SdkvoiceSipMediaApplicationEndpoints.fromMap((map['endpoints'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

