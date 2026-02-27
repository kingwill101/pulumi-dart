import 'package:pulumi/pulumi.dart' as pulumi;
import '../application_app_config/application_app_config.dart';
import '../application_data_source/application_data_source.dart';
import '../application_iam_identity_center_options/application_iam_identity_center_options.dart';
import '../application_timeouts/application_timeouts_opensearch.dart';
import 'application_opensearch_args.dart';

/// Provides an AWS OpenSearch Application resource. OpenSearch Applications provide a user interface for interacting with OpenSearch data and managing OpenSearch resources.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Application with Configuration
///
///
///
/// ### Application with Data Sources
///
///
///
/// ### Application with IAM Identity Center Integration
///
///
///
/// ## Additional Information
///
/// For more information about OpenSearch Applications, see the [AWS OpenSearch Service Developer Guide](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/application.html).
///
/// For information about configuring IAM Identity Center with OpenSearch Applications, see [Using AWS IAM Identity Center authentication](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/application-getting-started.html#create-application).
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearch applications using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/application:Application example app-1234567890abcdef0
/// ```
class ApplicationOpensearch extends pulumi.CustomResource {
  /// Configuration block(s) for OpenSearch application settings. See App Config below.
  late final pulumi.Output<List<ApplicationAppConfig>?> appConfigs;

  /// The Amazon Resource Name (ARN) of the OpenSearch application.
  late final pulumi.Output<String> arn;

  /// Configuration block(s) for data sources to link to the OpenSearch application. See Data Source below.
  late final pulumi.Output<List<ApplicationDataSource>?> dataSources;

  /// Endpoint URL of the OpenSearch application.
  late final pulumi.Output<String> endpoint;

  /// Configuration block for integrating AWS IAM Identity Center with the OpenSearch application. See IAM Identity Center Options below.
  late final pulumi.Output<ApplicationIamIdentityCenterOptions?>
      iamIdentityCenterOptions;

  /// ARN of the KMS key used to encrypt the application's data at rest.
  late final pulumi.Output<String?> kmsKeyArn;

  /// The unique name of the OpenSearch application. Names must be unique within an AWS Region for each account. Must be between 3 and 30 characters, start with a lowercase letter, and contain only lowercase letters, numbers, and hyphens.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ApplicationTimeoutsOpensearch?> timeouts;

  ApplicationOpensearch(
    String name, {
    ApplicationOpensearchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appConfigs = registerOutput<List<ApplicationAppConfig>?>('appConfigs');
    this.arn = registerOutput<String>('arn');
    this.dataSources =
        registerOutput<List<ApplicationDataSource>?>('dataSources');
    this.endpoint = registerOutput<String>('endpoint');
    this.iamIdentityCenterOptions =
        registerOutput<ApplicationIamIdentityCenterOptions?>(
            'iamIdentityCenterOptions');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ApplicationTimeoutsOpensearch?>('timeouts');
  }
}
