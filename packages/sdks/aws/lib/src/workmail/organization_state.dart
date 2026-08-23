// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_timeouts.dart';

/// Input properties used for looking up and filtering Organization resources.
class OrganizationState {
  /// ARN of the Organization.
  final pulumi.Input<String>? arn;
  /// Date and time (RFC3339) at which the organization became active.
  final pulumi.Input<String>? completedDate;
  /// Default mail domain for the organization.
  final pulumi.Input<String>? defaultMailDomain;
  /// Whether to delete the AWS Directory Service directory associated with the organization on destroy. To update this value after creation, run `pulumi up` before running `terraform destroy`. Defaults to `false`.
  final pulumi.Input<bool>? deleteDirectory;
  /// Whether to delete the IAM Identity Center application associated with the organization on destroy. To update this value after creation, run `pulumi up` before running `terraform destroy`. Defaults to `false`.
  final pulumi.Input<bool>? deleteIdentityCenterApplication;
  /// ID of an existing directory to associate with the organization. Changing this creates a new resource.
  final pulumi.Input<String>? directoryId;
  /// Type of the associated directory.
  final pulumi.Input<String>? directoryType;
  /// Whether to enable interoperability between WorkMail and Microsoft Exchange. Changing this creates a new resource.
  final pulumi.Input<bool>? interoperabilityEnabled;
  /// ARN of a customer-managed KMS key to encrypt the organization's data. If omitted, AWS managed keys are used. Changing this creates a new resource.
  final pulumi.Input<String>? kmsKeyArn;
  /// User ID of the migration admin if migration is enabled.
  final pulumi.Input<String>? migrationAdmin;
  /// Alias for the organization. Must be unique globally. Changing this creates a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? organizationAlias;
  /// ID of the WorkMail Organization.
  final pulumi.Input<String>? organizationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// State of the organization.
  final pulumi.Input<String>? state;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<OrganizationTimeouts>? timeouts;

  /// Creates a new [OrganizationState].
  /// [arn] ARN of the Organization.
  /// [completedDate] Date and time (RFC3339) at which the organization became active.
  /// [defaultMailDomain] Default mail domain for the organization.
  /// [deleteDirectory] Whether to delete the AWS Directory Service directory associated with the organization on destroy. To update this value after creation, run `pulumi up` before running `terraform destroy`. Defaults to `false`.
  /// [deleteIdentityCenterApplication] Whether to delete the IAM Identity Center application associated with the organization on destroy. To update this value after creation, run `pulumi up` before running `terraform destroy`. Defaults to `false`.
  /// [directoryId] ID of an existing directory to associate with the organization. Changing this creates a new resource.
  /// [directoryType] Type of the associated directory.
  /// [interoperabilityEnabled] Whether to enable interoperability between WorkMail and Microsoft Exchange. Changing this creates a new resource.
  /// [kmsKeyArn] ARN of a customer-managed KMS key to encrypt the organization's data. If omitted, AWS managed keys are used. Changing this creates a new resource.
  /// [migrationAdmin] User ID of the migration admin if migration is enabled.
  /// [organizationAlias] Alias for the organization. Must be unique globally. Changing this creates a new resource.
  /// [organizationId] ID of the WorkMail Organization.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the organization.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const OrganizationState({
    this.arn,
    this.completedDate,
    this.defaultMailDomain,
    this.deleteDirectory,
    this.deleteIdentityCenterApplication,
    this.directoryId,
    this.directoryType,
    this.interoperabilityEnabled,
    this.kmsKeyArn,
    this.migrationAdmin,
    this.organizationAlias,
    this.organizationId,
    this.region,
    this.state,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'completedDate': ?completedDate,
      'defaultMailDomain': ?defaultMailDomain,
      'deleteDirectory': ?deleteDirectory,
      'deleteIdentityCenterApplication': ?deleteIdentityCenterApplication,
      'directoryId': ?directoryId,
      'directoryType': ?directoryType,
      'interoperabilityEnabled': ?interoperabilityEnabled,
      'kmsKeyArn': ?kmsKeyArn,
      'migrationAdmin': ?migrationAdmin,
      'organizationAlias': ?organizationAlias,
      'organizationId': ?organizationId,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<OrganizationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory OrganizationState.fromMap(Map<String, dynamic> map) {
    return OrganizationState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      completedDate: (() { final guardedValue = map['completedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultMailDomain: (() { final guardedValue = map['defaultMailDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteDirectory: (() { final guardedValue = map['deleteDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deleteIdentityCenterApplication: (() { final guardedValue = map['deleteIdentityCenterApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryType: (() { final guardedValue = map['directoryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interoperabilityEnabled: (() { final guardedValue = map['interoperabilityEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrationAdmin: (() { final guardedValue = map['migrationAdmin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationAlias: (() { final guardedValue = map['organizationAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
