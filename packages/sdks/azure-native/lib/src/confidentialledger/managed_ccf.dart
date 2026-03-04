import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_ccfargs.dart';
import 'managed_ccfproperties_response.dart';
import 'system_data_response.dart';

/// Managed CCF. Contains the properties of Managed CCF Resource.
///
/// Uses Azure REST API version 2023-06-28-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-26-preview.
///
/// Other available API versions: 2022-09-08-preview, 2023-01-26-preview, 2024-07-09-preview, 2024-09-19-preview, 2025-06-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confidentialledger [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:confidentialledger:ManagedCCF DummyLedgerName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConfidentialLedger/managedCCFs/{appName}
/// ```
class ManagedCCF extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Properties of Managed CCF Resource.
  late final pulumi.Output<ManagedCCFPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedCCF].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedCCF]. {@macro pulumi_confidentialledger_managed_ccfargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedCCF(
    String name, {
    ManagedCCFArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:confidentialledger:ManagedCCF',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ManagedCCFPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
