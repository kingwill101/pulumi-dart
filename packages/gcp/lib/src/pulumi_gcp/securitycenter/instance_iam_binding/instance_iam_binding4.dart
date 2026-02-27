import 'package:pulumi/pulumi.dart';
import '../instance_iam_binding_condition/instance_iam_binding_condition4.dart';
import 'instance_iam_binding_args4.dart';

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
/// $ pulumi import gcp:securitycenter/instanceIamBinding:InstanceIamBinding default projects/{{project}}/locations/{{region}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/instanceIamBinding:InstanceIamBinding default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/instanceIamBinding:InstanceIamBinding default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/instanceIamBinding:InstanceIamBinding default {{name}}
/// ```
class InstanceIamBinding4 extends CustomResource {
  late final Output<InstanceIamBindingCondition4?> condition;
  late final Output<String> etag;
  late final Output<List<String>> members;

  /// The ID of the instance or a fully qualified identifier for the instance.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The region of the Data Fusion instance.
  late final Output<String> region;
  late final Output<String> role;

  InstanceIamBinding4(
    String name, {
    InstanceIamBindingArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/instanceIamBinding:InstanceIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<InstanceIamBindingCondition4?>('condition');
    this.etag = registerOutput<String>('etag');
    this.members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }
}
