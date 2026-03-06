// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_get_simple_office_sites_get_simple_office_sites_args_doc}
/// Arguments for getSimpleOfficeSites.
/// {@endtemplate}
/// {@macro pulumi_eds_get_simple_office_sites_get_simple_office_sites_args_doc}
class GetSimpleOfficeSitesArgs {
  /// A list of Simple Office Site IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Simple Office Site name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Workspace State. Valid values: `REGISTERED`,`REGISTERING`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetSimpleOfficeSitesArgs].
  /// [ids] A list of Simple Office Site IDs.
  /// [nameRegex] A regex string to filter results by Simple Office Site name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] Workspace State. Valid values: `REGISTERED`,`REGISTERING`.
  const GetSimpleOfficeSitesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetSimpleOfficeSitesArgs.fromMap(Map<String, dynamic> map) {
    return GetSimpleOfficeSitesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

