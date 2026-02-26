// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connection_aws/connection_aws.dart';
import '../connection_azure/connection_azure.dart';
import '../connection_cloud_resource/connection_cloud_resource.dart';
import '../connection_cloud_spanner/connection_cloud_spanner.dart';
import '../connection_cloud_sql/connection_cloud_sql.dart';
import '../connection_spark/connection_spark.dart';

/// The set of arguments for Connection.
class ConnectionArgs {
  /// Connection properties specific to Amazon Web Services.
  /// Structure is documented below.
  final Input<ConnectionAws>? aws;

  /// Container for connection properties specific to Azure.
  /// Structure is documented below.
  final Input<ConnectionAzure>? azure;

  /// Container for connection properties for delegation of access to GCP resources.
  /// Structure is documented below.
  final Input<ConnectionCloudResource>? cloudResource;

  /// Connection properties specific to Cloud Spanner
  /// Structure is documented below.
  final Input<ConnectionCloudSpanner>? cloudSpanner;

  /// Connection properties specific to the Cloud SQL.
  /// Structure is documented below.
  final Input<ConnectionCloudSql>? cloudSql;

  /// Optional connection id that should be assigned to the created connection.
  final Input<String>? connectionId;

  /// A descriptive description for the connection
  final Input<String>? description;

  /// A descriptive name for the connection
  final Input<String>? friendlyName;

  /// Optional. The Cloud KMS key that is used for encryption.
  /// Example: projects/<span pulumi-lang-nodejs="[kmsProjectId]" pulumi-lang-dotnet="[KmsProjectId]" pulumi-lang-go="[kmsProjectId]" pulumi-lang-python="[kms_project_id]" pulumi-lang-yaml="[kmsProjectId]" pulumi-lang-java="[kmsProjectId]">[kms_project_id]</span>/locations/[region]/keyRings/<span pulumi-lang-nodejs="[keyRegion]" pulumi-lang-dotnet="[KeyRegion]" pulumi-lang-go="[keyRegion]" pulumi-lang-python="[key_region]" pulumi-lang-yaml="[keyRegion]" pulumi-lang-java="[keyRegion]">[key_region]</span>/cryptoKeys/[key]
  final Input<String>? kmsKeyName;

  /// The geographic location where the connection should reside.
  /// Cloud SQL instance must be in the same location as the connection
  /// with following exceptions: Cloud SQL us-central1 maps to BigQuery US, Cloud SQL europe-west1 maps to BigQuery EU.
  /// Examples: US, EU, asia-northeast1, us-central1, europe-west1.
  /// Spanner Connections same as spanner region
  /// AWS allowed regions are aws-us-east-1
  /// Azure allowed regions are azure-eastus2
  final Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Container for connection properties to execute stored procedures for Apache Spark. resources.
  /// Structure is documented below.
  final Input<ConnectionSpark>? spark;

  ConnectionArgs({
    this.aws,
    this.azure,
    this.cloudResource,
    this.cloudSpanner,
    this.cloudSql,
    this.connectionId,
    this.description,
    this.friendlyName,
    this.kmsKeyName,
    this.location,
    this.project,
    this.spark,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsValue = aws;
    if (awsValue != null) {
      map['aws'] =
          Input.mapOptionalInputValue<ConnectionAws, Map<String, dynamic>>(
              awsValue, (value) => value.toMap());
    }
    final azureValue = azure;
    if (azureValue != null) {
      map['azure'] =
          Input.mapOptionalInputValue<ConnectionAzure, Map<String, dynamic>>(
              azureValue, (value) => value.toMap());
    }
    final cloudResourceValue = cloudResource;
    if (cloudResourceValue != null) {
      map['cloudResource'] = Input.mapOptionalInputValue<
          ConnectionCloudResource,
          Map<String, dynamic>>(cloudResourceValue, (value) => value.toMap());
    }
    final cloudSpannerValue = cloudSpanner;
    if (cloudSpannerValue != null) {
      map['cloudSpanner'] = Input.mapOptionalInputValue<ConnectionCloudSpanner,
          Map<String, dynamic>>(cloudSpannerValue, (value) => value.toMap());
    }
    final cloudSqlValue = cloudSql;
    if (cloudSqlValue != null) {
      map['cloudSql'] =
          Input.mapOptionalInputValue<ConnectionCloudSql, Map<String, dynamic>>(
              cloudSqlValue, (value) => value.toMap());
    }
    final connectionIdValue = connectionId;
    if (connectionIdValue != null) {
      map['connectionId'] = connectionIdValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final friendlyNameValue = friendlyName;
    if (friendlyNameValue != null) {
      map['friendlyName'] = friendlyNameValue;
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sparkValue = spark;
    if (sparkValue != null) {
      map['spark'] =
          Input.mapOptionalInputValue<ConnectionSpark, Map<String, dynamic>>(
              sparkValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      aws: Input.asOptionalInput<ConnectionAws>(map['aws']),
      azure: Input.asOptionalInput<ConnectionAzure>(map['azure']),
      cloudResource:
          Input.asOptionalInput<ConnectionCloudResource>(map['cloudResource']),
      cloudSpanner:
          Input.asOptionalInput<ConnectionCloudSpanner>(map['cloudSpanner']),
      cloudSql: Input.asOptionalInput<ConnectionCloudSql>(map['cloudSql']),
      connectionId: Input.asOptionalInput<String>(map['connectionId']),
      description: Input.asOptionalInput<String>(map['description']),
      friendlyName: Input.asOptionalInput<String>(map['friendlyName']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      spark: Input.asOptionalInput<ConnectionSpark>(map['spark']),
    );
  }
}
