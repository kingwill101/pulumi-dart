// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dts_get_consumer_channels_get_consumer_channels_args_doc}
/// Arguments for getConsumerChannels.
/// {@endtemplate}
/// {@macro pulumi_dts_get_consumer_channels_get_consumer_channels_args_doc}
class GetConsumerChannelsArgs {
  /// Subscription instance ID.
  final pulumi.Input<String> dtsInstanceId;
  /// A list of Consumer Channel IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetConsumerChannelsArgs].
  /// [dtsInstanceId] Subscription instance ID.
  /// [ids] A list of Consumer Channel IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetConsumerChannelsArgs({
    required String dtsInstanceId,
    List<String>? ids,
    String? outputFile,
  }) :
      dtsInstanceId = pulumi.Input.asInput<String>(dtsInstanceId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dtsInstanceId': dtsInstanceId,
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetConsumerChannelsArgs.fromMap(Map<String, dynamic> map) {
    return GetConsumerChannelsArgs(
      dtsInstanceId: map['dtsInstanceId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

