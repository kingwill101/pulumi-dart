import 'package:pulumi/pulumi.dart' as pulumi;
import '../connection_aws/connection_aws.dart';
import '../connection_azure/connection_azure.dart';
import '../connection_cloud_resource/connection_cloud_resource.dart';
import '../connection_cloud_spanner/connection_cloud_spanner.dart';
import '../connection_cloud_sql/connection_cloud_sql.dart';
import '../connection_spark/connection_spark.dart';
import 'connection_args.dart';

/// A connection allows BigQuery connections to external data sources..
///
///
/// To get more information about Connection, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/bigqueryconnection/rest/v1/projects.locations.connections/create)
/// * How-to Guides
/// * [Cloud SQL federated queries](https://cloud.google.com/bigquery/docs/cloud-sql-federated-queries)
///
///
///
/// ## Example Usage
///
/// ### Bigquery Connection Cloud Resource
///
///
///
/// ### Bigquery Connection Basic
///
///
///
/// ### Bigquery Connection Full
///
///
///
/// ### Bigquery Connection Aws
///
///
///
/// ### Bigquery Connection Azure
///
///
///
/// ### Bigquery Connection Cloudspanner
///
///
///
/// ### Bigquery Connection Cloudspanner Databoost
///
///
///
/// ### Bigquery Connection Spark
///
///
///
/// ### Bigquery Connection Sql With Cmek
///
///
///
///
/// ## Import
///
/// Connection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connections/{{connection_id}}`
///
/// * `{{project}}/{{location}}/{{connection_id}}`
///
/// * `{{location}}/{{connection_id}}`
///
/// When using the `pulumi import` command, Connection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/connection:Connection default projects/{{project}}/locations/{{location}}/connections/{{connection_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/connection:Connection default {{project}}/{{location}}/{{connection_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/connection:Connection default {{location}}/{{connection_id}}
/// ```
class Connection extends pulumi.CustomResource {
  /// Connection properties specific to Amazon Web Services.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionAws?> aws;

  /// Container for connection properties specific to Azure.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionAzure?> azure;

  /// Container for connection properties for delegation of access to GCP resources.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionCloudResource?> cloudResource;

  /// Connection properties specific to Cloud Spanner
  /// Structure is documented below.
  late final pulumi.Output<ConnectionCloudSpanner?> cloudSpanner;

  /// Connection properties specific to the Cloud SQL.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionCloudSql?> cloudSql;

  /// Optional connection id that should be assigned to the created connection.
  late final pulumi.Output<String> connectionId;

  /// A descriptive description for the connection
  late final pulumi.Output<String?> description;

  /// A descriptive name for the connection
  late final pulumi.Output<String?> friendlyName;

  /// True if the connection has credential assigned.
  late final pulumi.Output<bool> hasCredential;

  /// Optional. The Cloud KMS key that is used for encryption.
  /// Example: projects/[kms_project_id]/locations/[region]/keyRings/[key_region]/cryptoKeys/[key]
  late final pulumi.Output<String?> kmsKeyName;

  /// The geographic location where the connection should reside.
  /// Cloud SQL instance must be in the same location as the connection
  /// with following exceptions: Cloud SQL us-central1 maps to BigQuery US, Cloud SQL europe-west1 maps to BigQuery EU.
  /// Examples: US, EU, asia-northeast1, us-central1, europe-west1.
  /// Spanner Connections same as spanner region
  /// AWS allowed regions are aws-us-east-1
  /// Azure allowed regions are azure-eastus2
  late final pulumi.Output<String?> location;

  /// The resource name of the connection in the form of:
  /// "projects/{project_id}/locations/{location_id}/connections/{connectionId}"
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Container for connection properties to execute stored procedures for Apache Spark. resources.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionSpark?> spark;

  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aws = registerOutput<ConnectionAws?>('aws');
    this.azure = registerOutput<ConnectionAzure?>('azure');
    this.cloudResource =
        registerOutput<ConnectionCloudResource?>('cloudResource');
    this.cloudSpanner = registerOutput<ConnectionCloudSpanner?>('cloudSpanner');
    this.cloudSql = registerOutput<ConnectionCloudSql?>('cloudSql');
    this.connectionId = registerOutput<String>('connectionId');
    this.description = registerOutput<String?>('description');
    this.friendlyName = registerOutput<String?>('friendlyName');
    this.hasCredential = registerOutput<bool>('hasCredential');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.spark = registerOutput<ConnectionSpark?>('spark');
  }
}
