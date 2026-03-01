// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_properties.dart';

/// {@template pulumi_app_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_app_certificate_args_doc}
class CertificateArgs {
  /// Name of the Certificate.
  final pulumi.Input<String>? certificateName;
  /// Name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Certificate resource specific properties
  final pulumi.Input<CertificateProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CertificateArgs].
  /// [certificateName] Name of the Certificate.
  /// [environmentName] Name of the Managed Environment.
  /// [location] The geo-location where the resource lives
  /// [properties] Certificate resource specific properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  CertificateArgs({
    String? certificateName,
    required String environmentName,
    String? location,
    CertificateProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      certificateName = pulumi.Input.asOptionalInput<String>(certificateName),
      environmentName = pulumi.Input.asInput<String>(environmentName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<CertificateProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': ?certificateName,
      'environmentName': environmentName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<CertificateProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateName: map['certificateName'] == null ? null : map['certificateName'] as String,
      environmentName: map['environmentName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : CertificateProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

