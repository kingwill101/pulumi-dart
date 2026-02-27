import 'package:pulumi/pulumi.dart' as pulumi;
import 'intercept_deployment_args.dart';

/// A deployment represents a zonal intercept backend ready to accept
/// GENEVE-encapsulated traffic, e.g. a zonal instance group fronted by an
/// internal passthrough load balancer. Deployments are always part of a
/// global deployment group which represents a global intercept service.
///
///
///
/// ## Example Usage
///
/// ### Network Security Intercept Deployment Basic
///
///
///
///
/// ## Import
///
/// InterceptDeployment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/interceptDeployments/{{intercept_deployment_id}}`
///
/// * `{{project}}/{{location}}/{{intercept_deployment_id}}`
///
/// * `{{location}}/{{intercept_deployment_id}}`
///
/// When using the `pulumi import` command, InterceptDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptDeployment:InterceptDeployment default projects/{{project}}/locations/{{location}}/interceptDeployments/{{intercept_deployment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptDeployment:InterceptDeployment default {{project}}/{{location}}/{{intercept_deployment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/interceptDeployment:InterceptDeployment default {{location}}/{{intercept_deployment_id}}
/// ```
class InterceptDeployment extends pulumi.CustomResource {
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> createTime;

  /// User-provided description of the deployment.
  /// Used as additional context for the deployment.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The regional forwarding rule that fronts the interceptors, for example:
  /// `projects/123456789/regions/us-central1/forwardingRules/my-rule`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String> forwardingRule;

  /// The deployment group that this deployment is a part of, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  late final pulumi.Output<String> interceptDeploymentGroup;

  /// The ID to use for the new deployment, which will become the final
  /// component of the deployment's resource name.
  late final pulumi.Output<String> interceptDeploymentId;

  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The cloud location of the deployment, e.g. `us-central1-a` or `asia-south1-b`.
  late final pulumi.Output<String> location;

  /// The resource name of this deployment, for example:
  /// `projects/123456789/locations/us-central1-a/interceptDeployments/my-dep`.
  /// See https://google.aip.dev/122 for more details.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This part of the normal
  /// operation (e.g. linking a new association to the parent group).
  /// See https://google.aip.dev/128.
  late final pulumi.Output<bool> reconciling;

  /// The current state of the deployment.
  /// See https://google.aip.dev/216.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// CREATING
  /// DELETING
  /// OUT_OF_SYNC
  /// DELETE_FAILED
  late final pulumi.Output<String> state;

  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  late final pulumi.Output<String> updateTime;

  InterceptDeployment(
    String name, {
    InterceptDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/interceptDeployment:InterceptDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.forwardingRule = registerOutput<String>('forwardingRule');
    this.interceptDeploymentGroup =
        registerOutput<String>('interceptDeploymentGroup');
    this.interceptDeploymentId =
        registerOutput<String>('interceptDeploymentId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
