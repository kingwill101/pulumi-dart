import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_args.dart';

/// Manages an Amazon MQ configuration. Use this resource to create and manage broker configurations for ActiveMQ and RabbitMQ brokers.
///
/// ## Example Usage
///
/// ### ActiveMQ
///
///
///
/// ### RabbitMQ
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MQ Configurations using the configuration ID. For example:
///
/// ```sh
/// $ pulumi import aws:mq/configuration:Configuration example c-0187d1eb-88c8-475a-9b79-16ef5a10c94f
/// ```
class Configuration extends pulumi.CustomResource {
  /// ARN of the configuration.
  late final pulumi.Output<String> arn;

  /// Authentication strategy associated with the configuration. Valid values are `simple` and `ldap`. `ldap` is not supported for RabbitMQ engine type.
  late final pulumi.Output<String> authenticationStrategy;

  /// Broker configuration in XML format for ActiveMQ or Cuttlefish format for RabbitMQ. See [AWS documentation](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/amazon-mq-broker-configuration-parameters.html) for supported parameters and format of the XML.
  late final pulumi.Output<String> data;

  /// Description of the configuration.
  late final pulumi.Output<String?> description;

  /// Type of broker engine. Valid values are `ActiveMQ` and `RabbitMQ`.
  late final pulumi.Output<String> engineType;

  /// Version of the broker engine.
  late final pulumi.Output<String> engineVersion;

  /// Latest revision of the configuration.
  late final pulumi.Output<int> latestRevision;

  /// Name of the configuration.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Configuration(
    String name, {
    ConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mq/configuration:Configuration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authenticationStrategy =
        registerOutput<String>('authenticationStrategy');
    this.data = registerOutput<String>('data');
    this.description = registerOutput<String?>('description');
    this.engineType = registerOutput<String>('engineType');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.latestRevision = registerOutput<int>('latestRevision');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
