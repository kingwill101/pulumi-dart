import 'package:pulumi/pulumi.dart' as pulumi;
import '../workforce_pool_provider_key_key_data/workforce_pool_provider_key_key_data.dart';
import 'workforce_pool_provider_key_args.dart';

/// Represents a public key configuration for a Workforce Pool Provider. The key can be configured in your identity provider to encrypt SAML assertions.
/// Google holds the corresponding private key, which it uses to decrypt encrypted tokens.
///
///
/// To get more information about WorkforcePoolProviderKey, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/locations.workforcePools.providers.keys)
/// * How-to Guides
/// * [Configure a provider within the workforce pool](https://cloud.google.com/iam/docs/manage-workforce-identity-pools-providers#configure_a_provider_within_the_workforce_pool)
/// * [Workforce Identity Federation Overview](https://cloud.google.com/iam/docs/workforce-identity-federation)
///
/// ## Example Usage
///
/// ### Iam Workforce Pool Provider Saml Key Basic
///
///
///
///
/// ## Import
///
/// WorkforcePoolProviderKey can be imported using any of these accepted formats:
///
/// * `locations/{{location}}/workforcePools/{{workforce_pool_id}}/providers/{{provider_id}}/keys/{{key_id}}`
///
/// * `{{location}}/{{workforce_pool_id}}/{{provider_id}}/{{key_id}}`
///
/// When using the `pulumi import` command, WorkforcePoolProviderKey can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolProviderKey:WorkforcePoolProviderKey default locations/{{location}}/workforcePools/{{workforce_pool_id}}/providers/{{provider_id}}/keys/{{key_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolProviderKey:WorkforcePoolProviderKey default {{location}}/{{workforce_pool_id}}/{{provider_id}}/{{key_id}}
/// ```
class WorkforcePoolProviderKey extends pulumi.CustomResource {
  /// The time after which the key will be permanently deleted and cannot be recovered.
  /// Note that the key may get purged before this time if the total limit of keys per provider is exceeded.
  late final pulumi.Output<String> expireTime;

  /// Immutable. Public half of the asymmetric key.
  /// Structure is documented below.
  late final pulumi.Output<WorkforcePoolProviderKeyKeyData> keyData;

  /// The ID to use for the key, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  late final pulumi.Output<String> keyId;

  /// The location for the resource.
  late final pulumi.Output<String> location;

  /// Identifier. The resource name of the key.
  /// Format: `locations/{location}/workforcePools/{workforcePoolId}/providers/{providerId}/keys/{keyId}`
  late final pulumi.Output<String> name;

  /// The ID of the provider.
  late final pulumi.Output<String> providerId;

  /// The state of the key.
  late final pulumi.Output<String> state;

  /// The purpose of the key.
  /// Possible values are: `ENCRYPTION`.
  late final pulumi.Output<String> use;

  /// The ID of the workforce pool.
  late final pulumi.Output<String> workforcePoolId;

  WorkforcePoolProviderKey(
    String name, {
    WorkforcePoolProviderKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workforcePoolProviderKey:WorkforcePoolProviderKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.expireTime = registerOutput<String>('expireTime');
    this.keyData = registerOutput<WorkforcePoolProviderKeyKeyData>('keyData');
    this.keyId = registerOutput<String>('keyId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.providerId = registerOutput<String>('providerId');
    this.state = registerOutput<String>('state');
    this.use = registerOutput<String>('use');
    this.workforcePoolId = registerOutput<String>('workforcePoolId');
  }
}
