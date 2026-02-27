import 'package:pulumi/pulumi.dart';
import 'backend_authentication_config_args.dart';

/// BackendAuthenticationConfig groups the TrustConfig together with other settings that control how the load balancer authenticates, and expresses its identity to the backend.
///
///
/// To get more information about BackendAuthenticationConfig, see:
/// * How-to Guides
/// * [Backend mTLS](https://cloud.google.com/load-balancing/docs/backend-authenticated-tls-backend-mtls#backend-authentication-config)
///
/// ## Example Usage
///
/// ### Network Security Backend Authentication Config Basic
///
///
///
/// ### Network Security Backend Authentication Config Full
///
///
///
/// ### Backend Service Tls Settings
///
///
///
///
/// ## Import
///
/// BackendAuthenticationConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backendAuthenticationConfigs/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, BackendAuthenticationConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/backendAuthenticationConfig:BackendAuthenticationConfig default projects/{{project}}/locations/{{location}}/backendAuthenticationConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/backendAuthenticationConfig:BackendAuthenticationConfig default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/backendAuthenticationConfig:BackendAuthenticationConfig default {{location}}/{{name}}
/// ```
class BackendAuthenticationConfig extends CustomResource {
  /// Reference to a Certificate resource from the certificatemanager.googleapis.com namespace.
  /// Used by a BackendService to negotiate mTLS when the backend connection uses TLS and the backend requests a client certificate. Must have a CLIENT_AUTH scope.
  late final Output<String?> clientCertificate;

  /// Time the BackendAuthenticationConfig was created in UTC.
  late final Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Set of label tags associated with the BackendAuthenticationConfig resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the backend authentication config.
  /// The default value is `global`.
  late final Output<String?> location;

  /// Name of the BackendAuthenticationConfig resource.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Reference to a TrustConfig resource from the certificatemanager.googleapis.com namespace.
  /// A BackendService uses the chain of trust represented by this TrustConfig, if specified, to validate the server certificates presented by the backend. Required unless wellKnownRoots is set to PUBLIC_ROOTS.
  late final Output<String?> trustConfig;

  /// Time the BackendAuthenticationConfig was updated in UTC.
  late final Output<String> updateTime;

  /// Well known roots to use for server certificate validation. If set to NONE, the BackendService will only validate server certificates against roots specified in TrustConfig.
  /// If set to PUBLIC_ROOTS, the BackendService uses a set of well-known public roots, in addition to any roots specified in the trustConfig field, when validating the server certificates presented by the backend.
  /// Validation with these roots is only considered when the TlsSettings.sni field in the BackendService is set. The well-known roots are a set of root CAs managed by Google. CAs in this set can be added or removed without notice.
  /// Possible values are: `NONE`, `PUBLIC_ROOTS`.
  late final Output<String?> wellKnownRoots;

  BackendAuthenticationConfig(
    String name, {
    BackendAuthenticationConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/backendAuthenticationConfig:BackendAuthenticationConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clientCertificate = registerOutput<String?>('clientCertificate');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.trustConfig = registerOutput<String?>('trustConfig');
    this.updateTime = registerOutput<String>('updateTime');
    this.wellKnownRoots = registerOutput<String?>('wellKnownRoots');
  }
}
