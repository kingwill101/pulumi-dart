import 'package:pulumi/pulumi.dart';
import 'component_args.dart';

/// Manages an Image Builder Component.
///
/// ## Example Usage
///
/// ### URI Document
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.imagebuilder.getComponents` resources using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/component:Component example arn:aws:imagebuilder:us-east-1:123456789012:component/example/1.0.0/1
/// ```
///
/// Certain resource arguments, such as `uri`, cannot be read via the API and imported into the provider. The provider will display a difference for these arguments the first run after import if declared in the the provider configuration for an imported resource.
class Component extends CustomResource {
  /// (Required) Amazon Resource Name (ARN) of the component.
  late final Output<String> arn;

  /// Change description of the component.
  late final Output<String?> changeDescription;

  /// Inline YAML string with data of the component. Exactly one of `data` and `uri` can be specified. the provider will only perform drift detection of its value when present in a configuration.
  late final Output<String> data;

  /// Date the component was created.
  late final Output<String> dateCreated;

  /// Description of the component.
  late final Output<String?> description;

  /// Encryption status of the component.
  late final Output<bool> encrypted;

  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key used to encrypt the component.
  late final Output<String?> kmsKeyId;

  /// Name of the component.
  late final Output<String> name;

  /// Owner of the component.
  late final Output<String> owner;

  /// Platform of the component.
  late final Output<String> platform;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether to retain the old version when the resource is destroyed or replacement is necessary. Defaults to `false`.
  late final Output<bool?> skipDestroy;

  /// Set of Operating Systems (OS) supported by the component.
  late final Output<List<String>?> supportedOsVersions;

  /// Key-value map of resource tags for the component. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Type of the component.
  late final Output<String> type;

  /// S3 URI with data of the component. Exactly one of `data` and `uri` can be specified.
  ///
  /// > **NOTE:** Updating `data` or `uri` requires specifying a new `version`. This causes replacement of the resource. The `skip_destroy` argument can be used to retain the old version.
  late final Output<String?> uri;

  /// Version of the component.
  ///
  /// The following arguments are optional:
  late final Output<String> version;

  Component(
    String name, {
    ComponentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/component:Component',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.changeDescription = registerOutput<String?>('changeDescription');
    this.data = registerOutput<String>('data');
    this.dateCreated = registerOutput<String>('dateCreated');
    this.description = registerOutput<String?>('description');
    this.encrypted = registerOutput<bool>('encrypted');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    this.owner = registerOutput<String>('owner');
    this.platform = registerOutput<String>('platform');
    this.region = registerOutput<String>('region');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.supportedOsVersions =
        registerOutput<List<String>?>('supportedOsVersions');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.uri = registerOutput<String?>('uri');
    this.version = registerOutput<String>('version');
  }
}
