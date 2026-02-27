import 'package:pulumi/pulumi.dart' as pulumi;
import '../input_security_group_whitelist_rule/input_security_group_whitelist_rule.dart';
import 'input_security_group_args.dart';

/// Resource for managing an AWS MediaLive InputSecurityGroup.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MediaLive InputSecurityGroup using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:medialive/inputSecurityGroup:InputSecurityGroup example 123456
/// ```
class InputSecurityGroup extends pulumi.CustomResource {
  /// ARN of the InputSecurityGroup.
  late final pulumi.Output<String> arn;

  /// The list of inputs currently using this InputSecurityGroup.
  late final pulumi.Output<List<String>> inputs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the InputSecurityGroup. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Whitelist rules. See Whitelist Rules for more details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<InputSecurityGroupWhitelistRule>>
      whitelistRules;

  InputSecurityGroup(
    String name, {
    InputSecurityGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:medialive/inputSecurityGroup:InputSecurityGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.inputs = registerOutput<List<String>>('inputs');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.whitelistRules =
        registerOutput<List<InputSecurityGroupWhitelistRule>>('whitelistRules');
  }
}
