import 'package:pulumi/pulumi.dart';
import '../guardrail_version_timeouts/guardrail_version_timeouts.dart';
import 'guardrail_version_args.dart';

/// Resource for managing an AWS Bedrock Guardrail Version.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Bedrock Guardrail Version using using a comma-delimited string of `guardrail_arn` and `version`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/guardrailVersion:GuardrailVersion example arn:aws:bedrock:us-west-2:123456789012:guardrail-id-12345678,1
/// ```
class GuardrailVersion extends CustomResource {
  /// Description of the Guardrail version.
  late final Output<String?> description;

  /// Guardrail ARN.
  ///
  /// The following arguments are optional:
  late final Output<String> guardrailArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether to retain the old version of a previously deployed Guardrail. Default is `false`
  late final Output<bool?> skipDestroy;
  late final Output<GuardrailVersionTimeouts?> timeouts;

  /// Guardrail version.
  late final Output<String> version;

  GuardrailVersion(
    String name, {
    GuardrailVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/guardrailVersion:GuardrailVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.guardrailArn = registerOutput<String>('guardrailArn');
    this.region = registerOutput<String>('region');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.timeouts = registerOutput<GuardrailVersionTimeouts?>('timeouts');
    this.version = registerOutput<String>('version');
  }
}
