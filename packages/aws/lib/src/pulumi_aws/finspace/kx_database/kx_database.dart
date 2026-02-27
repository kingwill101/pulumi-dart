import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_database_args.dart';

/// Resource for managing an AWS FinSpace Kx Database.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an AWS FinSpace Kx Database using the `id` (environment ID and database name, comma-delimited). For example:
///
/// ```sh
/// $ pulumi import aws:finspace/kxDatabase:KxDatabase example n3ceo7wqxoxcti5tujqwzs,my-tf-kx-database
/// ```
class KxDatabase extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) identifier of the KX database.
  late final pulumi.Output<String> arn;

  /// Timestamp at which the databse is created in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final pulumi.Output<String> createdTimestamp;

  /// Description of the KX database.
  late final pulumi.Output<String?> description;

  /// Unique identifier for the KX environment.
  late final pulumi.Output<String> environmentId;

  /// Last timestamp at which the database was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final pulumi.Output<String> lastModifiedTimestamp;

  /// Name of the KX database.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  KxDatabase(
    String name, {
    KxDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxDatabase:KxDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdTimestamp = registerOutput<String>('createdTimestamp');
    this.description = registerOutput<String?>('description');
    this.environmentId = registerOutput<String>('environmentId');
    this.lastModifiedTimestamp =
        registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
