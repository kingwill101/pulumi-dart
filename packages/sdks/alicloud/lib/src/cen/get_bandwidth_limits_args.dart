// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_bandwidth_limits_get_bandwidth_limits_args_doc}
/// Arguments for getBandwidthLimits.
/// {@endtemplate}
/// {@macro pulumi_cen_get_bandwidth_limits_get_bandwidth_limits_args_doc}
class GetBandwidthLimitsArgs {
  /// A list of CEN instances IDs.
  final pulumi.Input<List<String>>? instanceIds;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetBandwidthLimitsArgs].
  /// [instanceIds] A list of CEN instances IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetBandwidthLimitsArgs({
    pulumi.Output<List<String>>? instanceIds,
    pulumi.Output<String>? outputFile,
  }) :
      instanceIds = pulumi.Input.asOptionalInput<List<String>>(instanceIds),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceIds': ?instanceIds,
      'outputFile': ?outputFile,
    };
  }

  factory GetBandwidthLimitsArgs.fromMap(Map<String, dynamic> map) {
    return GetBandwidthLimitsArgs(
      instanceIds: map['instanceIds'] == null ? null : pulumi.Output.create<List<String>>((map['instanceIds'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

