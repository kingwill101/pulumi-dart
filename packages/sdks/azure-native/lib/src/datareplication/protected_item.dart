import 'package:pulumi/pulumi.dart' as pulumi;
import 'protected_item_args.dart';
import 'protected_item_model_properties_response.dart';
import 'protected_item_model_response_system_data.dart';

/// Protected item model.
///
/// Uses Azure REST API version 2021-02-16-preview. In version 2.x of the Azure Native provider, it used API version 2021-02-16-preview.
///
/// Other available API versions: 2024-09-01, 2026-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datareplication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:datareplication:ProtectedItem t /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataReplication/replicationVaults/{vaultName}/protectedItems/{protectedItemName}
/// ```
class ProtectedItem extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the name of the resource.
  late final pulumi.Output<String> name;
  /// Protected item model properties.
  late final pulumi.Output<ProtectedItemModelPropertiesResponse> properties;
  late final pulumi.Output<ProtectedItemModelResponseSystemData> systemData;
  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ProtectedItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProtectedItem]. {@macro pulumi_datareplication_protected_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProtectedItem(
    String name, {
    ProtectedItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datareplication:ProtectedItem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ProtectedItemModelPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProtectedItemModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<ProtectedItemModelResponseSystemData>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProtectedItemModelResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ProtectedItem] resource.
  ProtectedItem.reference(String urn)
    : super(
        'azure-native:datareplication:ProtectedItem',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ProtectedItemModelPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProtectedItemModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<ProtectedItemModelResponseSystemData>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProtectedItemModelResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
