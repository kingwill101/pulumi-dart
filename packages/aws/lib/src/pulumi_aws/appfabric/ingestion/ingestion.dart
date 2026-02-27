import 'package:pulumi/pulumi.dart';
import 'ingestion_args.dart';

/// Resource for managing an AWS AppFabric Ingestion.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AppFabric Ingestion using the `app_bundle_identifier` and `arn` separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:appfabric/ingestion:Ingestion example arn:aws:appfabric:[region]:[account]:appbundle/a9b91477-8831-43c0-970c-xxxxxxxxxx,arn:aws:appfabric:[region]:[account]:appbundle/a9b91477-8831-43c0-970c-xxxxxxxxxx/ingestion/32251416-710b-4425-96ca-xxxxxxxxxx
/// ```
class Ingestion extends CustomResource {
  /// Name of the application.
  /// Refer to the AWS Documentation for the [list of valid values](https://docs.aws.amazon.com/appfabric/latest/api/API_CreateIngestion.html#appfabric-CreateIngestion-request-app)
  late final Output<String> app;

  /// Amazon Resource Name (ARN) of the app bundle to use for the request.
  late final Output<String> appBundleArn;

  /// ARN of the Ingestion.
  late final Output<String> arn;

  /// Ingestion type. Valid values are `auditLog`.
  late final Output<String> ingestionType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ID of the application tenant.
  late final Output<String> tenantId;

  Ingestion(
    String name, {
    IngestionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appfabric/ingestion:Ingestion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.app = registerOutput<String>('app');
    this.appBundleArn = registerOutput<String>('appBundleArn');
    this.arn = registerOutput<String>('arn');
    this.ingestionType = registerOutput<String>('ingestionType');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tenantId = registerOutput<String>('tenantId');
  }
}
