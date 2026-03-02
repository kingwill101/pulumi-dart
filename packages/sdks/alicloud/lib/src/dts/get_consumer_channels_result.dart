// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_consumer_channels_channel.dart';

/// Result data returned by getConsumerChannels.
class GetConsumerChannelsResult {
  final List<GetConsumerChannelsChannel> channels;
  final String dtsInstanceId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;

  /// Creates a new [GetConsumerChannelsResult].
  /// [channels] Required.
  /// [dtsInstanceId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  GetConsumerChannelsResult({
    required this.channels,
    required this.dtsInstanceId,
    required this.id,
    required this.ids,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channels': pulumi.Input.encodeList<GetConsumerChannelsChannel, Map<String, dynamic>>(channels, (value) => value.toMap()),
      'dtsInstanceId': dtsInstanceId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetConsumerChannelsResult.fromMap(Map<String, dynamic> map) {
    return GetConsumerChannelsResult(
      channels: pulumi.Input.decodeList<GetConsumerChannelsChannel>(map['channels'], (value) => GetConsumerChannelsChannel.fromMap((value as Map).cast<String, dynamic>())),
      dtsInstanceId: map['dtsInstanceId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

