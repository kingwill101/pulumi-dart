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
  OpenSearchDomainStatusArgs({
    String? location,
    String? name,
    OpenSearchDomainStatusProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<OpenSearchDomainStatusProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : OpenSearchDomainStatusProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

