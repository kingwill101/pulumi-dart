import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewallpolicy_args.dart';
import 'google_cloud_recaptchaenterprise_v1_firewall_action_response.dart';

/// Creates a new FirewallPolicy, specifying conditions at which reCAPTCHA Enterprise actions can be executed. A project may have a maximum of 1000 policies.
class Firewallpolicy extends pulumi.CustomResource {
  /// Optional. The actions that the caller should take regarding user access. There should be at most one terminal action. A terminal action is any action that forces a response, such as `AllowAction`, `BlockAction` or `SubstituteAction`. Zero or more non-terminal actions such as `SetHeader` might be specified. A single policy can contain up to 16 actions.
  late final pulumi.Output<
    List<GoogleCloudRecaptchaenterpriseV1FirewallActionResponse>
  >
  actions;

  /// Optional. A CEL (Common Expression Language) conditional expression that specifies if this policy applies to an incoming user request. If this condition evaluates to true and the requested path matched the path pattern, the associated actions should be executed by the caller. The condition string is checked for CEL syntax correctness on creation. For more information, see the [CEL spec](https://github.com/google/cel-spec) and its [language definition](https://github.com/google/cel-spec/blob/master/doc/langdef.md). A condition has a max length of 500 characters.
  late final pulumi.Output<String> condition;

  /// Optional. A description of what this policy aims to achieve, for convenience purposes. The description can at most include 256 UTF-8 characters.
  late final pulumi.Output<String> description;

  /// Identifier. The resource name for the FirewallPolicy in the format `projects/{project}/firewallpolicies/{firewallpolicy}`.
  late final pulumi.Output<String> name;

  /// Optional. The path for which this policy applies, specified as a glob pattern. For more information on glob, see the [manual page](https://man7.org/linux/man-pages/man7/glob.7.html). A path has a max length of 200 characters.
  late final pulumi.Output<String> path;
  late final pulumi.Output<String> project;

  /// Creates a new [Firewallpolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Firewallpolicy]. {@macro pulumi_recaptchaenterprise_v1_firewallpolicy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Firewallpolicy(
    String name, {
    FirewallpolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:recaptchaenterprise/v1:Firewallpolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.actions =
        registerOutput<
          List<GoogleCloudRecaptchaenterpriseV1FirewallActionResponse>
        >('actions');
    this.condition = registerOutput<String>('condition');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.path = registerOutput<String>('path');
    this.project = registerOutput<String>('project');
  }
}
