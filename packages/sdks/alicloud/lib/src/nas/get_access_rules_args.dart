// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_get_access_rules_get_access_rules_args_doc}
/// Arguments for getAccessRules.
/// {@endtemplate}
/// {@macro pulumi_nas_get_access_rules_get_access_rules_args_doc}
class GetAccessRulesArgs {
  /// Filter results by a specific AccessGroupName.
  final pulumi.Input<String> accessGroupName;
  /// A list of rule IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Filter results by a specific RWAccess.
  final pulumi.Input<String>? rwAccess;
  /// Filter results by a specific SourceCidrIp.
  final pulumi.Input<String>? sourceCidrIp;
  /// Filter results by a specific UserAccess.
  final pulumi.Input<String>? userAccess;

  /// Creates a new [GetAccessRulesArgs].
  /// [accessGroupName] Filter results by a specific AccessGroupName.
  /// [ids] A list of rule IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [rwAccess] Filter results by a specific RWAccess.
  /// [sourceCidrIp] Filter results by a specific SourceCidrIp.
  /// [userAccess] Filter results by a specific UserAccess.
  GetAccessRulesArgs({
    required this.accessGroupName,
    this.ids,
    this.outputFile,
    this.rwAccess,
    this.sourceCidrIp,
    this.userAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': accessGroupName,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'rwAccess': ?rwAccess,
      'sourceCidrIp': ?sourceCidrIp,
      'userAccess': ?userAccess,
    };
  }

  factory GetAccessRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessRulesArgs(
      accessGroupName: pulumi.Input.fromValue(map['accessGroupName'] as String),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rwAccess: (() { final guardedValue = map['rwAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceCidrIp: (() { final guardedValue = map['sourceCidrIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAccess: (() { final guardedValue = map['userAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

