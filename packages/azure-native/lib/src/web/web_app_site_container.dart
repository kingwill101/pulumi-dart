import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_variable_response.dart';
import 'volume_mount_response.dart';
import 'web_app_site_container_args.dart';

/// Container of a site
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2023-12-01.
///
/// Other available API versions: 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppSiteContainer myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/sitecontainers/{containerName}
/// ```
class WebAppSiteContainer extends pulumi.CustomResource {
  /// Auth Type
  late final pulumi.Output<String?> authType;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Created Time
  late final pulumi.Output<String> createdTime;
  /// List of environment variables
  late final pulumi.Output<List<EnvironmentVariableResponse>?> environmentVariables;
  /// Image Name
  late final pulumi.Output<String> image;
  /// <code>true</code> if the container is the main site container; <code>false</code> otherwise.
  late final pulumi.Output<bool> isMain;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// Last Modified Time
  late final pulumi.Output<String> lastModifiedTime;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// Password Secret
  late final pulumi.Output<String?> passwordSecret;
  /// StartUp Command
  late final pulumi.Output<String?> startUpCommand;
  /// Target Port
  late final pulumi.Output<String?> targetPort;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// UserManagedIdentity ClientId
  late final pulumi.Output<String?> userManagedIdentityClientId;
  /// User Name
  late final pulumi.Output<String?> userName;
  /// List of volume mounts
  late final pulumi.Output<List<VolumeMountResponse>?> volumeMounts;

  /// Creates a new [WebAppSiteContainer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppSiteContainer]. {@macro pulumi_web_web_app_site_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppSiteContainer(
    String name, {
    WebAppSiteContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppSiteContainer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authType = registerOutput<String?>('authType');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.createdTime = registerOutput<String>('createdTime');
    this.environmentVariables = registerOutput<List<EnvironmentVariableResponse>?>('environmentVariables');
    this.image = registerOutput<String>('image');
    this.isMain = registerOutput<bool>('isMain');
    this.kind = registerOutput<String?>('kind');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    this.passwordSecret = registerOutput<String?>('passwordSecret');
    this.startUpCommand = registerOutput<String?>('startUpCommand');
    this.targetPort = registerOutput<String?>('targetPort');
    this.type = registerOutput<String>('type');
    this.userManagedIdentityClientId = registerOutput<String?>('userManagedIdentityClientId');
    this.userName = registerOutput<String?>('userName');
    this.volumeMounts = registerOutput<List<VolumeMountResponse>?>('volumeMounts');
  }
}
