// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_get_aggregators_get_aggregators_args_doc}
/// Arguments for getAggregators.
/// {@endtemplate}
/// {@macro pulumi_cfg_get_aggregators_get_aggregators_args_doc}
class GetAggregatorsArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of aggregator ids.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by aggregator name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid Values:  `0`: creating `1`: normal `2`: deleting.
  final pulumi.Input<String>? status;

  /// Creates a new [GetAggregatorsArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of aggregator ids.
  /// [nameRegex] A regex string to filter results by aggregator name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid Values:  `0`: creating `1`: normal `2`: deleting.
  GetAggregatorsArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAggregatorsArgs.fromMap(Map<String, dynamic> map) {
    return GetAggregatorsArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

