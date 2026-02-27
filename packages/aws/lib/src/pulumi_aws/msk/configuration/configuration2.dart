import 'package:pulumi/pulumi.dart';
import 'configuration_args2.dart';

/// Manages an Amazon Managed Streaming for Kafka configuration. More information can be found on the [MSK Developer Guide](https://docs.aws.amazon.com/msk/latest/developerguide/msk-configuration.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MSK configurations using the configuration ARN. For example:
///
/// ```sh
/// $ pulumi import aws:msk/configuration:Configuration example arn:aws:kafka:us-west-2:123456789012:configuration/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3
/// ```
class Configuration2 extends CustomResource {
  /// Amazon Resource Name (ARN) of the configuration.
  late final Output<String> arn;

  /// Description of the configuration.
  late final Output<String?> description;

  /// List of Apache Kafka versions which can use this configuration.
  late final Output<List<String>?> kafkaVersions;

  /// Latest revision of the configuration.
  late final Output<int> latestRevision;

  /// Name of the configuration.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Contents of the server.properties file. Supported properties are documented in the [MSK Developer Guide](https://docs.aws.amazon.com/msk/latest/developerguide/msk-configuration-properties.html).
  late final Output<String> serverProperties;

  Configuration2(
    String name, {
    ConfigurationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:msk/configuration:Configuration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.kafkaVersions = registerOutput<List<String>?>('kafkaVersions');
    this.latestRevision = registerOutput<int>('latestRevision');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.serverProperties = registerOutput<String>('serverProperties');
  }
}
