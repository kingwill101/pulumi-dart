import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_args.dart';
import 'experiment_identity_response.dart';
import 'experiment_properties_response.dart';
import 'system_data_response.dart';

/// Model that represents a Experiment resource.
///
/// Uses Azure REST API version 2024-03-22-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-15-preview.
///
/// Other available API versions: 2023-04-15-preview, 2023-09-01-preview, 2023-10-27-preview, 2023-11-01, 2024-01-01, 2024-11-01-preview, 2025-01-01, 2026-05-01-preview, 2026-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native chaos [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
class Experiment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The identity of the experiment resource.
  late final pulumi.Output<ExperimentIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The properties of the experiment resource.
  late final pulumi.Output<ExperimentPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Experiment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Experiment]. {@macro pulumi_chaos_experiment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Experiment(
    String name, {
    ExperimentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:chaos:Experiment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ExperimentIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExperimentIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ExperimentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExperimentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Experiment] resource.
  Experiment.reference(String urn)
    : super(
        'azure-native:chaos:Experiment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ExperimentIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExperimentIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ExperimentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExperimentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
