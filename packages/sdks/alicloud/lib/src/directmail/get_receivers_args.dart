// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directmail_get_receivers_get_receivers_args_doc}
/// Arguments for getReceivers.
/// {@endtemplate}
/// {@macro pulumi_directmail_get_receivers_get_receivers_args_doc}
class GetReceiversArgs {
  /// A list of Receivers IDs.
  final pulumi.Input<List<String>>? ids;
  /// The key word.
  final pulumi.Input<String>? keyWord;
  /// A regex string to filter results by Receivers name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid Values: `0` means uploading, `1` means upload completed.
  final pulumi.Input<int>? status;

  /// Creates a new [GetReceiversArgs].
  /// [ids] A list of Receivers IDs.
  /// [keyWord] The key word.
  /// [nameRegex] A regex string to filter results by Receivers name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid Values: `0` means uploading, `1` means upload completed.
  GetReceiversArgs({
    this.ids,
    this.keyWord,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'keyWord': ?keyWord,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetReceiversArgs.fromMap(Map<String, dynamic> map) {
    return GetReceiversArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keyWord: (() { final guardedValue = map['keyWord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

