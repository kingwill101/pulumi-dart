// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_transformer_transformer_config.dart';

/// Input properties used for looking up and filtering LogTransformer resources.
class LogTransformerState {
  /// Log group ARN to set the transformer for.
  final pulumi.Input<String>? logGroupArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the configuration of the transformer. You must include at least one configuration, and 20 at most. See `transformer_config` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfig>>? transformerConfigs;

  /// Creates a new [LogTransformerState].
  /// [logGroupArn] Log group ARN to set the transformer for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transformerConfigs] Specifies the configuration of the transformer. You must include at least one configuration, and 20 at most. See `transformer_config` below for details.
  LogTransformerState({
    pulumi.Output<String>? logGroupArn,
    pulumi.Output<String>? region,
    pulumi.Output<List<LogTransformerTransformerConfig>>? transformerConfigs,
  }) :
      logGroupArn = pulumi.Input.asOptionalInput<String>(logGroupArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      transformerConfigs = pulumi.Input.asOptionalInput<List<LogTransformerTransformerConfig>>(transformerConfigs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupArn': ?logGroupArn,
      'region': ?region,
      'transformerConfigs': ?pulumi.Input.mapOptionalInputValue<List<LogTransformerTransformerConfig>, List<Map<String, dynamic>>>(transformerConfigs, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LogTransformerState.fromMap(Map<String, dynamic> map) {
    return LogTransformerState(
      logGroupArn: map['logGroupArn'] == null ? null : pulumi.Output.create<String>(map['logGroupArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      transformerConfigs: map['transformerConfigs'] == null ? null : pulumi.Output.create<List<LogTransformerTransformerConfig>>(pulumi.Input.decodeList<LogTransformerTransformerConfig>(map['transformerConfigs'], (value) => LogTransformerTransformerConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

