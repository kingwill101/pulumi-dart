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
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> strategyMode,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      strategyMode = pulumi.Input.asInput<String>(strategyMode);

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
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      strategyMode: pulumi.Output.create<String>(map['strategyMode'] as String),
    );
  }
}

