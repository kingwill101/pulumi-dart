// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_get_delivery_channels_get_delivery_channels_args_doc}
/// Arguments for getDeliveryChannels.
/// {@endtemplate}
/// {@macro pulumi_cfg_get_delivery_channels_get_delivery_channels_args_doc}
class GetDeliveryChannelsArgs {
  /// A list of Config Delivery Channel IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by delivery channel name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the config delivery channel. Valid values `0`: Disable delivery channel, `1`: Enable delivery channel.
  final pulumi.Input<int>? status;

  /// Creates a new [GetDeliveryChannelsArgs].
  /// [ids] A list of Config Delivery Channel IDs.
  /// [nameRegex] A regex string to filter results by delivery channel name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the config delivery channel. Valid values `0`: Disable delivery channel, `1`: Enable delivery channel.
  GetDeliveryChannelsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetDeliveryChannelsArgs.fromMap(Map<String, dynamic> map) {
    return GetDeliveryChannelsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

