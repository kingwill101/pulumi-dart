// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_log_configs_get_log_configs_args_doc}
/// Arguments for getLogConfigs.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_log_configs_get_log_configs_args_doc}
class GetLogConfigsArgs {
  /// A list of Log Config IDs.
  final pulumi.Input<List<String>>? ids;
  /// The type the of log. Valid values: `PROVIDER`.
  final pulumi.Input<String>? logType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetLogConfigsArgs].
  /// [ids] A list of Log Config IDs.
  /// [logType] The type the of log. Valid values: `PROVIDER`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetLogConfigsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? logType,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      logType = pulumi.Input.asOptionalInput<String>(logType),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'logType': ?logType,
      'outputFile': ?outputFile,
    };
  }

  factory GetLogConfigsArgs.fromMap(Map<String, dynamic> map) {
    return GetLogConfigsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      logType: map['logType'] == null ? null : pulumi.Output.create<String>(map['logType'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

