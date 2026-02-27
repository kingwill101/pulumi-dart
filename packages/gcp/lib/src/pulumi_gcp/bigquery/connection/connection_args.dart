// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<ConnectionAws>? aws;

  /// Container for connection properties specific to Azure.
  /// Structure is documented below.
  final pulumi.Input<ConnectionAzure>? azure;

  /// Container for connection properties for delegation of access to GCP resources.
  /// Structure is documented below.
  final pulumi.Input<ConnectionCloudResource>? cloudResource;

  /// Connection properties specific to Cloud Spanner
  /// Structure is documented below.
  final pulumi.Input<ConnectionCloudSpanner>? cloudSpanner;

  /// Connection properties specific to the Cloud SQL.
  /// Structure is documented below.
  final pulumi.Input<ConnectionCloudSql>? cloudSql;

  /// Optional connection id that should be assigned to the created connection.
  final pulumi.Input<String>? connectionId;

  /// A descriptive description for the connection
  final pulumi.Input<String>? description;

  /// A descriptive name for the connection
  final pulumi.Input<String>? friendlyName;

  /// Optional. The Cloud KMS key that is used for encryption.
  /// Example: projects/[kms_project_id]/locations/[region]/keyRings/[key_region]/cryptoKeys/[key]
  final pulumi.Input<String>? kmsKeyName;

  /// The geographic location where the connection should reside.
  /// Cloud SQL instance must be in the same location as the connection
  /// with following exceptions: Cloud SQL us-central1 maps to BigQuery US, Cloud SQL europe-west1 maps to BigQuery EU.
  /// Examples: US, EU, asia-northeast1, us-central1, europe-west1.
  /// Spanner Connections same as spanner region
  /// AWS allowed regions are aws-us-east-1
  /// Azure allowed regions are azure-eastus2
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Container for connection properties to execute stored procedures for Apache Spark. resources.
  /// Structure is documented below.
  final pulumi.Input<ConnectionSpark>? spark;

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
      map['aws'] = pulumi.Input.mapOptionalInputValue<ConnectionAws,
          Map<String, dynamic>>(awsValue, (value) => value.toMap());
    }
    final azureValue = azure;
    if (azureValue != null) {
      map['azure'] = pulumi.Input.mapOptionalInputValue<ConnectionAzure,
          Map<String, dynamic>>(azureValue, (value) => value.toMap());
    }
    final cloudResourceValue = cloudResource;
    if (cloudResourceValue != null) {
      map['cloudResource'] = pulumi.Input.mapOptionalInputValue<
          ConnectionCloudResource,
          Map<String, dynamic>>(cloudResourceValue, (value) => value.toMap());
    }
    final cloudSpannerValue = cloudSpanner;
    if (cloudSpannerValue != null) {
      map['cloudSpanner'] = pulumi.Input.mapOptionalInputValue<
          ConnectionCloudSpanner,
          Map<String, dynamic>>(cloudSpannerValue, (value) => value.toMap());
    }
    final cloudSqlValue = cloudSql;
    if (cloudSqlValue != null) {
      map['cloudSql'] = pulumi.Input.mapOptionalInputValue<ConnectionCloudSql,
          Map<String, dynamic>>(cloudSqlValue, (value) => value.toMap());
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
      map['spark'] = pulumi.Input.mapOptionalInputValue<ConnectionSpark,
          Map<String, dynamic>>(sparkValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      aws: pulumi.Input.asOptionalInput<ConnectionAws>(map['aws']),
      azure: pulumi.Input.asOptionalInput<ConnectionAzure>(map['azure']),
      cloudResource: pulumi.Input.asOptionalInput<ConnectionCloudResource>(
          map['cloudResource']),
      cloudSpanner: pulumi.Input.asOptionalInput<ConnectionCloudSpanner>(
          map['cloudSpanner']),
      cloudSql:
          pulumi.Input.asOptionalInput<ConnectionCloudSql>(map['cloudSql']),
      connectionId: pulumi.Input.asOptionalInput<String>(map['connectionId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      friendlyName: pulumi.Input.asOptionalInput<String>(map['friendlyName']),
      kmsKeyName: pulumi.Input.asOptionalInput<String>(map['kmsKeyName']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      spark: pulumi.Input.asOptionalInput<ConnectionSpark>(map['spark']),
    );
  }
}
