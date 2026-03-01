// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_certificate_properties.dart';

/// {@template pulumi_app_managed_certificate_args_doc}
/// The set of arguments for ManagedCertificate.
/// {@endtemplate}
/// {@macro pulumi_app_managed_certificate_args_doc}
class ManagedCertificateArgs {
  /// Name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of the Managed Certificate.
  final pulumi.Input<String>? managedCertificateName;
  /// Certificate resource specific properties
  final pulumi.Input<ManagedCertificateProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManagedCertificateArgs].
  /// [environmentName] Name of the Managed Environment.
  /// [location] The geo-location where the resource lives
  /// [managedCertificateName] Name of the Managed Certificate.
  /// [properties] Certificate resource specific properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ManagedCertificateArgs({
    required pulumi.Output<String> environmentName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedCertificateName,
    pulumi.Output<ManagedCertificateProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      environmentName = pulumi.Input.asInput<String>(environmentName),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedCertificateName = pulumi.Input.asOptionalInput<String>(managedCertificateName),
      properties = pulumi.Input.asOptionalInput<ManagedCertificateProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'location': ?location,
      'managedCertificateName': ?managedCertificateName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ManagedCertificateProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ManagedCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ManagedCertificateArgs(
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedCertificateName: map['managedCertificateName'] == null ? null : pulumi.Output.create<String>(map['managedCertificateName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ManagedCertificateProperties>(ManagedCertificateProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

