import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_configuration_args.dart';

/// Provides an Amazon MSK Connect Worker Configuration Resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MSK Connect Worker Configuration using the plugin's `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:mskconnect/workerConfiguration:WorkerConfiguration example 'arn:aws:kafkaconnect:eu-central-1:123456789012:worker-configuration/example/8848493b-7fcc-478c-a646-4a52634e3378-4'
/// ```
class WorkerConfiguration extends pulumi.CustomResource {
  /// the Amazon Resource Name (ARN) of the worker configuration.
  late final pulumi.Output<String> arn;

  /// A summary description of the worker configuration.
  late final pulumi.Output<String?> description;

  /// an ID of the latest successfully created revision of the worker configuration.
  late final pulumi.Output<int> latestRevision;

  /// The name of the worker configuration.
  late final pulumi.Output<String> name;

  /// Contents of connect-distributed.properties file. The value can be either base64 encoded or in raw format.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> propertiesFileContent;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  WorkerConfiguration(
    String name, {
    WorkerConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mskconnect/workerConfiguration:WorkerConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.latestRevision = registerOutput<int>('latestRevision');
    this.name = registerOutput<String>('name');
    this.propertiesFileContent =
        registerOutput<String>('propertiesFileContent');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
