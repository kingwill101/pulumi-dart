import 'package:pulumi/pulumi.dart';
import 'identity_aware_proxy_client_args.dart';

/// Creates an Identity Aware Proxy (IAP) OAuth client. The client is owned by IAP. Requires that the brand for the project exists and that it is set for internal-only use.
/// Auto-naming is currently not supported for this resource.
class IdentityAwareProxyClient extends CustomResource {
  late final Output<String> brandId;

  /// Human-friendly name given to the OAuth client.
  late final Output<String> displayName;

  /// Unique identifier of the OAuth client.
  late final Output<String> name;
  late final Output<String> project;

  /// Client secret of the OAuth client.
  late final Output<String> secret;

  IdentityAwareProxyClient(
    String name, {
    IdentityAwareProxyClientArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:iap/v1:IdentityAwareProxyClient',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.brandId = registerOutput<String>('brandId');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.secret = registerOutput<String>('secret');
  }
}
