// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_delivery_channels_channel.dart';

/// Result data returned by getDeliveryChannels.
class GetDeliveryChannelsResult {
  /// A list of Config Delivery Channels. Each element contains the following attributes:
  final List<GetDeliveryChannelsChannel> channels;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Config Delivery Channel IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of Config Delivery Channel names.
  final List<String> names;
  final String? outputFile;
  /// The status of the delivery channel.
  final int? status;

  /// Creates a new [GetDeliveryChannelsResult].
  /// [channels] A list of Config Delivery Channels. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Config Delivery Channel IDs.
  /// [nameRegex] Optional.
  /// [names] A list of Config Delivery Channel names.
  /// [outputFile] Optional.
  /// [status] The status of the delivery channel.
  const GetDeliveryChannelsResult({
    required this.channels,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channels': pulumi.Input.encodeList<GetDeliveryChannelsChannel, Map<String, dynamic>>(channels, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetDeliveryChannelsResult.fromMap(Map<String, dynamic> map) {
    return GetDeliveryChannelsResult(
      channels: pulumi.Input.decodeList<GetDeliveryChannelsChannel>(map['channels']!, (value) => GetDeliveryChannelsChannel.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

