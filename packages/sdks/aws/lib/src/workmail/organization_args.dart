// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_timeouts.dart';

/// {@template pulumi_workmail_organization_organization_args_doc}
/// The set of arguments for Organization.
/// {@endtemplate}
/// {@macro pulumi_workmail_organization_organization_args_doc}
class OrganizationArgs {
  /// Whether to delete the AWS Directory Service directory associated with the organization on destroy. To update this value after creation, run `pulumi up` before running `terraform destroy`. Defaults to `false`.
  final pulumi.Input<bool>? deleteDirectory;
  /// Whether to delete the IAM Identity Center application associated with the organization on destroy. To update this value after creation, run `pulumi up` before running `terraform destroy`. Defaults to `false`.
  final pulumi.Input<bool>? deleteIdentityCenterApplication;
  /// ID of an existing directory to associate with the organization. Changing this creates a new resource.
  final pulumi.Input<String>? directoryId;
  /// Whether to enable interoperability between WorkMail and Microsoft Exchange. Changing this creates a new resource.
  final pulumi.Input<bool>? interoperabilityEnabled;
  /// ARN of a customer-managed KMS key to encrypt the organization's data. If omitted, AWS managed keys are used. Changing this creates a new resource.
  final pulumi.Input<String>? kmsKeyArn;
  /// Alias for the organization. Must be unique globally. Changing this creates a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> organizationAlias;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<OrganizationTimeouts>? timeouts;

  /// Creates a new [OrganizationArgs].
  /// [deleteDirectory] Whether to delete the AWS Directory Service directory associated with the organization on destroy. To update this value after creation, run `pulumi up` before running `terraform destroy`. Defaults to `false`.
  /// [deleteIdentityCenterApplication] Whether to delete the IAM Identity Center application associated with the organization on destroy. To update this value after creation, run `pulumi up` before running `terraform destroy`. Defaults to `false`.
  /// [directoryId] ID of an existing directory to associate with the organization. Changing this creates a new resource.
  /// [interoperabilityEnabled] Whether to enable interoperability between WorkMail and Microsoft Exchange. Changing this creates a new resource.
  /// [kmsKeyArn] ARN of a customer-managed KMS key to encrypt the organization's data. If omitted, AWS managed keys are used. Changing this creates a new resource.
  /// [organizationAlias] Alias for the organization. Must be unique globally. Changing this creates a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const OrganizationArgs({
    this.deleteDirectory,
    this.deleteIdentityCenterApplication,
    this.directoryId,
    this.interoperabilityEnabled,
    this.kmsKeyArn,
    required this.organizationAlias,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteDirectory': ?deleteDirectory,
      'deleteIdentityCenterApplication': ?deleteIdentityCenterApplication,
      'directoryId': ?directoryId,
      'interoperabilityEnabled': ?interoperabilityEnabled,
      'kmsKeyArn': ?kmsKeyArn,
      'organizationAlias': organizationAlias,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<OrganizationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory OrganizationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationArgs(
      deleteDirectory: (() { final guardedValue = map['deleteDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deleteIdentityCenterApplication: (() { final guardedValue = map['deleteIdentityCenterApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interoperabilityEnabled: (() { final guardedValue = map['interoperabilityEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationAlias: pulumi.Input.fromValue(map['organizationAlias'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
