// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AgentcoreWorkloadIdentity.
class AgentcoreWorkloadIdentityArgs {
  /// Set of allowed OAuth2 return URLs for resources associated with this workload identity. These URLs are used as valid redirect targets during OAuth2 authentication flows.
  final pulumi.Input<List<String>>? allowedResourceOauth2ReturnUrls;

  /// Name of the workload identity. Must be 3-255 characters and contain only alphanumeric characters, hyphens, periods, and underscores.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  AgentcoreWorkloadIdentityArgs({
    this.allowedResourceOauth2ReturnUrls,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedResourceOauth2ReturnUrlsValue =
        allowedResourceOauth2ReturnUrls;
    if (allowedResourceOauth2ReturnUrlsValue != null) {
      map['allowedResourceOauth2ReturnUrls'] =
          allowedResourceOauth2ReturnUrlsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AgentcoreWorkloadIdentityArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreWorkloadIdentityArgs(
      allowedResourceOauth2ReturnUrls:
          pulumi.Input.asOptionalInput<List<String>>(
              map['allowedResourceOauth2ReturnUrls']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
