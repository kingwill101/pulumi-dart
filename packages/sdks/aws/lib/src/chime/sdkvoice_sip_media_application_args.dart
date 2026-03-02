// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sdkvoice_sip_media_application_endpoints.dart';

/// {@template pulumi_chime_sdkvoice_sip_media_application_sdkvoice_sip_media_application_args_doc}
/// The set of arguments for SdkvoiceSipMediaApplication.
/// {@endtemplate}
/// {@macro pulumi_chime_sdkvoice_sip_media_application_sdkvoice_sip_media_application_args_doc}
class SdkvoiceSipMediaApplicationArgs {
  /// The AWS Region in which the AWS Chime SDK Voice Sip Media Application is created.
  final pulumi.Input<String> awsRegion;
  /// List of endpoints (Lambda Amazon Resource Names) specified for the SIP media application. Currently, only one endpoint is supported. See `endpoints`.
  final pulumi.Input<SdkvoiceSipMediaApplicationEndpoints> endpoints;
  /// The name of the AWS Chime SDK Voice Sip Media Application.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SdkvoiceSipMediaApplicationArgs].
  /// [awsRegion] The AWS Region in which the AWS Chime SDK Voice Sip Media Application is created.
  /// [endpoints] List of endpoints (Lambda Amazon Resource Names) specified for the SIP media application. Currently, only one endpoint is supported. See `endpoints`.
  /// [name] The name of the AWS Chime SDK Voice Sip Media Application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  SdkvoiceSipMediaApplicationArgs({
    required this.awsRegion,
    required this.endpoints,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegion': awsRegion,
      'endpoints': pulumi.Input.mapInputValue<SdkvoiceSipMediaApplicationEndpoints, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory SdkvoiceSipMediaApplicationArgs.fromMap(Map<String, dynamic> map) {
    return SdkvoiceSipMediaApplicationArgs(
      awsRegion: (map['awsRegion'] as String).input(),
      endpoints: (SdkvoiceSipMediaApplicationEndpoints.fromMap((map['endpoints']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

