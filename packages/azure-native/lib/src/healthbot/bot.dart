import 'package:pulumi/pulumi.dart' as pulumi;
import 'bot_args.dart';
import 'health_bot_properties_response.dart';
import 'identity_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Azure Health Bot resource definition
///
/// Uses Azure REST API version 2024-02-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2025-05-25, 2025-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native healthbot [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:healthbot:Bot samplebotname /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HealthBot/healthBots/{botName}
/// ```
class Bot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The identity of the Azure Health Bot.
  late final pulumi.Output<IdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The set of properties specific to Azure Health Bot resource.
  late final pulumi.Output<HealthBotPropertiesResponse> properties;
  /// SKU of the Azure Health Bot.
  late final pulumi.Output<SkuResponse> sku;
  /// Metadata pertaining to creation and last modification of the resource
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Bot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Bot]. {@macro pulumi_healthbot_bot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Bot(
    String name, {
    BotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:healthbot:Bot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.identity = registerOutput<IdentityResponse?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<HealthBotPropertiesResponse>('properties');
    this.sku = registerOutput<SkuResponse>('sku');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
