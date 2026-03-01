// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_server_certificate_properties.dart';

/// {@template pulumi_awsconnector_iam_server_certificate_args_doc}
/// The set of arguments for IamServerCertificate.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_iam_server_certificate_args_doc}
class IamServerCertificateArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of IamServerCertificate
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<IamServerCertificateProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IamServerCertificateArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of IamServerCertificate
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  IamServerCertificateArgs({
    String? location,
    String? name,
    IamServerCertificateProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<IamServerCertificateProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<IamServerCertificateProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory IamServerCertificateArgs.fromMap(Map<String, dynamic> map) {
    return IamServerCertificateArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : IamServerCertificateProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

