// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicemesh_get_versions_get_versions_args_doc}
/// Arguments for getVersions.
/// {@endtemplate}
/// {@macro pulumi_servicemesh_get_versions_get_versions_args_doc}
class GetVersionsArgs {
  /// The edition of the ASM instance. Valid values:
  /// - Default: Standard Edition
  /// - Pro: Professional Edition
  final pulumi.Input<String>? edition;
  /// A list of ASM versions. Its element formats as `&lt;edition&gt;:&lt;version&gt;`.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetVersionsArgs].
  /// [edition] The edition of the ASM instance. Valid values:
  /// [ids] A list of ASM versions. Its element formats as `&lt;edition&gt;:&lt;version&gt;`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetVersionsArgs({
    this.edition,
    this.ids,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edition': ?edition,
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionsArgs(
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

