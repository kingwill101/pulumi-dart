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
  GetExpressSyncsArgs({this.ids, this.nameRegex, this.outputFile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetExpressSyncsArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressSyncsArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
