import 'package:pulumi/pulumi.dart' as pulumi;
import 'agri_service_args.dart';
import 'agri_service_resource_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Schema of the AgriService resource from Microsoft.AgriculturePlatform resource provider.
///
/// Uses Azure REST API version 2024-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-06-01-preview.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:agricultureplatform:AgriService mnvxvlitiwbndijhbmgiejz /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AgriculturePlatform/agriServices/{agriServiceResourceName}
/// ```
class AgriService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<AgriServiceResourcePropertiesResponse> properties;
  /// The SKU (Stock Keeping Unit) assigned to this resource.
  late final pulumi.Output<SkuResponse?> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AgriService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgriService]. {@macro pulumi_agricultureplatform_agri_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgriService(
    String name, {
    AgriServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:agricultureplatform:AgriService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<AgriServiceResourcePropertiesResponse>('properties');
    this.sku = registerOutput<SkuResponse?>('sku');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
