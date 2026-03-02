// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_cloud_profile.dart';

/// {@template pulumi_hybridconnectivity_public_cloud_connector_args_doc}
/// The set of arguments for PublicCloudConnector.
/// {@endtemplate}
/// {@macro pulumi_hybridconnectivity_public_cloud_connector_args_doc}
class PublicCloudConnectorArgs {
  /// Cloud profile for AWS.
  final pulumi.Input<AwsCloudProfile> awsCloudProfile;
  /// Host cloud the public cloud connector.
  final pulumi.Input<String> hostType;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Represent public cloud connectors resource.
  final pulumi.Input<String>? publicCloudConnector;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PublicCloudConnectorArgs].
  /// [awsCloudProfile] Cloud profile for AWS.
  /// [hostType] Host cloud the public cloud connector.
  /// [location] The geo-location where the resource lives
  /// [publicCloudConnector] Represent public cloud connectors resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  PublicCloudConnectorArgs({
    required this.awsCloudProfile,
    required this.hostType,
    this.location,
    this.publicCloudConnector,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsCloudProfile': pulumi.Input.mapInputValue<AwsCloudProfile, Map<String, dynamic>>(awsCloudProfile, (value) => value.toMap()),
      'hostType': hostType,
      'location': ?location,
      'publicCloudConnector': ?publicCloudConnector,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PublicCloudConnectorArgs.fromMap(Map<String, dynamic> map) {
    return PublicCloudConnectorArgs(
      awsCloudProfile: (AwsCloudProfile.fromMap((map['awsCloudProfile'] as Map).cast<String, dynamic>())).input(),
      hostType: (map['hostType'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      publicCloudConnector: map['publicCloudConnector'] == null ? null : (map['publicCloudConnector'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

