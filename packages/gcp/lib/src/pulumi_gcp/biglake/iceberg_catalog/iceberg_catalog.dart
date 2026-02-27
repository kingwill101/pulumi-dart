import 'package:pulumi/pulumi.dart' as pulumi;
import '../iceberg_catalog_replica/iceberg_catalog_replica.dart';
import 'iceberg_catalog_args.dart';

/// IcebergCatalogs are top-level containers for Apache Iceberg REST Catalog served Namespaces and Tables.
///
///
/// To get more information about IcebergCatalog, see:
/// * How-to Guides
/// * [Use the BigLake metastore Iceberg REST catalog](https://docs.cloud.google.com/biglake/docs/blms-rest-catalog)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource's IAM,
/// you must specify a `billing_project` and set `user_project_override` to true
/// in the provider configuration. Otherwise the IAM API will return 403s.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billing_project` you defined.
///
/// ## Example Usage
///
/// ### Biglake Iceberg Catalog
///
///
///
///
/// ## Import
///
/// IcebergCatalog can be imported using any of these accepted formats:
///
/// * `iceberg/v1/restcatalog/extensions/projects/{{project}}/catalogs/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, IcebergCatalog can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:biglake/icebergCatalog:IcebergCatalog default iceberg/v1/restcatalog/extensions/projects/{{project}}/catalogs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:biglake/icebergCatalog:IcebergCatalog default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:biglake/icebergCatalog:IcebergCatalog default {{name}}
/// ```
class IcebergCatalog extends pulumi.CustomResource {
  /// Output only. The service account used for credential vending. It might be empty if credential vending was never enabled for the catalog.
  late final pulumi.Output<String> biglakeServiceAccount;

  /// The catalog type of the IcebergCatalog. Currently only supports the type for Google Cloud Storage Buckets.
  /// Possible values are: `CATALOG_TYPE_GCS_BUCKET`.
  late final pulumi.Output<String> catalogType;

  /// Output only. The creation time of the IcebergCatalog.
  late final pulumi.Output<String> createTime;

  /// The credential mode used for the catalog. CREDENTIAL_MODE_END_USER - End user credentials, default. The authenticating user must have access to the catalog resources and the corresponding Google Cloud Storage files. CREDENTIAL_MODE_VENDED_CREDENTIALS - Use credential vending. The authenticating user must have access to the catalog resources and the system will provide the caller with downscoped credentials to access the Google Cloud Storage files. All table operations in this mode would require `X-Iceberg-Access-Delegation` header with `vended-credentials` value included. System will generate a service account and the catalog administrator must grant the service account appropriate permissions.
  /// Possible values are: `CREDENTIAL_MODE_END_USER`, `CREDENTIAL_MODE_VENDED_CREDENTIALS`.
  late final pulumi.Output<String> credentialMode;

  /// Output only. The default storage location for the catalog, e.g., `gs://my-bucket`.
  late final pulumi.Output<String> defaultLocation;

  /// The name of the IcebergCatalog. Format:
  /// projects/{project_id_or_number}/catalogs/{iceberg_catalog_id}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Output only. The replicas for the catalog metadata.
  /// Structure is documented below.
  late final pulumi.Output<List<IcebergCatalogReplica>> replicas;

  /// Output only. The GCP region(s) where the physical metadata for the tables is stored, e.g. `us-central1`, `nam4` or `us`. This will contain one value for all locations, except for the catalogs that are configured to use custom dual region buckets.
  late final pulumi.Output<List<String>> storageRegions;

  /// Output only. The last modification time of the IcebergCatalog.
  late final pulumi.Output<String> updateTime;

  IcebergCatalog(
    String name, {
    IcebergCatalogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/icebergCatalog:IcebergCatalog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.biglakeServiceAccount =
        registerOutput<String>('biglakeServiceAccount');
    this.catalogType = registerOutput<String>('catalogType');
    this.createTime = registerOutput<String>('createTime');
    this.credentialMode = registerOutput<String>('credentialMode');
    this.defaultLocation = registerOutput<String>('defaultLocation');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.replicas = registerOutput<List<IcebergCatalogReplica>>('replicas');
    this.storageRegions = registerOutput<List<String>>('storageRegions');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
