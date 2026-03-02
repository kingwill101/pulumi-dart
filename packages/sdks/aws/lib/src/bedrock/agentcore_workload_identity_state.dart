// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AgentcoreWorkloadIdentity resources.
class AgentcoreWorkloadIdentityState {
  /// Set of allowed OAuth2 return URLs for resources associated with this workload identity. These URLs are used as valid redirect targets during OAuth2 authentication flows.
  final pulumi.Input<List<String>>? allowedResourceOauth2ReturnUrls;
  /// Name of the workload identity. Must be 3-255 characters and contain only alphanumeric characters, hyphens, periods, and underscores.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the Workload Identity.
  final pulumi.Input<String>? workloadIdentityArn;

  /// Creates a new [AgentcoreWorkloadIdentityState].
  /// [allowedResourceOauth2ReturnUrls] Set of allowed OAuth2 return URLs for resources associated with this workload identity. These URLs are used as valid redirect targets during OAuth2 authentication flows.
  /// [name] Name of the workload identity. Must be 3-255 characters and contain only alphanumeric characters, hyphens, periods, and underscores.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workloadIdentityArn] ARN of the Workload Identity.
  AgentcoreWorkloadIdentityState({
    this.allowedResourceOauth2ReturnUrls,
    this.name,
    this.region,
    this.workloadIdentityArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedResourceOauth2ReturnUrls': ?allowedResourceOauth2ReturnUrls,
      'name': ?name,
      'region': ?region,
      'workloadIdentityArn': ?workloadIdentityArn,
    };
  }

  factory AgentcoreWorkloadIdentityState.fromMap(Map<String, dynamic> map) {
    return AgentcoreWorkloadIdentityState(
      allowedResourceOauth2ReturnUrls: map['allowedResourceOauth2ReturnUrls'] == null ? null : ((map['allowedResourceOauth2ReturnUrls'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      workloadIdentityArn: map['workloadIdentityArn'] == null ? null : (map['workloadIdentityArn'] as String).input(),
    );
  }
}

