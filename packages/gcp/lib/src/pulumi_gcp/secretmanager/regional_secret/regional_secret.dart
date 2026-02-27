import 'package:pulumi/pulumi.dart' as pulumi;
import '../regional_secret_customer_managed_encryption/regional_secret_customer_managed_encryption.dart';
import '../regional_secret_rotation/regional_secret_rotation.dart';
import '../regional_secret_topic/regional_secret_topic.dart';
import 'regional_secret_args.dart';

/// A Regional Secret is a logical secret whose value and versions can be created and accessed within a region only.
///
///
/// To get more information about RegionalSecret, see:
///
/// * [API documentation](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.locations.secrets)
/// * How-to Guides
/// * [Create and deploy a Regional Secret](https://cloud.google.com/secret-manager/regional-secrets/create-regional-secret)
///
/// ## Example Usage
///
/// ### Regional Secret Config Basic
///
///
///
/// ### Regional Secret With Cmek
///
///
///
/// ### Regional Secret With Rotation
///
///
///
/// ### Regional Secret With Ttl
///
///
///
/// ### Regional Secret With Expire Time
///
///
///
/// ### Regional Secret With Version Destroy Ttl
///
///
///
///
/// ## Import
///
/// RegionalSecret can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}`
///
/// * `{{project}}/{{location}}/{{secret_id}}`
///
/// * `{{location}}/{{secret_id}}`
///
/// When using the `pulumi import` command, RegionalSecret can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:secretmanager/regionalSecret:RegionalSecret default projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:secretmanager/regionalSecret:RegionalSecret default {{project}}/{{location}}/{{secret_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:secretmanager/regionalSecret:RegionalSecret default {{location}}/{{secret_id}}
/// ```
class RegionalSecret extends pulumi.CustomResource {
  /// Custom metadata about the regional secret.
  /// Annotations are distinct from various forms of labels. Annotations exist to allow
  /// client tools to store their own state information without requiring a database.
  /// Annotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of
  /// maximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and
  /// may have dashes (-), underscores (_), dots (.), and alphanumerics in between these
  /// symbols.
  /// The total size of annotation keys and values must be less than 16KiB.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// The time at which the regional secret was created.
  late final pulumi.Output<String> createTime;

  /// The customer-managed encryption configuration of the regional secret.
  /// Structure is documented below.
  late final pulumi.Output<RegionalSecretCustomerManagedEncryption?>
      customerManagedEncryption;
  late final pulumi.Output<bool?> deletionProtection;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Timestamp in UTC when the regional secret is scheduled to expire. This is always provided on
  /// output, regardless of what was sent on input. A timestamp in RFC3339 UTC "Zulu" format, with
  /// nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z". Only one of `expire_time` or `ttl` can be provided.
  late final pulumi.Output<String> expireTime;

  /// The labels assigned to this regional secret.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be assigned to a given resource.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the regional secret. eg us-central1
  late final pulumi.Output<String> location;

  /// The resource name of the regional secret. Format:
  /// `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}`
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The rotation time and period for a regional secret. At `next_rotation_time`, Secret Manager
  /// will send a Pub/Sub notification to the topics configured on the Secret. `topics` must be
  /// set to configure rotation.
  /// Structure is documented below.
  late final pulumi.Output<RegionalSecretRotation?> rotation;

  /// This must be unique within the project.
  late final pulumi.Output<String> secretId;

  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A list of up to 10 Pub/Sub topics to which messages are published when control plane
  /// operations are called on the regional secret or its versions.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionalSecretTopic>?> topics;

  /// The TTL for the regional secret. A duration in seconds with up to nine fractional digits,
  /// terminated by 's'. Example: "3.5s". Only one of `ttl` or `expire_time` can be provided.
  late final pulumi.Output<String?> ttl;

  /// Mapping from version alias to version name.
  /// A version alias is a string with a maximum length of 63 characters and can contain
  /// uppercase and lowercase letters, numerals, and the hyphen (-) and underscore ('_')
  /// characters. An alias string must start with a letter and cannot be the string
  /// 'latest' or 'NEW'. No more than 50 aliases can be assigned to a given secret.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  late final pulumi.Output<Map<String, String>?> versionAliases;

  /// Secret Version TTL after destruction request.
  /// This is a part of the delayed delete feature on Secret Version.
  /// For secret with versionDestroyTtl>0, version destruction doesn't happen immediately
  /// on calling destroy instead the version goes to a disabled state and
  /// the actual destruction happens after this TTL expires. It must be atleast 24h.
  late final pulumi.Output<String?> versionDestroyTtl;

  RegionalSecret(
    String name, {
    RegionalSecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:secretmanager/regionalSecret:RegionalSecret',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.customerManagedEncryption =
        registerOutput<RegionalSecretCustomerManagedEncryption?>(
            'customerManagedEncryption');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.expireTime = registerOutput<String>('expireTime');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rotation = registerOutput<RegionalSecretRotation?>('rotation');
    this.secretId = registerOutput<String>('secretId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.topics = registerOutput<List<RegionalSecretTopic>?>('topics');
    this.ttl = registerOutput<String?>('ttl');
    this.versionAliases =
        registerOutput<Map<String, String>?>('versionAliases');
    this.versionDestroyTtl = registerOutput<String?>('versionDestroyTtl');
  }
}
