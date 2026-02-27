import 'package:pulumi/pulumi.dart' as pulumi;
import '../hub_s3_storage_config/hub_s3_storage_config.dart';
import 'hub_args.dart';

/// Provides a SageMaker AI Hub resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Hubs using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/hub:Hub test_hub my-code-repo
/// ```
class Hub extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Hub.
  late final pulumi.Output<String> arn;

  /// A description of the hub.
  late final pulumi.Output<String> hubDescription;

  /// The display name of the hub.
  late final pulumi.Output<String?> hubDisplayName;

  /// The name of the hub.
  late final pulumi.Output<String> hubName;

  /// The searchable keywords for the hub.
  late final pulumi.Output<List<String>?> hubSearchKeywords;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon S3 storage configuration for the hub. See S3 Storage Config details below.
  late final pulumi.Output<HubS3StorageConfig?> s3StorageConfig;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Hub(
    String name, {
    HubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/hub:Hub',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.hubDescription = registerOutput<String>('hubDescription');
    this.hubDisplayName = registerOutput<String?>('hubDisplayName');
    this.hubName = registerOutput<String>('hubName');
    this.hubSearchKeywords = registerOutput<List<String>?>('hubSearchKeywords');
    this.region = registerOutput<String>('region');
    this.s3StorageConfig =
        registerOutput<HubS3StorageConfig?>('s3StorageConfig');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
