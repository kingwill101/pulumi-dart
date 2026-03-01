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
  GetListenersArgs({
    required pulumi.Output<String> acceleratorId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      acceleratorId: pulumi.Output.create<String>(map['acceleratorId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

