// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_folder_sink_args_doc}
/// Arguments for getFolderSink.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_folder_sink_args_doc}
class GetFolderSinkArgs {
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> sinkId;

  /// Creates a new [GetFolderSinkArgs].
  /// [folderId] Required.
  /// [sinkId] Required.
  GetFolderSinkArgs({
    required String folderId,
    required String sinkId,
  })  : folderId = pulumi.Input.asInput<String>(folderId),
        sinkId = pulumi.Input.asInput<String>(sinkId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    map['sinkId'] = sinkId;
    return map;
  }

  factory GetFolderSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderSinkArgs(
      folderId: map['folderId'] as String,
      sinkId: map['sinkId'] as String,
    );
  }
}
