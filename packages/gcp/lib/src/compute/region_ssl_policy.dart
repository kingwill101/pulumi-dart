import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_ssl_policy_args.dart';

/// Represents a Regional SSL policy. SSL policies give you the ability to control the
/// features of SSL that your SSL proxy or HTTPS load balancer negotiates.
///
///
/// To get more information about RegionSslPolicy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionSslPolicies)
/// * How-to Guides
/// * [Using SSL Policies](https://cloud.google.com/compute/docs/load-balancing/ssl-policies)
///
/// ## Import
///
/// RegionSslPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/sslPolicies/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionSslPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionSslPolicy:RegionSslPolicy default projects/{{project}}/regions/{{region}}/sslPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSslPolicy:RegionSslPolicy default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSslPolicy:RegionSslPolicy default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSslPolicy:RegionSslPolicy default {{name}}
/// ```
class RegionSslPolicy extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// A list of features enabled when the selected profile is CUSTOM. The
  /// method returns the set of features that can be specified in this
  /// list. This field must be empty if the profile is not CUSTOM.
  /// See the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
  /// for which ciphers are available to use. **Note**: this argument
  /// *must* be present when using the `CUSTOM` profile. This argument
  /// *must not* be present when using any other profile.
  late final pulumi.Output<List<String>?> customFeatures;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// The list of features enabled in the SSL policy.
  late final pulumi.Output<List<String>> enabledFeatures;
  /// Fingerprint of this resource. A hash of the contents stored in this
  /// object. This field is used in optimistic locking.
  late final pulumi.Output<String> fingerprint;
  /// The minimum version of SSL protocol that can be used by the clients
  /// to establish a connection with the load balancer. When set to
  /// `TLS_1_3`, the profile field must be set to `RESTRICTED`.
  /// Default value is `TLS_1_0`.
  /// Possible values are: `TLS_1_0`, `TLS_1_1`, `TLS_1_2`, `TLS_1_3`.
  late final pulumi.Output<String?> minTlsVersion;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// Profile specifies the set of SSL features that can be used by the
  /// load balancer when negotiating SSL with clients. If using `CUSTOM`,
  /// the set of SSL features to enable must be specified in the
  /// `customFeatures` field.
  /// See the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
  /// for information on what cipher suites each profile provides. If
  /// `CUSTOM` is used, the `custom_features` attribute **must be set**.
  /// If set to `FIPS_202205`, `minTlsVersion` must also be set to
  /// `TLS_1_2`.
  /// Default value is `COMPATIBLE`.
  /// Possible values are: `COMPATIBLE`, `MODERN`, `RESTRICTED`, `CUSTOM`, `FIPS_202205`.
  late final pulumi.Output<String?> profile;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region where the regional SSL policy resides.
  late final pulumi.Output<String> region;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [RegionSslPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionSslPolicy]. {@macro pulumi_compute_region_ssl_policy_region_ssl_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionSslPolicy(
    String name, {
    RegionSslPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionSslPolicy:RegionSslPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.customFeatures = registerOutput<List<String>?>('customFeatures');
    this.description = registerOutput<String?>('description');
    this.enabledFeatures = registerOutput<List<String>>('enabledFeatures');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.minTlsVersion = registerOutput<String?>('minTlsVersion');
    this.name = registerOutput<String>('name');
    this.profile = registerOutput<String?>('profile');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
