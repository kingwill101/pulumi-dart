import 'package:pulumi/pulumi.dart';
import '../target_server_ssl_info/target_server_ssl_info.dart';
import 'target_server_args.dart';

/// TargetServer configuration. TargetServers are used to decouple a proxy TargetEndpoint HTTPTargetConnections from concrete URLs for backend services.
///
///
/// To get more information about TargetServer, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.targetservers/create)
/// * How-to Guides
/// * [Load balancing across backend servers](https://cloud.google.com/apigee/docs/api-platform/deploy/load-balancing-across-backend-servers)
///
/// ## Example Usage
///
/// ### Apigee Target Server Test Basic
///
///
///
///
/// ## Import
///
/// TargetServer can be imported using any of these accepted formats:
///
/// * `{{env_id}}/targetservers/{{name}}`
///
/// * `{{env_id}}/{{name}}`
///
/// When using the `pulumi import` command, TargetServer can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/targetServer:TargetServer default {{env_id}}/targetservers/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/targetServer:TargetServer default {{env_id}}/{{name}}
/// ```
class TargetServer extends CustomResource {
  /// A human-readable description of this TargetServer.
  late final Output<String?> description;

  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  late final Output<String> envId;

  /// The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  late final Output<String> host;

  /// Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.
  late final Output<bool?> isEnabled;

  /// The resource id of this reference. Values must match the regular expression [\w\s-.]+.
  late final Output<String> name;

  /// The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  late final Output<int> port;

  /// Immutable. The protocol used by this TargetServer.
  /// Possible values are: `HTTP`, `HTTP2`, `GRPC_TARGET`, `GRPC`, `EXTERNAL_CALLOUT`.
  late final Output<String> protocol;

  /// Specifies TLS configuration info for this TargetServer. The JSON name is sSLInfo for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.
  /// Structure is documented below.
  late final Output<TargetServerSSlInfo?> sSlInfo;

  TargetServer(
    String name, {
    TargetServerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/targetServer:TargetServer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.envId = registerOutput<String>('envId');
    this.host = registerOutput<String>('host');
    this.isEnabled = registerOutput<bool?>('isEnabled');
    this.name = registerOutput<String>('name');
    this.port = registerOutput<int>('port');
    this.protocol = registerOutput<String>('protocol');
    this.sSlInfo = registerOutput<TargetServerSSlInfo?>('sSlInfo');
  }
}
