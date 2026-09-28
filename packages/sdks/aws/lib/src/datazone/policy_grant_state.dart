// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_grant_detail.dart';
import 'policy_grant_principal.dart';

/// Input properties used for looking up and filtering PolicyGrant resources.
class PolicyGrantState {
  /// Timestamp when the policy grant was created (RFC3339 format).
  final pulumi.Input<String?>? createdAt;
  /// User who created the policy grant.
  final pulumi.Input<String?>? createdBy;
  /// Policy grant detail. Exactly one sub-block must be specified. See `detail` Block below.
  final pulumi.Input<PolicyGrantDetail?>? detail;
  /// Identifier of the domain where the policy grant is created.
  final pulumi.Input<String?>? domainIdentifier;
  /// Identifier of the entity to which the policy grant applies.
  final pulumi.Input<String?>? entityIdentifier;
  /// Type of entity to which the policy grant applies. Valid values: `ASSET_TYPE`, `DOMAIN_UNIT`, `ENVIRONMENT_BLUEPRINT_CONFIGURATION`, `ENVIRONMENT_PROFILE`.
  final pulumi.Input<String?>? entityType;
  /// Identifier of the policy grant.
  final pulumi.Input<String?>? grantId;
  /// Type of the managed policy. Valid values: `ADD_TO_PROJECT_MEMBER_POOL`, `CREATE_ASSET_TYPE`, `CREATE_DOMAIN_UNIT`, `CREATE_ENVIRONMENT`, `CREATE_ENVIRONMENT_FROM_BLUEPRINT`, `CREATE_ENVIRONMENT_PROFILE`, `CREATE_FORM_TYPE`, `CREATE_GLOSSARY`, `CREATE_PROJECT`, `CREATE_PROJECT_FROM_PROJECT_PROFILE`, `DELEGATE_CREATE_ENVIRONMENT_PROFILE`, `OVERRIDE_DOMAIN_UNIT_OWNERS`, `OVERRIDE_PROJECT_OWNERS`, `USE_ASSET_TYPE`.
  final pulumi.Input<String?>? policyType;
  /// Principal to which the policy grant applies. Exactly one sub-block must be specified. See `principal` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<PolicyGrantPrincipal?>? principal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [PolicyGrantState].
  /// [createdAt] Timestamp when the policy grant was created (RFC3339 format).
  /// [createdBy] User who created the policy grant.
  /// [detail] Policy grant detail. Exactly one sub-block must be specified. See `detail` Block below.
  /// [domainIdentifier] Identifier of the domain where the policy grant is created.
  /// [entityIdentifier] Identifier of the entity to which the policy grant applies.
  /// [entityType] Type of entity to which the policy grant applies. Valid values: `ASSET_TYPE`, `DOMAIN_UNIT`, `ENVIRONMENT_BLUEPRINT_CONFIGURATION`, `ENVIRONMENT_PROFILE`.
  /// [grantId] Identifier of the policy grant.
  /// [policyType] Type of the managed policy. Valid values: `ADD_TO_PROJECT_MEMBER_POOL`, `CREATE_ASSET_TYPE`, `CREATE_DOMAIN_UNIT`, `CREATE_ENVIRONMENT`, `CREATE_ENVIRONMENT_FROM_BLUEPRINT`, `CREATE_ENVIRONMENT_PROFILE`, `CREATE_FORM_TYPE`, `CREATE_GLOSSARY`, `CREATE_PROJECT`, `CREATE_PROJECT_FROM_PROJECT_PROFILE`, `DELEGATE_CREATE_ENVIRONMENT_PROFILE`, `OVERRIDE_DOMAIN_UNIT_OWNERS`, `OVERRIDE_PROJECT_OWNERS`, `USE_ASSET_TYPE`.
  /// [principal] Principal to which the policy grant applies. Exactly one sub-block must be specified. See `principal` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const PolicyGrantState({
    this.createdAt,
    this.createdBy,
    this.detail,
    this.domainIdentifier,
    this.entityIdentifier,
    this.entityType,
    this.grantId,
    this.policyType,
    this.principal,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'detail': ?pulumi.Input.mapOptionalInputValue<PolicyGrantDetail, Map<String, dynamic>>(detail, (value) => value.toMap()),
      'domainIdentifier': ?domainIdentifier,
      'entityIdentifier': ?entityIdentifier,
      'entityType': ?entityType,
      'grantId': ?grantId,
      'policyType': ?policyType,
      'principal': ?pulumi.Input.mapOptionalInputValue<PolicyGrantPrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory PolicyGrantState.fromMap(Map<String, dynamic> map) {
    return PolicyGrantState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      detail: (() { final guardedValue = map['detail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantDetail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainIdentifier: (() { final guardedValue = map['domainIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityIdentifier: (() { final guardedValue = map['entityIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityType: (() { final guardedValue = map['entityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantId: (() { final guardedValue = map['grantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantPrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
