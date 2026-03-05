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
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

