// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LifecyclePolicy.
class LifecyclePolicyArgs2 {
  /// The policy document. This is a JSON formatted string. See more details about [Policy Parameters](http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html#lifecycle_policy_parameters) in the official AWS docs. Consider using the <span pulumi-lang-nodejs="`aws.ecr.getLifecyclePolicyDocument`" pulumi-lang-dotnet="`aws.ecr.getLifecyclePolicyDocument`" pulumi-lang-go="`ecr.getLifecyclePolicyDocument`" pulumi-lang-python="`ecr_get_lifecycle_policy_document`" pulumi-lang-yaml="`aws.ecr.getLifecyclePolicyDocument`" pulumi-lang-java="`aws.ecr.getLifecyclePolicyDocument`">`aws.ecr.getLifecyclePolicyDocument`</span><span pulumi-lang-nodejs=" dataSource " pulumi-lang-dotnet=" DataSource " pulumi-lang-go=" dataSource " pulumi-lang-python=" data_source " pulumi-lang-yaml=" dataSource " pulumi-lang-java=" dataSource "> data_source </span>to generate/manage the JSON document used for the <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span> argument.
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the repository to apply the policy.
  final Input<String> repository;

  LifecyclePolicyArgs2({
    required this.policy,
    this.region,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['repository'] = repository;
    return map;
  }

  factory LifecyclePolicyArgs2.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyArgs2(
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
      repository: Input.asInput<String>(map['repository']),
    );
  }
}
