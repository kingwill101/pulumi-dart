import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_profile_data_boost_isolation_read_only/app_profile_data_boost_isolation_read_only.dart';
import '../app_profile_single_cluster_routing/app_profile_single_cluster_routing.dart';
import '../app_profile_standard_isolation/app_profile_standard_isolation.dart';
import 'app_profile_args.dart';

/// App profile is a configuration object describing how Cloud Bigtable should treat traffic from a particular end user application.
///
///
/// To get more information about AppProfile, see:
///
/// * [API documentation](https://cloud.google.com/bigtable/docs/reference/admin/rest/v2/projects.instances.appProfiles)
///
/// ## Example Usage
///
/// ### Bigtable App Profile Anycluster
///
///
///
/// ### Bigtable App Profile Singlecluster
///
///
///
/// ### Bigtable App Profile Multicluster
///
///
///
/// ### Bigtable App Profile Priority
///
///
///
///
/// ## Import
///
/// AppProfile can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance}}/appProfiles/{{app_profile_id}}`
///
/// * `{{project}}/{{instance}}/{{app_profile_id}}`
///
/// * `{{instance}}/{{app_profile_id}}`
///
/// When using the `pulumi import` command, AppProfile can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/appProfile:AppProfile default projects/{{project}}/instances/{{instance}}/appProfiles/{{app_profile_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/appProfile:AppProfile default {{project}}/{{instance}}/{{app_profile_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/appProfile:AppProfile default {{instance}}/{{app_profile_id}}
/// ```
class AppProfile extends pulumi.CustomResource {
  /// The unique name of the app profile in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  late final pulumi.Output<String> appProfileId;

  /// Specifies that this app profile is intended for read-only usage via the Data Boost feature.
  /// Structure is documented below.
  late final pulumi.Output<AppProfileDataBoostIsolationReadOnly?>
      dataBoostIsolationReadOnly;

  /// Long form description of the use case for this app profile.
  late final pulumi.Output<String?> description;

  /// If true, ignore safety checks when deleting/updating the app profile.
  late final pulumi.Output<bool?> ignoreWarnings;

  /// The name of the instance to create the app profile within.
  late final pulumi.Output<String?> instance;

  /// The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible.
  late final pulumi.Output<List<String>?> multiClusterRoutingClusterIds;

  /// If true, read/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available
  /// in the event of transient errors or delays. Clusters in a region are considered equidistant. Choosing this option sacrifices read-your-writes
  /// consistency to improve availability.
  late final pulumi.Output<bool?> multiClusterRoutingUseAny;

  /// The unique name of the requested app profile. Values are of the form `projects/<project>/instances/<instance>/appProfiles/<appProfileId>`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Must be used with multi-cluster routing. If true, then this app profile will use row affinity sticky routing. With row affinity, Bigtable will route single row key requests based on the row key, rather than randomly. Instead, each row key will be assigned to a cluster by Cloud Bigtable, and will stick to that cluster. Choosing this option improves read-your-writes consistency for most requests under most circumstances, without sacrificing availability. Consistency is not guaranteed, as requests may still fail over between clusters in the event of errors or latency.
  late final pulumi.Output<bool?> rowAffinity;

  /// Use a single-cluster routing policy.
  /// Structure is documented below.
  late final pulumi.Output<AppProfileSingleClusterRouting?>
      singleClusterRouting;

  /// The standard options used for isolating this app profile's traffic from other use cases.
  /// Structure is documented below.
  late final pulumi.Output<AppProfileStandardIsolation> standardIsolation;

  AppProfile(
    String name, {
    AppProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/appProfile:AppProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appProfileId = registerOutput<String>('appProfileId');
    this.dataBoostIsolationReadOnly =
        registerOutput<AppProfileDataBoostIsolationReadOnly?>(
            'dataBoostIsolationReadOnly');
    this.description = registerOutput<String?>('description');
    this.ignoreWarnings = registerOutput<bool?>('ignoreWarnings');
    this.instance = registerOutput<String?>('instance');
    this.multiClusterRoutingClusterIds =
        registerOutput<List<String>?>('multiClusterRoutingClusterIds');
    this.multiClusterRoutingUseAny =
        registerOutput<bool?>('multiClusterRoutingUseAny');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rowAffinity = registerOutput<bool?>('rowAffinity');
    this.singleClusterRouting =
        registerOutput<AppProfileSingleClusterRouting?>('singleClusterRouting');
    this.standardIsolation =
        registerOutput<AppProfileStandardIsolation>('standardIsolation');
  }
}
