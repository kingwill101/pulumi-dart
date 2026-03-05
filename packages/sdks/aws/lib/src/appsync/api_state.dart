// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_event_config.dart';

/// Input properties used for looking up and filtering Api resources.
class ApiState {
  /// ARN of the Event API.
  final pulumi.Input<String>? apiArn;
  /// ID of the Event API.
  final pulumi.Input<String>? apiId;
  /// DNS configuration for the Event API.
  final pulumi.Input<Map<String, String>>? dns;
  /// Configuration for the Event API. See Event Config below.
  final pulumi.Input<ApiEventConfig>? eventConfig;
  /// Name of the Event API.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Contact information for the owner of the Event API.
  final pulumi.Input<String>? ownerContact;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ARN of the associated WAF web ACL.
  final pulumi.Input<String>? wafWebAclArn;
  final pulumi.Input<bool>? xrayEnabled;

  /// Creates a new [ApiState].
  /// [apiArn] ARN of the Event API.
  /// [apiId] ID of the Event API.
  /// [dns] DNS configuration for the Event API.
  /// [eventConfig] Configuration for the Event API. See Event Config below.
  /// [name] Name of the Event API.
  /// [ownerContact] Contact information for the owner of the Event API.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [wafWebAclArn] ARN of the associated WAF web ACL.
  /// [xrayEnabled] Optional.
  ApiState({
    this.apiArn,
    this.apiId,
    this.dns,
    this.eventConfig,
    this.name,
    this.ownerContact,
    this.region,
    this.tags,
    this.tagsAll,
    this.wafWebAclArn,
    this.xrayEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiArn': ?apiArn,
      'apiId': ?apiId,
      'dns': ?dns,
      'eventConfig': ?pulumi.Input.mapOptionalInputValue<ApiEventConfig, Map<String, dynamic>>(eventConfig, (value) => value.toMap()),
      'name': ?name,
      'ownerContact': ?ownerContact,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'wafWebAclArn': ?wafWebAclArn,
      'xrayEnabled': ?xrayEnabled,
    };
  }

  factory ApiState.fromMap(Map<String, dynamic> map) {
    return ApiState(
      apiArn: (() { final guardedValue = map['apiArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dns: (() { final guardedValue = map['dns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      eventConfig: (() { final guardedValue = map['eventConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiEventConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerContact: (() { final guardedValue = map['ownerContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      wafWebAclArn: (() { final guardedValue = map['wafWebAclArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xrayEnabled: (() { final guardedValue = map['xrayEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

