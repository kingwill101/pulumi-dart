// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_grant_detail_add_to_project_member_pool.dart';
import 'policy_grant_detail_create_asset_type.dart';
import 'policy_grant_detail_create_domain_unit.dart';
import 'policy_grant_detail_create_environment_profile.dart';
import 'policy_grant_detail_create_form_type.dart';
import 'policy_grant_detail_create_glossary.dart';
import 'policy_grant_detail_create_project.dart';
import 'policy_grant_detail_create_project_from_project_profile.dart';
import 'policy_grant_detail_override_domain_unit_owners.dart';
import 'policy_grant_detail_override_project_owners.dart';
import 'policy_grant_detail_use_asset_type.dart';

class PolicyGrantDetail {
  /// Configuration for the `ADD_TO_PROJECT_MEMBER_POOL` policy type. See `addToProjectMemberPool` Block below.
  final pulumi.Input<PolicyGrantDetailAddToProjectMemberPool?>? addToProjectMemberPool;
  /// Configuration for the `CREATE_ASSET_TYPE` policy type. See `createAssetType` Block below.
  final pulumi.Input<PolicyGrantDetailCreateAssetType?>? createAssetType;
  /// Configuration for the `CREATE_DOMAIN_UNIT` policy type. See `createDomainUnit` Block below.
  final pulumi.Input<PolicyGrantDetailCreateDomainUnit?>? createDomainUnit;
  /// Configuration for the `CREATE_ENVIRONMENT` policy type. Empty block.
  final pulumi.Input<Map<String, dynamic>?>? createEnvironment;
  /// Configuration for the `CREATE_ENVIRONMENT_FROM_BLUEPRINT` policy type. Empty block.
  final pulumi.Input<Map<String, dynamic>?>? createEnvironmentFromBlueprint;
  /// Configuration for the `CREATE_ENVIRONMENT_PROFILE` policy type. See `createEnvironmentProfile` Block below.
  final pulumi.Input<PolicyGrantDetailCreateEnvironmentProfile?>? createEnvironmentProfile;
  /// Configuration for the `CREATE_FORM_TYPE` policy type. See `createFormType` Block below.
  final pulumi.Input<PolicyGrantDetailCreateFormType?>? createFormType;
  /// Configuration for the `CREATE_GLOSSARY` policy type. See `createGlossary` Block below.
  final pulumi.Input<PolicyGrantDetailCreateGlossary?>? createGlossary;
  /// Configuration for the `CREATE_PROJECT` policy type. See `createProject` Block below.
  final pulumi.Input<PolicyGrantDetailCreateProject?>? createProject;
  /// Configuration for the `CREATE_PROJECT_FROM_PROJECT_PROFILE` policy type. See `createProjectFromProjectProfile` Block below.
  final pulumi.Input<PolicyGrantDetailCreateProjectFromProjectProfile?>? createProjectFromProjectProfile;
  /// Configuration for the `DELEGATE_CREATE_ENVIRONMENT_PROFILE` policy type. Empty block.
  final pulumi.Input<Map<String, dynamic>?>? delegateCreateEnvironmentProfile;
  /// Configuration for the `OVERRIDE_DOMAIN_UNIT_OWNERS` policy type. See `overrideDomainUnitOwners` Block below.
  final pulumi.Input<PolicyGrantDetailOverrideDomainUnitOwners?>? overrideDomainUnitOwners;
  /// Configuration for the `OVERRIDE_PROJECT_OWNERS` policy type. See `overrideProjectOwners` Block below.
  final pulumi.Input<PolicyGrantDetailOverrideProjectOwners?>? overrideProjectOwners;
  /// Configuration for the `USE_ASSET_TYPE` policy type. See `useAssetType` Block below.
  final pulumi.Input<PolicyGrantDetailUseAssetType?>? useAssetType;

  /// Creates a new [PolicyGrantDetail].
  /// [addToProjectMemberPool] Configuration for the `ADD_TO_PROJECT_MEMBER_POOL` policy type. See `addToProjectMemberPool` Block below.
  /// [createAssetType] Configuration for the `CREATE_ASSET_TYPE` policy type. See `createAssetType` Block below.
  /// [createDomainUnit] Configuration for the `CREATE_DOMAIN_UNIT` policy type. See `createDomainUnit` Block below.
  /// [createEnvironment] Configuration for the `CREATE_ENVIRONMENT` policy type. Empty block.
  /// [createEnvironmentFromBlueprint] Configuration for the `CREATE_ENVIRONMENT_FROM_BLUEPRINT` policy type. Empty block.
  /// [createEnvironmentProfile] Configuration for the `CREATE_ENVIRONMENT_PROFILE` policy type. See `createEnvironmentProfile` Block below.
  /// [createFormType] Configuration for the `CREATE_FORM_TYPE` policy type. See `createFormType` Block below.
  /// [createGlossary] Configuration for the `CREATE_GLOSSARY` policy type. See `createGlossary` Block below.
  /// [createProject] Configuration for the `CREATE_PROJECT` policy type. See `createProject` Block below.
  /// [createProjectFromProjectProfile] Configuration for the `CREATE_PROJECT_FROM_PROJECT_PROFILE` policy type. See `createProjectFromProjectProfile` Block below.
  /// [delegateCreateEnvironmentProfile] Configuration for the `DELEGATE_CREATE_ENVIRONMENT_PROFILE` policy type. Empty block.
  /// [overrideDomainUnitOwners] Configuration for the `OVERRIDE_DOMAIN_UNIT_OWNERS` policy type. See `overrideDomainUnitOwners` Block below.
  /// [overrideProjectOwners] Configuration for the `OVERRIDE_PROJECT_OWNERS` policy type. See `overrideProjectOwners` Block below.
  /// [useAssetType] Configuration for the `USE_ASSET_TYPE` policy type. See `useAssetType` Block below.
  const PolicyGrantDetail({
    this.addToProjectMemberPool,
    this.createAssetType,
    this.createDomainUnit,
    this.createEnvironment,
    this.createEnvironmentFromBlueprint,
    this.createEnvironmentProfile,
    this.createFormType,
    this.createGlossary,
    this.createProject,
    this.createProjectFromProjectProfile,
    this.delegateCreateEnvironmentProfile,
    this.overrideDomainUnitOwners,
    this.overrideProjectOwners,
    this.useAssetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addToProjectMemberPool': ?pulumi.Input.mapOptionalInputValue<PolicyGrantDetailAddToProjectMemberPool, Map<String, dynamic>>(addToProjectMemberPool, (value) => value.toMap()),
      'createAssetType': ?pulumi.Input.mapOptionalInputValue<PolicyGrantDetailCreateAssetType, Map<String, dynamic>>(createAssetType, (value) => value.toMap()),
      'createDomainUnit': ?pulumi.Input.mapOptionalInputValue<PolicyGrantDetailCreateDomainUnit, Map<String, dynamic>>(createDomainUnit, (value) => value.toMap()),
      'createEnvironment': ?createEnvironment,
      'createEnvironmentFromBlueprint': ?createEnvironmentFromBlueprint,
      'createEnvironmentProfile': ?pulumi.Input.mapOptionalInputValue<PolicyGrantDetailCreateEnvironmentProfile, Map<String, dynamic>>(createEnvironmentProfile, (value) => value.toMap()),
      'createFormType': ?pulumi.Input.mapOptionalInputValue<PolicyGrantDetailCreateFormType, Map<String, dynamic>>(createFormType, (value) => value.toMap()),
      'createGlossary': ?pulumi.Input.mapOptionalInputValue<PolicyGrantDetailCreateGlossary, Map<String, dynamic>>(createGlossary, (value) => value.toMap()),
      'createProject': ?pulumi.Input.mapOptionalInputValue<PolicyGrantDetailCreateProject, Map<String, dynamic>>(createProject, (value) => value.toMap()),
      'createProjectFromProjectProfile': ?pulumi.Input.mapOptionalInputValue<PolicyGrantDetailCreateProjectFromProjectProfile, Map<String, dynamic>>(createProjectFromProjectProfile, (value) => value.toMap()),
      'delegateCreateEnvironmentProfile': ?delegateCreateEnvironmentProfile,
      'overrideDomainUnitOwners': ?pulumi.Input.mapOptionalInputValue<PolicyGrantDetailOverrideDomainUnitOwners, Map<String, dynamic>>(overrideDomainUnitOwners, (value) => value.toMap()),
      'overrideProjectOwners': ?pulumi.Input.mapOptionalInputValue<PolicyGrantDetailOverrideProjectOwners, Map<String, dynamic>>(overrideProjectOwners, (value) => value.toMap()),
      'useAssetType': ?pulumi.Input.mapOptionalInputValue<PolicyGrantDetailUseAssetType, Map<String, dynamic>>(useAssetType, (value) => value.toMap()),
    };
  }

  factory PolicyGrantDetail.fromMap(Map<String, dynamic> map) {
    return PolicyGrantDetail(
      addToProjectMemberPool: (() { final guardedValue = map['addToProjectMemberPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantDetailAddToProjectMemberPool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createAssetType: (() { final guardedValue = map['createAssetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantDetailCreateAssetType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createDomainUnit: (() { final guardedValue = map['createDomainUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantDetailCreateDomainUnit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createEnvironment: (() { final guardedValue = map['createEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      createEnvironmentFromBlueprint: (() { final guardedValue = map['createEnvironmentFromBlueprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      createEnvironmentProfile: (() { final guardedValue = map['createEnvironmentProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantDetailCreateEnvironmentProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createFormType: (() { final guardedValue = map['createFormType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantDetailCreateFormType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createGlossary: (() { final guardedValue = map['createGlossary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantDetailCreateGlossary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createProject: (() { final guardedValue = map['createProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantDetailCreateProject.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createProjectFromProjectProfile: (() { final guardedValue = map['createProjectFromProjectProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantDetailCreateProjectFromProjectProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      delegateCreateEnvironmentProfile: (() { final guardedValue = map['delegateCreateEnvironmentProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      overrideDomainUnitOwners: (() { final guardedValue = map['overrideDomainUnitOwners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantDetailOverrideDomainUnitOwners.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      overrideProjectOwners: (() { final guardedValue = map['overrideProjectOwners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantDetailOverrideProjectOwners.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      useAssetType: (() { final guardedValue = map['useAssetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyGrantDetailUseAssetType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
