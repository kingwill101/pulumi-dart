// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasegateway_get_gateways_get_gateways_args_doc}
/// Arguments for getGateways.
/// {@endtemplate}
/// {@macro pulumi_databasegateway_get_gateways_get_gateways_args_doc}
class GetGatewaysArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Gateway IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Gateway name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The search key.
  final pulumi.Input<String>? searchKey;
  /// The status of gateway. Valid values: `EXCEPTION`, `NEW`, `RUNNING`, `STOPPED`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetGatewaysArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Gateway IDs.
  /// [nameRegex] A regex string to filter results by Gateway name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [searchKey] The search key.
  /// [status] The status of gateway. Valid values: `EXCEPTION`, `NEW`, `RUNNING`, `STOPPED`.
  GetGatewaysArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.searchKey,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'searchKey': ?searchKey,
      'status': ?status,
    };
  }

  factory GetGatewaysArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewaysArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      searchKey: map['searchKey'] == null ? null : (map['searchKey']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

