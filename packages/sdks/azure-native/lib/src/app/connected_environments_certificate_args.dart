// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_properties.dart';

/// {@template pulumi_app_connected_environments_certificate_args_doc}
/// The set of arguments for ConnectedEnvironmentsCertificate.
/// {@endtemplate}
/// {@macro pulumi_app_connected_environments_certificate_args_doc}
class ConnectedEnvironmentsCertificateArgs {
  /// Name of the Certificate.
  final pulumi.Input<String>? certificateName;
  /// Name of the Connected Environment.
  final pulumi.Input<String> connectedEnvironmentName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Certificate resource specific properties
  final pulumi.Input<CertificateProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConnectedEnvironmentsCertificateArgs].
  /// [certificateName] Name of the Certificate.
  /// [connectedEnvironmentName] Name of the Connected Environment.
  /// [location] The geo-location where the resource lives
  /// [properties] Certificate resource specific properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ConnectedEnvironmentsCertificateArgs({
    this.certificateName,
    required this.connectedEnvironmentName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': ?certificateName,
      'connectedEnvironmentName': connectedEnvironmentName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<CertificateProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ConnectedEnvironmentsCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ConnectedEnvironmentsCertificateArgs(
      certificateName: map['certificateName'] == null ? null : (map['certificateName'] as String).input(),
      connectedEnvironmentName: (map['connectedEnvironmentName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: map['properties'] == null ? null : (CertificateProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

