// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_redshift_cluster_properties.dart';

/// Definition of RedshiftCluster
class RedshiftClusterProperties {
  /// Amazon Resource Name (ARN)
  final pulumi.Input<String>? arn;

  /// AWS Account ID
  final pulumi.Input<String>? awsAccountId;

  /// AWS Properties
  final pulumi.Input<AwsRedshiftClusterProperties>? awsProperties;

  /// AWS Region
  final pulumi.Input<String>? awsRegion;

  /// AWS Source Schema
  final pulumi.Input<String>? awsSourceSchema;

  /// AWS Tags
  final pulumi.Input<Map<String, String>>? awsTags;

  /// Public Cloud Connectors Resource ID
  final pulumi.Input<String>? publicCloudConnectorsResourceId;

  /// Public Cloud Resource Name
  final pulumi.Input<String>? publicCloudResourceName;

  /// Creates a new [RedshiftClusterProperties].
  /// [arn] Amazon Resource Name (ARN)
  /// [awsAccountId] AWS Account ID
  /// [awsProperties] AWS Properties
  /// [awsRegion] AWS Region
  /// [awsSourceSchema] AWS Source Schema
  /// [awsTags] AWS Tags
  /// [publicCloudConnectorsResourceId] Public Cloud Connectors Resource ID
  /// [publicCloudResourceName] Public Cloud Resource Name
  RedshiftClusterProperties({
    this.arn,
    this.awsAccountId,
    this.awsProperties,
    this.awsRegion,
    this.awsSourceSchema,
    this.awsTags,
    this.publicCloudConnectorsResourceId,
    this.publicCloudResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'awsProperties':
          ?pulumi.Input.mapOptionalInputValue<
            AwsRedshiftClusterProperties,
            Map<String, dynamic>
          >(awsProperties, (value) => value.toMap()),
      'awsRegion': ?awsRegion,
      'awsSourceSchema': ?awsSourceSchema,
      'awsTags': ?awsTags,
      'publicCloudConnectorsResourceId': ?publicCloudConnectorsResourceId,
      'publicCloudResourceName': ?publicCloudResourceName,
    };
  }

  factory RedshiftClusterProperties.fromMap(Map<String, dynamic> map) {
    return RedshiftClusterProperties(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      awsAccountId: (() {
        final guardedValue = map['awsAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      awsProperties: (() {
        final guardedValue = map['awsProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AwsRedshiftClusterProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      awsRegion: (() {
        final guardedValue = map['awsRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      awsSourceSchema: (() {
        final guardedValue = map['awsSourceSchema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      awsTags: (() {
        final guardedValue = map['awsTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      publicCloudConnectorsResourceId: (() {
        final guardedValue = map['publicCloudConnectorsResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicCloudResourceName: (() {
        final guardedValue = map['publicCloudResourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
