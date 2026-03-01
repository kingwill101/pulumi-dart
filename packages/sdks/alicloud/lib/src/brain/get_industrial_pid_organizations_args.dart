// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_brain_get_industrial_pid_organizations_get_industrial_pid_organizations_args_doc}
/// Arguments for getIndustrialPidOrganizations.
/// {@endtemplate}
/// {@macro pulumi_brain_get_industrial_pid_organizations_get_industrial_pid_organizations_args_doc}
class GetIndustrialPidOrganizationsArgs {
  /// A list of Pid Organization IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Pid Organization name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The parent organization id.
  final pulumi.Input<String>? parentOrganizationId;

  /// Creates a new [GetIndustrialPidOrganizationsArgs].
  /// [ids] A list of Pid Organization IDs.
  /// [nameRegex] A regex string to filter results by Pid Organization name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [parentOrganizationId] The parent organization id.
  GetIndustrialPidOrganizationsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? parentOrganizationId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      parentOrganizationId = pulumi.Input.asOptionalInput<String>(parentOrganizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'parentOrganizationId': ?parentOrganizationId,
    };
  }

  factory GetIndustrialPidOrganizationsArgs.fromMap(Map<String, dynamic> map) {
    return GetIndustrialPidOrganizationsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      parentOrganizationId: map['parentOrganizationId'] == null ? null : pulumi.Output.create<String>(map['parentOrganizationId'] as String),
    );
  }
}

