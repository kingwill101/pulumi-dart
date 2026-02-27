// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../sdkvoice_sip_media_application_endpoints/sdkvoice_sip_media_application_endpoints.dart';

/// The set of arguments for SdkvoiceSipMediaApplication.
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

  SdkvoiceSipMediaApplicationArgs({
    required this.awsRegion,
    required this.endpoints,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['awsRegion'] = awsRegion;
    map['endpoints'] = pulumi.Input.mapInputValue<
        SdkvoiceSipMediaApplicationEndpoints,
        Map<String, dynamic>>(endpoints, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory SdkvoiceSipMediaApplicationArgs.fromMap(Map<String, dynamic> map) {
    return SdkvoiceSipMediaApplicationArgs(
      awsRegion: pulumi.Input.asInput<String>(map['awsRegion']),
      endpoints: pulumi.Input.asInput<SdkvoiceSipMediaApplicationEndpoints>(
          map['endpoints']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
