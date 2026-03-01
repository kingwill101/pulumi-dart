import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_action_configuration_response.dart';
import 'web_app_source_control_slot_args.dart';

/// Source control configuration for an app.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppSourceControlSlot myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/sourcecontrols/web
/// ```
class WebAppSourceControlSlot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Name of branch to use for deployment.
  late final pulumi.Output<String?> branch;
  /// <code>true</code> to enable deployment rollback; otherwise, <code>false</code>.
  late final pulumi.Output<bool?> deploymentRollbackEnabled;
  /// If GitHub Action is selected, than the associated configuration.
  late final pulumi.Output<GitHubActionConfigurationResponse?> gitHubActionConfiguration;
  /// <code>true</code> if this is deployed via GitHub action.
  late final pulumi.Output<bool?> isGitHubAction;
  /// <code>true</code> to limit to manual integration; <code>false</code> to enable continuous integration (which configures webhooks into online repos like GitHub).
  late final pulumi.Output<bool?> isManualIntegration;
  /// <code>true</code> for a Mercurial repository; <code>false</code> for a Git repository.
  late final pulumi.Output<bool?> isMercurial;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// Repository or source control URL.
  late final pulumi.Output<String?> repoUrl;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppSourceControlSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppSourceControlSlot]. {@macro pulumi_web_web_app_source_control_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppSourceControlSlot(
    String name, {
    WebAppSourceControlSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppSourceControlSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.branch = registerOutput<String?>('branch');
    this.deploymentRollbackEnabled = registerOutput<bool?>('deploymentRollbackEnabled');
    this.gitHubActionConfiguration = registerOutput<GitHubActionConfigurationResponse?>('gitHubActionConfiguration');
    this.isGitHubAction = registerOutput<bool?>('isGitHubAction');
    this.isManualIntegration = registerOutput<bool?>('isManualIntegration');
    this.isMercurial = registerOutput<bool?>('isMercurial');
    this.kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    this.repoUrl = registerOutput<String?>('repoUrl');
    this.type = registerOutput<String>('type');
  }
}
