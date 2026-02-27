import 'package:pulumi/pulumi.dart';
import '../serverless_collection_timeouts/serverless_collection_timeouts.dart';
import 'serverless_collection_args.dart';

/// Resource for managing an AWS OpenSearch Serverless Collection.
///
/// > **NOTE:** An `aws.opensearch.ServerlessCollection` cannot be created without having an applicable encryption security policy. Use the `depends_on` meta-argument to define this dependency.
///
/// > **NOTE:** An `aws.opensearch.ServerlessCollection` is not accessible without configuring an applicable network security policy. Data cannot be accessed without configuring an applicable data access policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearchServerless Collection using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/serverlessCollection:ServerlessCollection example example
/// ```
class ServerlessCollection extends CustomResource {
  /// Amazon Resource Name (ARN) of the collection.
  late final Output<String> arn;

  /// Collection-specific endpoint used to submit index, search, and data upload requests to an OpenSearch Serverless collection.
  late final Output<String> collectionEndpoint;

  /// Collection-specific endpoint used to access OpenSearch Dashboards.
  late final Output<String> dashboardEndpoint;

  /// Description of the collection.
  late final Output<String?> description;

  /// The ARN of the Amazon Web Services KMS key used to encrypt the collection.
  late final Output<String> kmsKeyArn;

  /// Name of the collection.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Indicates whether standby replicas should be used for a collection. One of `ENABLED` or `DISABLED`. Defaults to `ENABLED`.
  late final Output<String> standbyReplicas;

  /// A map of tags to assign to the collection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;
  late final Output<ServerlessCollectionTimeouts?> timeouts;

  /// Type of collection. One of `SEARCH`, `TIMESERIES`, or `VECTORSEARCH`. Defaults to `TIMESERIES`.
  late final Output<String> type;

  ServerlessCollection(
    String name, {
    ServerlessCollectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/serverlessCollection:ServerlessCollection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.collectionEndpoint = registerOutput<String>('collectionEndpoint');
    this.dashboardEndpoint = registerOutput<String>('dashboardEndpoint');
    this.description = registerOutput<String?>('description');
    this.kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.standbyReplicas = registerOutput<String>('standbyReplicas');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ServerlessCollectionTimeouts?>('timeouts');
    this.type = registerOutput<String>('type');
  }
}
