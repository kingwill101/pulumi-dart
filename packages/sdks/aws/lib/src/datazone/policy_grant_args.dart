// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_grant_detail.dart';
import 'policy_grant_principal.dart';

/// {@template pulumi_datazone_policy_grant_policy_grant_args_doc}
/// The set of arguments for PolicyGrant.
/// {@endtemplate}
/// {@macro pulumi_datazone_policy_grant_policy_grant_args_doc}
class PolicyGrantArgs {
  /// Policy grant detail. Exactly one sub-block must be specified. See `detail` Block below.
  final pulumi.Input<PolicyGrantDetail> detail;
  /// Identifier of the domain where the policy grant is created.
  final pulumi.Input<String> domainIdentifier;
  /// Identifier of the entity to which the policy grant applies.
  final pulumi.Input<String> entityIdentifier;
  /// Type of entity to which the policy grant applies. Valid values: `ASSET_TYPE`, `DOMAIN_UNIT`, `ENVIRONMENT_BLUEPRINT_CONFIGURATION`, `ENVIRONMENT_PROFILE`.
  final pulumi.Input<String> entityType;
  /// Type of the managed policy. Valid values: `ADD_TO_PROJECT_MEMBER_POOL`, `CREATE_ASSET_TYPE`, `CREATE_DOMAIN_UNIT`, `CREATE_ENVIRONMENT`, `CREATE_ENVIRONMENT_FROM_BLUEPRINT`, `CREATE_ENVIRONMENT_PROFILE`, `CREATE_FORM_TYPE`, `CREATE_GLOSSARY`, `CREATE_PROJECT`, `CREATE_PROJECT_FROM_PROJECT_PROFILE`, `DELEGATE_CREATE_ENVIRONMENT_PROFILE`, `OVERRIDE_DOMAIN_UNIT_OWNERS`, `OVERRIDE_PROJECT_OWNERS`, `USE_ASSET_TYPE`.
  final pulumi.Input<String> policyType;
  /// Principal to which the policy grant applies. Exactly one sub-block must be specified. See `principal` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<PolicyGrantPrincipal> principal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [PolicyGrantArgs].
  /// [detail] Policy grant detail. Exactly one sub-block must be specified. See `detail` Block below.
  /// [domainIdentifier] Identifier of the domain where the policy grant is created.
  /// [entityIdentifier] Identifier of the entity to which the policy grant applies.
  /// [entityType] Type of entity to which the policy grant applies. Valid values: `ASSET_TYPE`, `DOMAIN_UNIT`, `ENVIRONMENT_BLUEPRINT_CONFIGURATION`, `ENVIRONMENT_PROFILE`.
  /// [policyType] Type of the managed policy. Valid values: `ADD_TO_PROJECT_MEMBER_POOL`, `CREATE_ASSET_TYPE`, `CREATE_DOMAIN_UNIT`, `CREATE_ENVIRONMENT`, `CREATE_ENVIRONMENT_FROM_BLUEPRINT`, `CREATE_ENVIRONMENT_PROFILE`, `CREATE_FORM_TYPE`, `CREATE_GLOSSARY`, `CREATE_PROJECT`, `CREATE_PROJECT_FROM_PROJECT_PROFILE`, `DELEGATE_CREATE_ENVIRONMENT_PROFILE`, `OVERRIDE_DOMAIN_UNIT_OWNERS`, `OVERRIDE_PROJECT_OWNERS`, `USE_ASSET_TYPE`.
  /// [principal] Principal to which the policy grant applies. Exactly one sub-block must be specified. See `principal` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const PolicyGrantArgs({
    required this.detail,
    required this.domainIdentifier,
    required this.entityIdentifier,
    required this.entityType,
    required this.policyType,
    required this.principal,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detail': pulumi.Input.mapInputValue<PolicyGrantDetail, Map<String, dynamic>>(detail, (value) => value.toMap()),
      'domainIdentifier': domainIdentifier,
      'entityIdentifier': entityIdentifier,
      'entityType': entityType,
      'policyType': policyType,
      'principal': pulumi.Input.mapInputValue<PolicyGrantPrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory PolicyGrantArgs.fromMap(Map<String, dynamic> map) {
    return PolicyGrantArgs(
      detail: pulumi.Input.fromValue(PolicyGrantDetail.fromMap((map['detail']! as Map).cast<String, dynamic>())),
      domainIdentifier: pulumi.Input.fromValue(map['domainIdentifier'] as String),
      entityIdentifier: pulumi.Input.fromValue(map['entityIdentifier'] as String),
      entityType: pulumi.Input.fromValue(map['entityType'] as String),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
      principal: pulumi.Input.fromValue(PolicyGrantPrincipal.fromMap((map['principal']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
