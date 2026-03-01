// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_brain_industrial_pid_organization_industrial_pid_organization_args_doc}
/// The set of arguments for IndustrialPidOrganization.
/// {@endtemplate}
/// {@macro pulumi_brain_industrial_pid_organization_industrial_pid_organization_args_doc}
class IndustrialPidOrganizationArgs {
  /// The ID of parent pid organization.
  final pulumi.Input<String>? parentPidOrganizationId;
  /// The name of pid organization.
  final pulumi.Input<String> pidOrganizationName;

  /// Creates a new [IndustrialPidOrganizationArgs].
  /// [parentPidOrganizationId] The ID of parent pid organization.
  /// [pidOrganizationName] The name of pid organization.
  IndustrialPidOrganizationArgs({
    pulumi.Output<String>? parentPidOrganizationId,
    required pulumi.Output<String> pidOrganizationName,
  }) :
      parentPidOrganizationId = pulumi.Input.asOptionalInput<String>(parentPidOrganizationId),
      pidOrganizationName = pulumi.Input.asInput<String>(pidOrganizationName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentPidOrganizationId': ?parentPidOrganizationId,
      'pidOrganizationName': pidOrganizationName,
    };
  }

  factory IndustrialPidOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return IndustrialPidOrganizationArgs(
      parentPidOrganizationId: map['parentPidOrganizationId'] == null ? null : pulumi.Output.create<String>(map['parentPidOrganizationId'] as String),
      pidOrganizationName: pulumi.Output.create<String>(map['pidOrganizationName'] as String),
    );
  }
}

