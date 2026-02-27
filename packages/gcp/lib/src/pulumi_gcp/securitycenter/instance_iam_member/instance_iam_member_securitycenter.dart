import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_iam_member_condition/instance_iam_member_condition_securitycenter.dart';
import 'instance_iam_member_securitycenter_args.dart';

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
/// $ pulumi import gcp:securitycenter/instanceIamMember:InstanceIamMember default projects/{{project}}/locations/{{region}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/instanceIamMember:InstanceIamMember default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/instanceIamMember:InstanceIamMember default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/instanceIamMember:InstanceIamMember default {{name}}
/// ```
class InstanceIamMemberSecuritycenter extends pulumi.CustomResource {
  late final pulumi.Output<InstanceIamMemberConditionSecuritycenter?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> member;

  /// The ID of the instance or a fully qualified identifier for the instance.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The region of the Data Fusion instance.
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> role;

  InstanceIamMemberSecuritycenter(
    String name, {
    InstanceIamMemberSecuritycenterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/instanceIamMember:InstanceIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<InstanceIamMemberConditionSecuritycenter?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }
}
