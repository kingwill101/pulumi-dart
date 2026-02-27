import 'package:pulumi/pulumi.dart';
import '../engine_split_traffic_split/engine_split_traffic_split.dart';
import 'engine_split_traffic_args.dart';

/// Traffic routing configuration for versions within a single service. Traffic splits define how traffic directed to the service is assigned to versions.
///
///
/// To get more information about ServiceSplitTraffic, see:
///
/// * [API documentation](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services)
///
/// ## Example Usage
///
/// ### App Engine Service Split Traffic
///
///
///
///
/// ## Import
///
/// ServiceSplitTraffic can be imported using any of these accepted formats:
///
/// * `apps/{{project}}/services/{{service}}`
///
/// * `{{project}}/{{service}}`
///
/// * `{{service}}`
///
/// When using the `pulumi import` command, ServiceSplitTraffic can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:appengine/engineSplitTraffic:EngineSplitTraffic default apps/{{project}}/services/{{service}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/engineSplitTraffic:EngineSplitTraffic default {{project}}/{{service}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/engineSplitTraffic:EngineSplitTraffic default {{service}}
/// ```
class EngineSplitTraffic extends CustomResource {
  /// If set to true traffic will be migrated to this version.
  late final Output<bool?> migrateTraffic;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The name of the service these settings apply to.
  late final Output<String> service;

  /// Mapping that defines fractional HTTP traffic diversion to different versions within the service.
  /// Structure is documented below.
  late final Output<EngineSplitTrafficSplit> split;

  EngineSplitTraffic(
    String name, {
    EngineSplitTrafficArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/engineSplitTraffic:EngineSplitTraffic',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.migrateTraffic = registerOutput<bool?>('migrateTraffic');
    this.project = registerOutput<String>('project');
    this.service = registerOutput<String>('service');
    this.split = registerOutput<EngineSplitTrafficSplit>('split');
  }
}
