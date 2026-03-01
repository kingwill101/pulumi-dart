// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firewall_policy_v2_policy_v2_args_doc}
/// The set of arguments for PolicyV2.
/// {@endtemplate}
/// {@macro pulumi_firewall_policy_v2_policy_v2_args_doc}
class PolicyV2Args {
  /// Audit status of the firewall policy
  /// (must be "true" or "false" if provided - defaults to "false").
  /// This status is set to "false" whenever the firewall policy or any of its
  /// rules are changed. Changing this updates the `audited` status of an existing
  /// firewall policy.
  final pulumi.Input<bool>? audited;
  /// A description for the firewall policy. Changing
  /// this updates the `description` of an existing firewall policy.
  final pulumi.Input<String>? description;
  /// A name for the firewall policy. Changing this
  /// updates the `name` of an existing firewall policy.
  final pulumi.Input<String>? name;
  /// This argument conflicts and is interchangeable
  /// with `tenant_id`. The owner of the firewall policy. Required if admin wants
  /// to create a firewall policy for another project. Changing this creates a new
  /// firewall policy.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the v2 networking client.
  /// A networking client is needed to create a firewall policy. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// firewall policy.
  final pulumi.Input<String>? region;
  /// An array of one or more firewall rules that comprise
  /// the policy. Changing this results in adding/removing rules from the
  /// existing firewall policy.
  final pulumi.Input<List<String>>? rules;
  /// Sharing status of the firewall policy (must be "true"
  /// or "false" if provided). If this is "true" the policy is visible to, and
  /// can be used in, firewalls in other tenants. Changing this updates the
  /// `shared` status of an existing firewall policy. Only administrative users
  /// can specify if the policy should be shared.
  final pulumi.Input<bool>? shared;
  /// This argument conflicts and is interchangeable
  /// with `project_id`. The owner of the firewall policy. Required if admin wants
  /// to create a firewall policy for another tenant. Changing this creates a new
  /// firewall policy.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [PolicyV2Args].
  /// [audited] Audit status of the firewall policy
  /// [description] A description for the firewall policy. Changing
  /// [name] A name for the firewall policy. Changing this
  /// [projectId] This argument conflicts and is interchangeable
  /// [region] The region in which to obtain the v2 networking client.
  /// [rules] An array of one or more firewall rules that comprise
  /// [shared] Sharing status of the firewall policy (must be "true"
  /// [tenantId] This argument conflicts and is interchangeable
  PolicyV2Args({
    bool? audited,
    String? description,
    String? name,
    String? projectId,
    String? region,
    List<String>? rules,
    bool? shared,
    String? tenantId,
  }) :
      audited = pulumi.Input.asOptionalInput<bool>(audited),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      rules = pulumi.Input.asOptionalInput<List<String>>(rules),
      shared = pulumi.Input.asOptionalInput<bool>(shared),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audited': ?audited,
      'description': ?description,
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'rules': ?rules,
      'shared': ?shared,
      'tenantId': ?tenantId,
    };
  }

  factory PolicyV2Args.fromMap(Map<String, dynamic> map) {
    return PolicyV2Args(
      audited: map['audited'] == null ? null : map['audited'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      rules: map['rules'] == null ? null : (map['rules'] as List).cast<String>(),
      shared: map['shared'] == null ? null : map['shared'] as bool,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

