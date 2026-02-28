import 'package:pulumi/pulumi.dart' as pulumi;
import 'flowhook_args.dart';

/// Represents a sharedflow attachment to a flowhook point.
///
///
/// To get more information about Flowhook, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.flowhooks#FlowHook)
/// * How-to Guides
/// * [organizations.environments.flowhooks](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.flowhooks#FlowHook)
///
/// ## Import
///
/// Flowhook can be imported using any of these accepted formats:
///
/// * `organizations/{{org_id}}/environments/{{environment}}/flowhooks/{{flow_hook_point}}`
///
/// * `{{org_id}}/{{environment}}/{{flow_hook_point}}`
///
/// When using the `pulumi import` command, Flowhook can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/flowhook:Flowhook default organizations/{{org_id}}/environments/{{environment}}/flowhooks/{{flow_hook_point}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/flowhook:Flowhook default {{org_id}}/{{environment}}/{{flow_hook_point}}
/// ```
class Flowhook extends pulumi.CustomResource {
  /// Flag that specifies whether execution should continue if the flow hook throws an exception. Set to true to continue execution. Set to false to stop execution if the flow hook throws an exception. Defaults to true.
  late final pulumi.Output<bool?> continueOnError;
  /// Description of the flow hook.
  late final pulumi.Output<String?> description;
  /// The resource ID of the environment.
  late final pulumi.Output<String> environment;
  /// Where in the API call flow the flow hook is invoked. Must be one of PreProxyFlowHook, PostProxyFlowHook, PreTargetFlowHook, or PostTargetFlowHook.
  late final pulumi.Output<String> flowHookPoint;
  /// The Apigee Organization associated with the environment
  late final pulumi.Output<String> orgId;
  /// Id of the Sharedflow attaching to a flowhook point.
  late final pulumi.Output<String> sharedflow;

  /// Creates a new [Flowhook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Flowhook]. {@macro pulumi_apigee_flowhook_flowhook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Flowhook(
    String name, {
    FlowhookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/flowhook:Flowhook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.continueOnError = registerOutput<bool?>('continueOnError');
    this.description = registerOutput<String?>('description');
    this.environment = registerOutput<String>('environment');
    this.flowHookPoint = registerOutput<String>('flowHookPoint');
    this.orgId = registerOutput<String>('orgId');
    this.sharedflow = registerOutput<String>('sharedflow');
  }
}
