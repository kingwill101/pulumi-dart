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
    String? certificateName,
    required String connectedEnvironmentName,
    String? location,
    CertificateProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      certificateName = pulumi.Input.asOptionalInput<String>(certificateName),
      connectedEnvironmentName = pulumi.Input.asInput<String>(connectedEnvironmentName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<CertificateProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      certificateName: map['certificateName'] == null ? null : map['certificateName'] as String,
      connectedEnvironmentName: map['connectedEnvironmentName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : CertificateProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

