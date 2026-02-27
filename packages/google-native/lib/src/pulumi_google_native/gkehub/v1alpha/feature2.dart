import 'package:pulumi/pulumi.dart' hide Config;
import 'common_feature_spec_response2.dart';
import 'common_feature_state_response2.dart';
import 'common_fleet_default_member_config_spec_response2.dart';
import 'feature_args2.dart';
import 'feature_resource_state_response2.dart';

/// Adds a new Feature.
/// Auto-naming is currently not supported for this resource.
class Feature2 extends CustomResource {
  /// When the Feature resource was created.
  late final Output<String> createTime;

  /// When the Feature resource was deleted.
  late final Output<String> deleteTime;

  /// The ID of the feature to create.
  late final Output<String?> featureId;

  /// Optional. Feature configuration applicable to all memberships of the fleet.
  late final Output<CommonFleetDefaultMemberConfigSpecResponse2>
      fleetDefaultMemberConfig;

  /// Labels for this Feature.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Optional. Membership-specific configuration for this Feature. If this Feature does not support any per-Membership configuration, this field may be unused. The keys indicate which Membership the configuration is for, in the form: `projects/{p}/locations/{l}/memberships/{m}` Where {p} is the project, {l} is a valid location and {m} is a valid Membership in this project at that location. {p} WILL match the Feature's project. {p} will always be returned as the project number, but the project ID is also accepted during input. If the same Membership is specified in the map twice (using the project ID form, and the project number form), exactly ONE of the entries will be saved, with no guarantees as to which. For this reason, it is recommended the same format be used for all entries when mutating a Feature.
  late final Output<Map<String, String>> membershipSpecs;

  /// Membership-specific Feature status. If this Feature does report any per-Membership status, this field may be unused. The keys indicate which Membership the state is for, in the form: `projects/{p}/locations/{l}/memberships/{m}` Where {p} is the project number, {l} is a valid location and {m} is a valid Membership in this project at that location. {p} MUST match the Feature's project number.
  late final Output<Map<String, String>> membershipStates;

  /// The full, unique name of this Feature resource in the format `projects/*/locations/*/features/*`.
  late final Output<String> name;
  late final Output<String> project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// State of the Feature resource itself.
  late final Output<FeatureResourceStateResponse2> resourceState;

  /// Optional. Scope-specific configuration for this Feature. If this Feature does not support any per-Scope configuration, this field may be unused. The keys indicate which Scope the configuration is for, in the form: `projects/{p}/locations/global/scopes/{s}` Where {p} is the project, {s} is a valid Scope in this project. {p} WILL match the Feature's project. {p} will always be returned as the project number, but the project ID is also accepted during input. If the same Scope is specified in the map twice (using the project ID form, and the project number form), exactly ONE of the entries will be saved, with no guarantees as to which. For this reason, it is recommended the same format be used for all entries when mutating a Feature.
  late final Output<Map<String, String>> scopeSpecs;

  /// Scope-specific Feature status. If this Feature does report any per-Scope status, this field may be unused. The keys indicate which Scope the state is for, in the form: `projects/{p}/locations/global/scopes/{s}` Where {p} is the project, {s} is a valid Scope in this project. {p} WILL match the Feature's project.
  late final Output<Map<String, String>> scopeStates;

  /// Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.
  late final Output<CommonFeatureSpecResponse2> spec;

  /// The Hub-wide Feature state.
  late final Output<CommonFeatureStateResponse2> state;

  /// When the Feature resource was last updated.
  late final Output<String> updateTime;

  Feature2(
    String name, {
    FeatureArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:gkehub/v1alpha:Feature',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.featureId = registerOutput<String?>('featureId');
    this.fleetDefaultMemberConfig =
        registerOutput<CommonFleetDefaultMemberConfigSpecResponse2>(
            'fleetDefaultMemberConfig');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.membershipSpecs =
        registerOutput<Map<String, String>>('membershipSpecs');
    this.membershipStates =
        registerOutput<Map<String, String>>('membershipStates');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.resourceState =
        registerOutput<FeatureResourceStateResponse2>('resourceState');
    this.scopeSpecs = registerOutput<Map<String, String>>('scopeSpecs');
    this.scopeStates = registerOutput<Map<String, String>>('scopeStates');
    this.spec = registerOutput<CommonFeatureSpecResponse2>('spec');
    this.state = registerOutput<CommonFeatureStateResponse2>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
