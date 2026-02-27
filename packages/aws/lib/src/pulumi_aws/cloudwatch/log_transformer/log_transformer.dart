import 'package:pulumi/pulumi.dart';
import '../log_transformer_transformer_config/log_transformer_transformer_config.dart';
import 'log_transformer_args.dart';

/// Resource for managing an AWS CloudWatch Logs Transformer.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs Transformer using the `log_group_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logTransformer:LogTransformer example arn:aws:logs:us-west-2:123456789012:log-group:example
/// ```
class LogTransformer extends CustomResource {
  /// Log group ARN to set the transformer for.
  late final Output<String> logGroupArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the configuration of the transformer. You must include at least one configuration, and 20 at most. See `transformer_config` below for details.
  late final Output<List<LogTransformerTransformerConfig>> transformerConfigs;

  LogTransformer(
    String name, {
    LogTransformerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logTransformer:LogTransformer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.logGroupArn = registerOutput<String>('logGroupArn');
    this.region = registerOutput<String>('region');
    this.transformerConfigs =
        registerOutput<List<LogTransformerTransformerConfig>>(
            'transformerConfigs');
  }
}
