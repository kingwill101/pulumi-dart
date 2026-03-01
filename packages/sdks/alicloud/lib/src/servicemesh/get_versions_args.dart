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
  /// A list of ASM versions. Its element formats as `<edition>:<version>`.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetVersionsArgs].
  /// [edition] The edition of the ASM instance. Valid values:
  /// [ids] A list of ASM versions. Its element formats as `<edition>:<version>`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetVersionsArgs({
    pulumi.Output<String>? edition,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
  }) :
      edition = pulumi.Input.asOptionalInput<String>(edition),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edition': ?edition,
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionsArgs(
      edition: map['edition'] == null ? null : pulumi.Output.create<String>(map['edition'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

