// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_get_lifecycle_policies_get_lifecycle_policies_args_doc}
/// Arguments for getLifecyclePolicies.
/// {@endtemplate}
/// {@macro pulumi_nas_get_lifecycle_policies_get_lifecycle_policies_args_doc}
class GetLifecyclePoliciesArgs {
  /// The ID of the file system.
  final pulumi.Input<String> fileSystemId;
  /// A list of Lifecycle Policy IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Lifecycle Policy name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetLifecyclePoliciesArgs].
  /// [fileSystemId] The ID of the file system.
  /// [ids] A list of Lifecycle Policy IDs.
  /// [nameRegex] A regex string to filter results by Lifecycle Policy name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetLifecyclePoliciesArgs({
    required this.fileSystemId,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetLifecyclePoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetLifecyclePoliciesArgs(
      fileSystemId: (map['fileSystemId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

