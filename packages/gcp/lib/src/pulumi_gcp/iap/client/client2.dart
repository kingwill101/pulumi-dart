import 'package:pulumi/pulumi.dart';
import 'client_args2.dart';

/// ## Example Usage
///
/// ### Iap Client
///
///
///
///
/// ## Import
///
/// Client can be imported using any of these accepted formats:
///
/// * `{{brand}}/identityAwareProxyClients/{{client_id}}`
///
/// * `{{brand}}/{{client_id}}`
///
/// When using the `pulumi import` command, Client can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iap/client:Client default {{brand}}/identityAwareProxyClients/{{client_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/client:Client default {{brand}}/{{client_id}}
/// ```
class Client2 extends CustomResource {
  /// Identifier of the brand to which this client
  /// is attached to. The format is
  /// `projects/{project_number}/brands/{brand_id}`.
  late final Output<String> brand;

  /// Output only. Unique identifier of the OAuth client.
  late final Output<String> clientId;

  /// Human-friendly name given to the OAuth client.
  late final Output<String> displayName;

  /// Output only. Client secret of the OAuth client.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final Output<String> secret;

  Client2(
    String name, {
    ClientArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iap/client:Client',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.brand = registerOutput<String>('brand');
    this.clientId = registerOutput<String>('clientId');
    this.displayName = registerOutput<String>('displayName');
    this.secret = registerOutput<String>('secret');
  }
}
