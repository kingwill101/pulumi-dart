import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_apigee_v1_tls_info_response.dart';
import 'target_server_args.dart';

/// Creates a TargetServer in the specified environment.
class TargetServer extends CustomResource {
  /// Optional. A human-readable description of this TargetServer.
  late final Output<String> description;
  late final Output<String> environmentId;

  /// The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  late final Output<String> host;

  /// Optional. Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.
  late final Output<bool> isEnabled;

  /// Optional. The ID to give the TargetServer. This will overwrite the value in TargetServer.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  late final Output<int> port;

  /// Immutable. The protocol used by this TargetServer.
  late final Output<String> protocol;

  /// Optional. Specifies TLS configuration info for this TargetServer. The JSON name is `sSLInfo` for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.
  late final Output<GoogleCloudApigeeV1TlsInfoResponse> sSLInfo;

  TargetServer(
    String name, {
    TargetServerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:TargetServer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.environmentId = registerOutput<String>('environmentId');
    this.host = registerOutput<String>('host');
    this.isEnabled = registerOutput<bool>('isEnabled');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.port = registerOutput<int>('port');
    this.protocol = registerOutput<String>('protocol');
    this.sSLInfo =
        registerOutput<GoogleCloudApigeeV1TlsInfoResponse>('sSLInfo');
  }
}
