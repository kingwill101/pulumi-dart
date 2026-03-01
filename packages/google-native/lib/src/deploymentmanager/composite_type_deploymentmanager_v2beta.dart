import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_type_deploymentmanager_v2beta_args.dart';
import 'composite_type_label_entry_response_deploymentmanager_v2beta.dart';
import 'operation_response_deploymentmanager_v2beta.dart';
import 'template_contents_response_deploymentmanager_v2beta.dart';

/// Creates a composite type.
class CompositeTypeDeploymentmanagerV2beta extends pulumi.CustomResource {
  /// An optional textual description of the resource; provided by the client when the resource is created.
  late final pulumi.Output<String> description;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> insertTime;

  /// Map of labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  late final pulumi.Output<
    List<CompositeTypeLabelEntryResponseDeploymentmanagerV2beta>
  >
  labels;

  /// Name of the composite type, must follow the expression: `[a-z]([-a-z0-9_.]{0,61}[a-z0-9])?`.
  late final pulumi.Output<String> name;

  /// The Operation that most recently ran, or is currently running, on this composite type.
  late final pulumi.Output<OperationResponseDeploymentmanagerV2beta> operation;
  late final pulumi.Output<String> project;

  /// Server defined URL for the resource.
  late final pulumi.Output<String> selfLink;
  late final pulumi.Output<String> status;

  /// Files for the template type.
  late final pulumi.Output<TemplateContentsResponseDeploymentmanagerV2beta>
  templateContents;

  /// Creates a new [CompositeTypeDeploymentmanagerV2beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CompositeTypeDeploymentmanagerV2beta]. {@macro pulumi_deploymentmanager_v2beta_composite_type_deploymentmanager_v2beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CompositeTypeDeploymentmanagerV2beta(
    String name, {
    CompositeTypeDeploymentmanagerV2betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:deploymentmanager/v2beta:CompositeType',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.description = registerOutput<String>('description');
    this.insertTime = registerOutput<String>('insertTime');
    this.labels =
        registerOutput<
          List<CompositeTypeLabelEntryResponseDeploymentmanagerV2beta>
        >('labels');
    this.name = registerOutput<String>('name');
    this.operation = registerOutput<OperationResponseDeploymentmanagerV2beta>(
      'operation',
    );
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.status = registerOutput<String>('status');
    this.templateContents =
        registerOutput<TemplateContentsResponseDeploymentmanagerV2beta>(
          'templateContents',
        );
  }
}
