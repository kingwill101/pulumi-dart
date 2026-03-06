// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_listeners_get_listeners_args_doc}
/// Arguments for getListeners.
/// {@endtemplate}
/// {@macro pulumi_ga_get_listeners_get_listeners_args_doc}
class GetListenersArgs {
  /// The accelerator id.
  final pulumi.Input<String> acceleratorId;
  /// A list of Listener IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Listener name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the listener. Valid values: `active`, `configuring`, `creating`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetListenersArgs].
  /// [acceleratorId] The accelerator id.
  /// [ids] A list of Listener IDs.
  /// [nameRegex] A regex string to filter results by Listener name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the listener. Valid values: `active`, `configuring`, `creating`.
  const GetListenersArgs({
    required this.acceleratorId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetListenersArgs.fromMap(Map<String, dynamic> map) {
    return GetListenersArgs(
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

