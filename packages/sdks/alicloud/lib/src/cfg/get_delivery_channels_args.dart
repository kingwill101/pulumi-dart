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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<int>(status);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<int>(map['status'] as int),
    );
  }
}

