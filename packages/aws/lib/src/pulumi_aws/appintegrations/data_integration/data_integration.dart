import 'package:pulumi/pulumi.dart';
import '../data_integration_schedule_config/data_integration_schedule_config.dart';
import 'data_integration_args.dart';

/// Provides an Amazon AppIntegrations Data Integration resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon AppIntegrations Data Integrations using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:appintegrations/dataIntegration:DataIntegration example 12345678-1234-1234-1234-123456789123
/// ```
class DataIntegration extends CustomResource {
  /// The Amazon Resource Name (ARN) of the Data Integration.
  late final Output<String> arn;

  /// Specifies the description of the Data Integration.
  late final Output<String?> description;

  /// Specifies the KMS key Amazon Resource Name (ARN) for the Data Integration.
  late final Output<String> kmsKey;

  /// Specifies the name of the Data Integration.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A block that defines the name of the data and how often it should be pulled from the source. The Schedule Config block is documented below.
  late final Output<DataIntegrationScheduleConfig> scheduleConfig;

  /// Specifies the URI of the data source. Create an AppFlow Connector Profile and reference the name of the profile in the URL. An example of this value for Salesforce is `Salesforce://AppFlow/example` where `example` is the name of the AppFlow Connector Profile.
  late final Output<String> sourceUri;

  /// Tags to apply to the Data Integration. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  DataIntegration(
    String name, {
    DataIntegrationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appintegrations/dataIntegration:DataIntegration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.kmsKey = registerOutput<String>('kmsKey');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.scheduleConfig =
        registerOutput<DataIntegrationScheduleConfig>('scheduleConfig');
    this.sourceUri = registerOutput<String>('sourceUri');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
