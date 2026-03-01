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
    pulumi.Output<String>? apiArn,
    pulumi.Output<String>? apiId,
    pulumi.Output<Map<String, String>>? dns,
    pulumi.Output<ApiEventConfig>? eventConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerContact,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? wafWebAclArn,
    pulumi.Output<bool>? xrayEnabled,
  }) :
      apiArn = pulumi.Input.asOptionalInput<String>(apiArn),
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      dns = pulumi.Input.asOptionalInput<Map<String, String>>(dns),
      eventConfig = pulumi.Input.asOptionalInput<ApiEventConfig>(eventConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerContact = pulumi.Input.asOptionalInput<String>(ownerContact),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      wafWebAclArn = pulumi.Input.asOptionalInput<String>(wafWebAclArn),
      xrayEnabled = pulumi.Input.asOptionalInput<bool>(xrayEnabled);

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
      apiArn: map['apiArn'] == null ? null : pulumi.Output.create<String>(map['apiArn'] as String),
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      dns: map['dns'] == null ? null : pulumi.Output.create<Map<String, String>>((map['dns'] as Map).cast<String, String>()),
      eventConfig: map['eventConfig'] == null ? null : pulumi.Output.create<ApiEventConfig>(ApiEventConfig.fromMap((map['eventConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerContact: map['ownerContact'] == null ? null : pulumi.Output.create<String>(map['ownerContact'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      wafWebAclArn: map['wafWebAclArn'] == null ? null : pulumi.Output.create<String>(map['wafWebAclArn'] as String),
      xrayEnabled: map['xrayEnabled'] == null ? null : pulumi.Output.create<bool>(map['xrayEnabled'] as bool),
    );
  }
}

