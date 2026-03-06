// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_get_deliveries_get_deliveries_args_doc}
/// Arguments for getDeliveries.
/// {@endtemplate}
/// {@macro pulumi_cfg_get_deliveries_get_deliveries_args_doc}
class GetDeliveriesArgs {
  /// A list of Delivery IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by delivery channel name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the delivery method. Valid values: `0`: The delivery method is disabled. `1`: The delivery destination is enabled.
  final pulumi.Input<int>? status;

  /// Creates a new [GetDeliveriesArgs].
  /// [ids] A list of Delivery IDs.
  /// [nameRegex] A regex string to filter results by delivery channel name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the delivery method. Valid values: `0`: The delivery method is disabled. `1`: The delivery destination is enabled.
  const GetDeliveriesArgs({
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

  factory GetDeliveriesArgs.fromMap(Map<String, dynamic> map) {
    return GetDeliveriesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

