import 'package:pulumi/pulumi.dart' as pulumi;
import '../code_signing_config_allowed_publishers/code_signing_config_allowed_publishers.dart';
import '../code_signing_config_policies/code_signing_config_policies.dart';
import 'code_signing_config_args.dart';

/// Manages an AWS Lambda Code Signing Config. Use this resource to define allowed signing profiles and code-signing validation policies for Lambda functions to ensure code integrity and authenticity.
///
/// For information about Lambda code signing configurations and how to use them, see [configuring code signing for Lambda functions](https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Warning Only Configuration
///
///
///
/// ### Multiple Environment Configuration
///
///
///
/// ## Import
///
/// For backwards compatibility, the following legacy `pulumi import` command is also supported:
///
/// ```sh
/// $ pulumi import aws:lambda/codeSigningConfig:CodeSigningConfig example arn:aws:lambda:us-west-2:123456789012:code-signing-config:csc-0f6c334abcdea4d8b
/// ```
class CodeSigningConfig extends pulumi.CustomResource {
  /// Configuration block of allowed publishers as signing profiles for this code signing configuration. See below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<CodeSigningConfigAllowedPublishers>
      allowedPublishers;

  /// ARN of the code signing configuration.
  late final pulumi.Output<String> arn;

  /// Unique identifier for the code signing configuration.
  late final pulumi.Output<String> configId;

  /// Descriptive name for this code signing configuration.
  late final pulumi.Output<String?> description;

  /// Date and time that the code signing configuration was last modified.
  late final pulumi.Output<String> lastModified;

  /// Configuration block of code signing policies that define the actions to take if the validation checks fail. See below.
  late final pulumi.Output<CodeSigningConfigPolicies> policies;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  CodeSigningConfig(
    String name, {
    CodeSigningConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/codeSigningConfig:CodeSigningConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedPublishers =
        registerOutput<CodeSigningConfigAllowedPublishers>('allowedPublishers');
    this.arn = registerOutput<String>('arn');
    this.configId = registerOutput<String>('configId');
    this.description = registerOutput<String?>('description');
    this.lastModified = registerOutput<String>('lastModified');
    this.policies = registerOutput<CodeSigningConfigPolicies>('policies');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
