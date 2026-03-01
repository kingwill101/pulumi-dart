import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_profile_stub_response.dart';
import 'elastic_profile_response.dart';
import 'ngroup_args.dart';
import 'ngroup_identity_response.dart';
import 'placement_profile_response.dart';
import 'system_data_response.dart';
import 'update_profile_response.dart';

/// Describes the NGroups resource.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2024-09-01-preview.
///
/// Other available API versions: 2024-09-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerinstance [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:containerinstance:NGroup myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerInstance/ngroups/{ngroupsName}
/// ```
class NGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The Container Group Profiles that could be used in the NGroups resource.
  late final pulumi.Output<List<ContainerGroupProfileStubResponse>?> containerGroupProfiles;
  /// The elastic profile.
  late final pulumi.Output<ElasticProfileResponse?> elasticProfile;
  /// The identity of the NGroup, if configured.
  late final pulumi.Output<NGroupIdentityResponse?> identity;
  /// The resource location.
  late final pulumi.Output<String?> location;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// Provides options w.r.t allocation and management w.r.t certain placement policies. These utilize capabilities provided by the underlying Azure infrastructure. They are typically used for high availability scenarios. E.g., distributing CGs across fault domains.
  late final pulumi.Output<PlacementProfileResponse?> placementProfile;
  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The resource type.
  late final pulumi.Output<String> type;
  /// Used by the customer to specify the way to update the Container Groups in NGroup.
  late final pulumi.Output<UpdateProfileResponse?> updateProfile;
  /// The zones for the container group.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [NGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NGroup]. {@macro pulumi_containerinstance_ngroup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NGroup(
    String name, {
    NGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerinstance:NGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.containerGroupProfiles = registerOutput<List<ContainerGroupProfileStubResponse>?>('containerGroupProfiles');
    this.elasticProfile = registerOutput<ElasticProfileResponse?>('elasticProfile');
    this.identity = registerOutput<NGroupIdentityResponse?>('identity');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.placementProfile = registerOutput<PlacementProfileResponse?>('placementProfile');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.updateProfile = registerOutput<UpdateProfileResponse?>('updateProfile');
    this.zones = registerOutput<List<String>?>('zones');
  }
}
