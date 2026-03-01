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
    required String accessGroupName,
    List<String>? ids,
    String? outputFile,
    String? rwAccess,
    String? sourceCidrIp,
    String? userAccess,
  }) :
      accessGroupName = pulumi.Input.asInput<String>(accessGroupName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      rwAccess = pulumi.Input.asOptionalInput<String>(rwAccess),
      sourceCidrIp = pulumi.Input.asOptionalInput<String>(sourceCidrIp),
      userAccess = pulumi.Input.asOptionalInput<String>(userAccess);

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
      accessGroupName: map['accessGroupName'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      rwAccess: map['rwAccess'] == null ? null : map['rwAccess'] as String,
      sourceCidrIp: map['sourceCidrIp'] == null ? null : map['sourceCidrIp'] as String,
      userAccess: map['userAccess'] == null ? null : map['userAccess'] as String,
    );
  }
}

