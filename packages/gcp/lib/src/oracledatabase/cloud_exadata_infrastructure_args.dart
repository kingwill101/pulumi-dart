// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_exadata_infrastructure_properties.dart';

/// {@template pulumi_oracledatabase_cloud_exadata_infrastructure_cloud_exadata_infrastructure_args_doc}
/// The set of arguments for CloudExadataInfrastructure.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_cloud_exadata_infrastructure_cloud_exadata_infrastructure_args_doc}
class CloudExadataInfrastructureArgs {
  /// The ID of the Exadata Infrastructure to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final pulumi.Input<String> cloudExadataInfrastructureId;
  final pulumi.Input<bool>? deletionProtection;

  /// User friendly name for this resource.
  final pulumi.Input<String>? displayName;

  /// GCP location where Oracle Exadata is hosted.
  final pulumi.Input<String>? gcpOracleZone;

  /// Labels or tags associated with the resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/DbServer`.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Various properties of Exadata Infrastructure.
  /// Structure is documented below.
  final pulumi.Input<CloudExadataInfrastructureProperties>? properties;

  /// Creates a new [CloudExadataInfrastructureArgs].
  /// [cloudExadataInfrastructureId] The ID of the Exadata Infrastructure to create. This value is restricted
  /// [deletionProtection] Optional.
  /// [displayName] User friendly name for this resource.
  /// [gcpOracleZone] GCP location where Oracle Exadata is hosted.
  /// [labels] Labels or tags associated with the resource.
  /// [location] Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/DbServer`.
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] Various properties of Exadata Infrastructure.
  CloudExadataInfrastructureArgs({
    required String cloudExadataInfrastructureId,
    bool? deletionProtection,
    String? displayName,
    String? gcpOracleZone,
    Map<String, String>? labels,
    required String location,
    String? project,
    CloudExadataInfrastructureProperties? properties,
  }) : cloudExadataInfrastructureId = pulumi.Input.asInput<String>(
         cloudExadataInfrastructureId,
       ),
       deletionProtection = pulumi.Input.asOptionalInput<bool>(
         deletionProtection,
       ),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       gcpOracleZone = pulumi.Input.asOptionalInput<String>(gcpOracleZone),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       properties =
           pulumi.Input.asOptionalInput<CloudExadataInfrastructureProperties>(
             properties,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructureId': cloudExadataInfrastructureId,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'gcpOracleZone': ?gcpOracleZone,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            CloudExadataInfrastructureProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
    };
  }

  factory CloudExadataInfrastructureArgs.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructureArgs(
      cloudExadataInfrastructureId:
          map['cloudExadataInfrastructureId'] as String,
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      gcpOracleZone: map['gcpOracleZone'] == null
          ? null
          : map['gcpOracleZone'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      properties: map['properties'] == null
          ? null
          : CloudExadataInfrastructureProperties.fromMap(
              (map['properties'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
