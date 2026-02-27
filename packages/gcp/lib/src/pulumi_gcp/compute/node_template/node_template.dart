import 'package:pulumi/pulumi.dart' as pulumi;
import '../node_template_accelerator/node_template_accelerator.dart';
import '../node_template_disk/node_template_disk.dart';
import '../node_template_node_type_flexibility/node_template_node_type_flexibility.dart';
import '../node_template_server_binding/node_template_server_binding.dart';
import 'node_template_args.dart';

/// Represents a NodeTemplate resource. Node templates specify properties
/// for creating sole-tenant nodes, such as node type, vCPU and memory
/// requirements, node affinity labels, and region.
///
///
/// To get more information about NodeTemplate, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/nodeTemplates)
/// * How-to Guides
/// * [Sole-Tenant Nodes](https://cloud.google.com/compute/docs/nodes/)
///
/// ## Example Usage
///
/// ### Node Template Basic
///
///
///
/// ### Node Template Server Binding
///
///
///
/// ### Node Template Accelerators
///
///
///
/// ### Node Template Disks
///
///
///
///
/// ## Import
///
/// NodeTemplate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/nodeTemplates/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, NodeTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/nodeTemplate:NodeTemplate default projects/{{project}}/regions/{{region}}/nodeTemplates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/nodeTemplate:NodeTemplate default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/nodeTemplate:NodeTemplate default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/nodeTemplate:NodeTemplate default {{name}}
/// ```
class NodeTemplate extends pulumi.CustomResource {
  /// List of the type and count of accelerator cards attached to the
  /// node template
  /// Structure is documented below.
  late final pulumi.Output<List<NodeTemplateAccelerator>?> accelerators;

  /// CPU overcommit.
  /// Default value is `NONE`.
  /// Possible values are: `ENABLED`, `NONE`.
  late final pulumi.Output<String?> cpuOvercommitType;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional textual description of the resource.
  late final pulumi.Output<String?> description;

  /// List of the type, size and count of disks attached to the
  /// node template
  /// Structure is documented below.
  late final pulumi.Output<List<NodeTemplateDisk>?> disks;

  /// Name of the resource.
  late final pulumi.Output<String> name;

  /// Labels to use for node affinity, which will be used in
  /// instance scheduling.
  late final pulumi.Output<Map<String, String>?> nodeAffinityLabels;

  /// Node type to use for nodes group that are created from this template.
  /// Only one of nodeTypeFlexibility and nodeType can be specified.
  late final pulumi.Output<String?> nodeType;

  /// Flexible properties for the desired node type. Node groups that
  /// use this node template will create nodes of a type that matches
  /// these properties. Only one of nodeTypeFlexibility and nodeType can
  /// be specified.
  /// Structure is documented below.
  late final pulumi.Output<NodeTemplateNodeTypeFlexibility?>
      nodeTypeFlexibility;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Region where nodes using the node template will be created.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// The server binding policy for nodes using this template. Determines
  /// where the nodes should restart following a maintenance event.
  /// Structure is documented below.
  late final pulumi.Output<NodeTemplateServerBinding> serverBinding;

  NodeTemplate(
    String name, {
    NodeTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/nodeTemplate:NodeTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accelerators =
        registerOutput<List<NodeTemplateAccelerator>?>('accelerators');
    this.cpuOvercommitType = registerOutput<String?>('cpuOvercommitType');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.disks = registerOutput<List<NodeTemplateDisk>?>('disks');
    this.name = registerOutput<String>('name');
    this.nodeAffinityLabels =
        registerOutput<Map<String, String>?>('nodeAffinityLabels');
    this.nodeType = registerOutput<String?>('nodeType');
    this.nodeTypeFlexibility =
        registerOutput<NodeTemplateNodeTypeFlexibility?>('nodeTypeFlexibility');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.serverBinding =
        registerOutput<NodeTemplateServerBinding>('serverBinding');
  }
}
