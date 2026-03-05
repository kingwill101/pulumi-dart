import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_access_key_args.dart';

/// Uses Azure REST API version 2015-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2015-02-01-preview.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:logic:WorkflowAccessKey myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/workflows/{workflowName}/accessKeys/{accessKeyName}
/// ```
class WorkflowAccessKey extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets the workflow access key name.
  late final pulumi.Output<String> name;
  /// Gets or sets the not-after time.
  late final pulumi.Output<String?> notAfter;
  /// Gets or sets the not-before time.
  late final pulumi.Output<String?> notBefore;
  /// Gets the workflow access key type.
  late final pulumi.Output<String> type;

  /// Creates a new [WorkflowAccessKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkflowAccessKey]. {@macro pulumi_logic_workflow_access_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkflowAccessKey(
    String name, {
    WorkflowAccessKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:logic:WorkflowAccessKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    notAfter = registerOutput<String?>('notAfter');
    notBefore = registerOutput<String?>('notBefore');
    type = registerOutput<String>('type');
  }
}
