import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_args.dart';
import 'experiment_identity_response.dart';
import 'experiment_properties_response.dart';
import 'system_data_response.dart';

/// Model that represents a Experiment resource.
///
/// Uses Azure REST API version 2024-03-22-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-15-preview.
///
/// Other available API versions: 2023-04-15-preview, 2023-09-01-preview, 2023-10-27-preview, 2023-11-01, 2024-01-01, 2024-11-01-preview, 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native chaos [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.identity = registerOutput<ExperimentIdentityResponse?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<ExperimentPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
