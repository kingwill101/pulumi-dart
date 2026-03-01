// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudstoragegateway_get_express_syncs_get_express_syncs_args_doc}
/// Arguments for getExpressSyncs.
/// {@endtemplate}
/// {@macro pulumi_cloudstoragegateway_get_express_syncs_get_express_syncs_args_doc}
class GetExpressSyncsArgs {
  /// A list of Express Sync IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Express Sync name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetExpressSyncsArgs].
  /// [ids] A list of Express Sync IDs.
  /// [nameRegex] A regex string to filter results by Express Sync name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetExpressSyncsArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetExpressSyncsArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressSyncsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

