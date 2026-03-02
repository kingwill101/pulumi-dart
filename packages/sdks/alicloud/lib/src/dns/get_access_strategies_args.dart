// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_access_strategies_get_access_strategies_args_doc}
/// Arguments for getAccessStrategies.
/// {@endtemplate}
/// {@macro pulumi_dns_get_access_strategies_get_access_strategies_args_doc}
class GetAccessStrategiesArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Access Strategy IDs.
  final pulumi.Input<List<String>>? ids;
  /// The Id of the associated instance.
  final pulumi.Input<String> instanceId;
  /// The lang.
  final pulumi.Input<String>? lang;
  /// A regex string to filter results by Access Strategy name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The type of the access policy. Valid values:
  /// - `GEO`: based on geographic location.
  /// - `LATENCY`: Based on delay.
  final pulumi.Input<String> strategyMode;

  /// Creates a new [GetAccessStrategiesArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Access Strategy IDs.
  /// [instanceId] The Id of the associated instance.
  /// [lang] The lang.
  /// [nameRegex] A regex string to filter results by Access Strategy name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [strategyMode] The type of the access policy. Valid values:
  GetAccessStrategiesArgs({
    this.enableDetails,
    this.ids,
    required this.instanceId,
    this.lang,
    this.nameRegex,
    this.outputFile,
    required this.strategyMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'instanceId': instanceId,
      'lang': ?lang,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'strategyMode': strategyMode,
    };
  }

  factory GetAccessStrategiesArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessStrategiesArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      strategyMode: (map['strategyMode'] as String).input(),
    );
  }
}

