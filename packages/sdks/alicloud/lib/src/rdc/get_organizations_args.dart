// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rdc_get_organizations_get_organizations_args_doc}
/// Arguments for getOrganizations.
/// {@endtemplate}
/// {@macro pulumi_rdc_get_organizations_get_organizations_args_doc}
class GetOrganizationsArgs {
  /// A list of Organization IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Organization name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// User pk, not required, only required when the ak used by the calling interface is inconsistent with the user pk
  final pulumi.Input<String>? realPk;

  /// Creates a new [GetOrganizationsArgs].
  /// [ids] A list of Organization IDs.
  /// [nameRegex] A regex string to filter results by Organization name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [realPk] User pk, not required, only required when the ak used by the calling interface is inconsistent with the user pk
  GetOrganizationsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? realPk,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      realPk = pulumi.Input.asOptionalInput<String>(realPk);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'realPk': ?realPk,
    };
  }

  factory GetOrganizationsArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      realPk: map['realPk'] == null ? null : pulumi.Output.create<String>(map['realPk'] as String),
    );
  }
}

