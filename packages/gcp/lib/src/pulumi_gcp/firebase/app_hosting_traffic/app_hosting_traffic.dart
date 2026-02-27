import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_hosting_traffic_current/app_hosting_traffic_current.dart';
import '../app_hosting_traffic_rollout_policy/app_hosting_traffic_rollout_policy.dart';
import '../app_hosting_traffic_target/app_hosting_traffic_target.dart';
import 'app_hosting_traffic_args.dart';

/// Controls traffic configuration for a backend.
///
///
///
/// ## Example Usage
///
/// ### Firebase App Hosting Traffic Target
///
///
///
/// ### Firebase App Hosting Traffic Rollout Policy
///
///
///
/// ### Firebase App Hosting Traffic Rollout Policy Disabled
///
///
///
///
/// ## Import
///
/// Traffic can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backends/{{backend}}/traffic`
///
/// * `{{project}}/{{location}}/{{backend}}`
///
/// * `{{location}}/{{backend}}`
///
/// When using the `pulumi import` command, Traffic can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingTraffic:AppHostingTraffic default projects/{{project}}/locations/{{location}}/backends/{{backend}}/traffic
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingTraffic:AppHostingTraffic default {{project}}/{{location}}/{{backend}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingTraffic:AppHostingTraffic default {{location}}/{{backend}}
/// ```
class AppHostingTraffic extends pulumi.CustomResource {
  /// Id of the backend that this Traffic config applies to
  late final pulumi.Output<String> backend;

  /// Time at which the backend was created.
  late final pulumi.Output<String> createTime;

  /// Current state of traffic allocation for the backend.
  /// When setting `target`, this field may differ for some time until the desired state is reached.
  /// Structure is documented below.
  late final pulumi.Output<List<AppHostingTrafficCurrent>> currents;

  /// Time at which the backend was deleted.
  late final pulumi.Output<String> deleteTime;

  /// Server-computed checksum based on other values; may be sent
  /// on update or delete to ensure operation is done on expected resource.
  late final pulumi.Output<String> etag;

  /// The location the Backend that this Traffic config applies to
  late final pulumi.Output<String> location;

  /// Identifier. The resource name of the backend traffic config
  /// Format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/traffic`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The policy for how builds and rollouts are triggered and rolled out.
  /// Structure is documented below.
  late final pulumi.Output<AppHostingTrafficRolloutPolicy?> rolloutPolicy;

  /// Set to manually control the desired traffic for the backend. This will
  /// cause current to eventually match this value. The percentages must add
  /// up to 100.
  /// Structure is documented below.
  late final pulumi.Output<AppHostingTrafficTarget?> target;

  /// System-assigned, unique identifier.
  late final pulumi.Output<String> uid;

  /// Time at which the backend was last updated.
  late final pulumi.Output<String> updateTime;

  AppHostingTraffic(
    String name, {
    AppHostingTrafficArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appHostingTraffic:AppHostingTraffic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backend = registerOutput<String>('backend');
    this.createTime = registerOutput<String>('createTime');
    this.currents = registerOutput<List<AppHostingTrafficCurrent>>('currents');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rolloutPolicy =
        registerOutput<AppHostingTrafficRolloutPolicy?>('rolloutPolicy');
    this.target = registerOutput<AppHostingTrafficTarget?>('target');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
