// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasefilesystem_get_auto_snap_shot_policies_get_auto_snap_shot_policies_args_doc}
/// Arguments for getAutoSnapShotPolicies.
/// {@endtemplate}
/// {@macro pulumi_databasefilesystem_get_auto_snap_shot_policies_get_auto_snap_shot_policies_args_doc}
class GetAutoSnapShotPoliciesArgs {
  /// A list of Auto Snap Shot Policy IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Auto Snap Shot Policy name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetAutoSnapShotPoliciesArgs].
  /// [ids] A list of Auto Snap Shot Policy IDs.
  /// [nameRegex] A regex string to filter results by Auto Snap Shot Policy name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetAutoSnapShotPoliciesArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetAutoSnapShotPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoSnapShotPoliciesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
    );
  }
}

