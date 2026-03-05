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
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.parentOrganizationId,
  });

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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentOrganizationId: (() { final guardedValue = map['parentOrganizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

