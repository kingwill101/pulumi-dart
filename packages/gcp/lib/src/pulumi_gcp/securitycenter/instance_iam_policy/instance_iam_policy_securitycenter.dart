import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_policy_securitycenter_args.dart';

/// Represents a Data Fusion instance.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/data-fusion/docs/reference/rest/v1beta1/projects.locations.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/data-fusion/docs/)
///
/// ## Example Usage
///
/// ### Data Fusion Instance Basic
///
///
///
/// ### Data Fusion Instance Full
///
///
///
/// ### Data Fusion Instance Psc
///
///
///
/// ### Data Fusion Instance Cmek
///
///
///
/// ### Data Fusion Instance Enterprise
///
///
///
/// ### Data Fusion Instance Event
///
///
///
/// ### Data Fusion Instance Zone
///
///
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/instances/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/instanceIamPolicy:InstanceIamPolicy default projects/{{project}}/locations/{{region}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/instanceIamPolicy:InstanceIamPolicy default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/instanceIamPolicy:InstanceIamPolicy default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/instanceIamPolicy:InstanceIamPolicy default {{name}}
/// ```
class InstanceIamPolicySecuritycenter extends pulumi.CustomResource {
  late final pulumi.Output<String> etag;

  /// The ID of the instance or a fully qualified identifier for the instance.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The region of the Data Fusion instance.
  late final pulumi.Output<String> region;

  InstanceIamPolicySecuritycenter(
    String name, {
    InstanceIamPolicySecuritycenterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/instanceIamPolicy:InstanceIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
