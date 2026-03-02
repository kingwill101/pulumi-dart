// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_resource_property.dart';

class SearchResource {
  /// Amazon resource name of resource.
  final pulumi.Input<String> arn;
  /// The date and time that the information about this resource property was last updated.
  final pulumi.Input<String> lastReportedAt;
  /// Amazon Web Services account that owns the resource.
  final pulumi.Input<String> owningAccountId;
  /// Structure with additional type-specific details about the resource.  See `properties` below.
  final pulumi.Input<List<SearchResourceProperty>> properties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String> region;
  /// Type of the resource.
  final pulumi.Input<String> resourceType;
  /// Amazon Web Service that owns the resource and is responsible for creating and updating it.
  final pulumi.Input<String> service;

  /// Creates a new [SearchResource].
  /// [arn] Amazon resource name of resource.
  /// [lastReportedAt] The date and time that the information about this resource property was last updated.
  /// [owningAccountId] Amazon Web Services account that owns the resource.
  /// [properties] Structure with additional type-specific details about the resource.  See `properties` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceType] Type of the resource.
  /// [service] Amazon Web Service that owns the resource and is responsible for creating and updating it.
  SearchResource({
    required this.arn,
    required this.lastReportedAt,
    required this.owningAccountId,
    required this.properties,
    required this.region,
    required this.resourceType,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'lastReportedAt': lastReportedAt,
      'owningAccountId': owningAccountId,
      'properties': pulumi.Input.mapInputValue<List<SearchResourceProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<SearchResourceProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': region,
      'resourceType': resourceType,
      'service': service,
    };
  }

  factory SearchResource.fromMap(Map<String, dynamic> map) {
    return SearchResource(
      arn: (map['arn'] as String).input(),
      lastReportedAt: (map['lastReportedAt'] as String).input(),
      owningAccountId: (map['owningAccountId'] as String).input(),
      properties: (pulumi.Input.decodeList<SearchResourceProperty>(map['properties'], (value) => SearchResourceProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: (map['region'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      service: (map['service'] as String).input(),
    );
  }
}

