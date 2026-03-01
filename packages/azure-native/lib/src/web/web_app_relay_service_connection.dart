import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_relay_service_connection_args.dart';

/// Hybrid Connection for an App Service app.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppRelayServiceConnection myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/hybridconnection/{entityName}
/// ```
class WebAppRelayServiceConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String?> biztalkUri;
  late final pulumi.Output<String?> entityConnectionString;
  late final pulumi.Output<String?> entityName;
  late final pulumi.Output<String?> hostname;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// Resource Name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<int?> port;
  late final pulumi.Output<String?> resourceConnectionString;
  late final pulumi.Output<String?> resourceType;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppRelayServiceConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppRelayServiceConnection]. {@macro pulumi_web_web_app_relay_service_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppRelayServiceConnection(
    String name, {
    WebAppRelayServiceConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppRelayServiceConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.biztalkUri = registerOutput<String?>('biztalkUri');
    this.entityConnectionString = registerOutput<String?>('entityConnectionString');
    this.entityName = registerOutput<String?>('entityName');
    this.hostname = registerOutput<String?>('hostname');
    this.kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    this.port = registerOutput<int?>('port');
    this.resourceConnectionString = registerOutput<String?>('resourceConnectionString');
    this.resourceType = registerOutput<String?>('resourceType');
    this.type = registerOutput<String>('type');
  }
}
