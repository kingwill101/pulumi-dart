// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bedrock_agentcore_workload_identity_agentcore_workload_identity_args_doc}
/// The set of arguments for AgentcoreWorkloadIdentity.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_workload_identity_agentcore_workload_identity_args_doc}
class AgentcoreWorkloadIdentityArgs {
  /// Set of allowed OAuth2 return URLs for resources associated with this workload identity. These URLs are used as valid redirect targets during OAuth2 authentication flows.
  final pulumi.Input<List<String>>? allowedResourceOauth2ReturnUrls;

  /// Name of the workload identity. Must be 3-255 characters and contain only alphanumeric characters, hyphens, periods, and underscores.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AgentcoreWorkloadIdentityArgs].
  /// [allowedResourceOauth2ReturnUrls] Set of allowed OAuth2 return URLs for resources associated with this workload identity. These URLs are used as valid redirect targets during OAuth2 authentication flows.
  /// [name] Name of the workload identity. Must be 3-255 characters and contain only alphanumeric characters, hyphens, periods, and underscores.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AgentcoreWorkloadIdentityArgs({
    List<String>? allowedResourceOauth2ReturnUrls,
    String? name,
    String? region,
  }) : allowedResourceOauth2ReturnUrls =
           pulumi.Input.asOptionalInput<List<String>>(
             allowedResourceOauth2ReturnUrls,
           ),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedResourceOauth2ReturnUrls': ?allowedResourceOauth2ReturnUrls,
      'name': ?name,
      'region': ?region,
    };
  }

  factory AgentcoreWorkloadIdentityArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreWorkloadIdentityArgs(
      allowedResourceOauth2ReturnUrls:
          map['allowedResourceOauth2ReturnUrls'] == null
          ? null
          : (map['allowedResourceOauth2ReturnUrls'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
