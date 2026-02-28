// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_transformer_transformer_config.dart';

/// {@template pulumi_cloudwatch_log_transformer_log_transformer_args_doc}
/// The set of arguments for LogTransformer.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_log_transformer_log_transformer_args_doc}
class LogTransformerArgs {
  /// Log group ARN to set the transformer for.
  final pulumi.Input<String> logGroupArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies the configuration of the transformer. You must include at least one configuration, and 20 at most. See `transformer_config` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfig>> transformerConfigs;

  /// Creates a new [LogTransformerArgs].
  /// [logGroupArn] Log group ARN to set the transformer for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transformerConfigs] Specifies the configuration of the transformer. You must include at least one configuration, and 20 at most. See `transformer_config` below for details.
  LogTransformerArgs({
    required String logGroupArn,
    String? region,
    required List<LogTransformerTransformerConfig> transformerConfigs,
  })  : logGroupArn = pulumi.Input.asInput<String>(logGroupArn),
        region = pulumi.Input.asOptionalInput<String>(region),
        transformerConfigs =
            pulumi.Input.asInput<List<LogTransformerTransformerConfig>>(
                transformerConfigs);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logGroupArn'] = logGroupArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['transformerConfigs'] = pulumi.Input.mapInputValue<
            List<LogTransformerTransformerConfig>, List<Map<String, dynamic>>>(
        transformerConfigs,
        (value) => pulumi.Input.encodeList<LogTransformerTransformerConfig,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory LogTransformerArgs.fromMap(Map<String, dynamic> map) {
    return LogTransformerArgs(
      logGroupArn: map['logGroupArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      transformerConfigs:
          pulumi.Input.decodeList<LogTransformerTransformerConfig>(
              map['transformerConfigs'],
              (value) => LogTransformerTransformerConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
