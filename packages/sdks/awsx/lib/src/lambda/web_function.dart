import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_function_args.dart';
import 'package:pulumi_aws/cloudwatch.dart' as pulumi_aws_cloudwatch;

/// A Lambda Web Function and its current immutable revision.
class WebFunction extends pulumi.ComponentResource {
  /// Execution role used by the current revision.
  late final pulumi.Output<String?> executionRoleArn;
  /// ARN of the function.
  late final pulumi.Output<String?> functionArn;
  /// Name of the function.
  late final pulumi.Output<String?> functionName;
  /// Central log group created in the home Region.
  late final pulumi.Output<pulumi_aws_cloudwatch.LogGroup?> logGroup;
  /// ARN of the current revision.
  late final pulumi.Output<String?> revisionArn;
  /// Identifier of the current revision. Pass it to an endpoint to route traffic explicitly.
  late final pulumi.Output<String?> revisionId;

  /// Creates a new [WebFunction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebFunction]. {@macro pulumi_lambda_web_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebFunction(
    String name, {
    WebFunctionArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'awsx:lambda:WebFunction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.ComponentResourceOptions(version: '3.15.0').merge(options),
          remote: true,
        ) {
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    functionArn = registerOutput<String?>('functionArn');
    functionName = registerOutput<String?>('functionName');
    logGroup = registerOutput<pulumi_aws_cloudwatch.LogGroup?>('logGroup');
    revisionArn = registerOutput<String?>('revisionArn');
    revisionId = registerOutput<String?>('revisionId');
  }
}
