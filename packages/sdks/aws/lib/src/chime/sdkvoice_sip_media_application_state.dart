// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sdkvoice_sip_media_application_endpoints.dart';

/// Input properties used for looking up and filtering SdkvoiceSipMediaApplication resources.
class SdkvoiceSipMediaApplicationState {
  /// ARN of the AWS Chime SDK Voice Sip Media Application
  final pulumi.Input<String?>? arn;
  /// The AWS Region in which the AWS Chime SDK Voice Sip Media Application is created.
  final pulumi.Input<String?>? awsRegion;
  /// List of endpoints (Lambda ARNs) specified for the SIP media application. Currently, only one endpoint is supported. See `endpoints`.
  final pulumi.Input<SdkvoiceSipMediaApplicationEndpoints?>? endpoints;
  /// The name of the AWS Chime SDK Voice Sip Media Application.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [SdkvoiceSipMediaApplicationState].
  /// [arn] ARN of the AWS Chime SDK Voice Sip Media Application
  /// [awsRegion] The AWS Region in which the AWS Chime SDK Voice Sip Media Application is created.
  /// [endpoints] List of endpoints (Lambda ARNs) specified for the SIP media application. Currently, only one endpoint is supported. See `endpoints`.
  /// [name] The name of the AWS Chime SDK Voice Sip Media Application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const SdkvoiceSipMediaApplicationState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsRegion: (() { final guardedValue = map['awsRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SdkvoiceSipMediaApplicationEndpoints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
