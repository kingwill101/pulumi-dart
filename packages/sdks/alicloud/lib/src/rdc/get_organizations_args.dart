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
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.realPk,
  });

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
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      realPk: map['realPk'] == null ? null : (map['realPk'] as String).input(),
    );
  }
}

