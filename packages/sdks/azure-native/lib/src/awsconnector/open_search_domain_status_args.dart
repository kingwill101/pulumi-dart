// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_search_domain_status_properties.dart';

/// {@template pulumi_awsconnector_open_search_domain_status_args_doc}
/// The set of arguments for OpenSearchDomainStatus.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_open_search_domain_status_args_doc}
class OpenSearchDomainStatusArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of OpenSearchDomainStatus
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<OpenSearchDomainStatusProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [OpenSearchDomainStatusArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of OpenSearchDomainStatus
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const OpenSearchDomainStatusArgs({
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<OpenSearchDomainStatusProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory OpenSearchDomainStatusArgs.fromMap(Map<String, dynamic> map) {
    return OpenSearchDomainStatusArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenSearchDomainStatusProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
