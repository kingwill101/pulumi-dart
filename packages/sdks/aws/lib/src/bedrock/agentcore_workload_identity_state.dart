// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AgentcoreWorkloadIdentity resources.
class AgentcoreWorkloadIdentityState {
  /// Set of allowed OAuth2 return URLs for resources associated with this workload identity. These URLs are used as valid redirect targets during OAuth2 authentication flows.
  final pulumi.Input<List<String>?>? allowedResourceOauth2ReturnUrls;
  /// Name of the workload identity. Must be 3-255 characters and contain only alphanumeric characters, hyphens, periods, and underscores.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// ARN of the Workload Identity.
  final pulumi.Input<String?>? workloadIdentityArn;

  /// Creates a new [AgentcoreWorkloadIdentityState].
  /// [allowedResourceOauth2ReturnUrls] Set of allowed OAuth2 return URLs for resources associated with this workload identity. These URLs are used as valid redirect targets during OAuth2 authentication flows.
  /// [name] Name of the workload identity. Must be 3-255 characters and contain only alphanumeric characters, hyphens, periods, and underscores.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [workloadIdentityArn] ARN of the Workload Identity.
  const AgentcoreWorkloadIdentityState({
    this.allowedResourceOauth2ReturnUrls,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.workloadIdentityArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedResourceOauth2ReturnUrls': ?allowedResourceOauth2ReturnUrls,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'workloadIdentityArn': ?workloadIdentityArn,
    };
  }

  factory AgentcoreWorkloadIdentityState.fromMap(Map<String, dynamic> map) {
    return AgentcoreWorkloadIdentityState(
      allowedResourceOauth2ReturnUrls: (() { final guardedValue = map['allowedResourceOauth2ReturnUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workloadIdentityArn: (() { final guardedValue = map['workloadIdentityArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
