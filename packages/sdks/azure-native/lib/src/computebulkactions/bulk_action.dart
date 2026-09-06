import 'package:pulumi/pulumi.dart' as pulumi;
import 'bulk_action_args.dart';
import 'launch_bulk_instances_operation_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'system_data_response.dart';

/// Location based type.
///
/// Uses Azure REST API version 2026-02-01-preview.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:computebulkactions:BulkAction kv /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ComputeBulkActions/locations/{location}/launchBulkInstancesOperations/{name}
/// ```
class BulkAction extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Details of the resource plan.
  late final pulumi.Output<PlanResponse?> plan;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<LaunchBulkInstancesOperationPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Zones in which the LaunchBulkInstancesOperation is available
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [BulkAction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BulkAction]. {@macro pulumi_computebulkactions_bulk_action_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BulkAction(
    String name, {
    BulkActionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:computebulkactions:BulkAction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    plan = registerOutput<PlanResponse?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    properties = registerOutput<LaunchBulkInstancesOperationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchBulkInstancesOperationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [BulkAction] resource.
  BulkAction.reference(String urn)
    : super(
        'azure-native:computebulkactions:BulkAction',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    plan = registerOutput<PlanResponse?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    properties = registerOutput<LaunchBulkInstancesOperationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchBulkInstancesOperationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
