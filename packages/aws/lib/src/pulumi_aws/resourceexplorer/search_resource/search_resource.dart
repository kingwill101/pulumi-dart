// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../search_resource_property/search_resource_property.dart';

class SearchResource {
  /// Amazon resource name of resource.
  final String arn;

  /// The date and time that the information about this resource property was last updated.
  final String lastReportedAt;

  /// Amazon Web Services account that owns the resource.
  final String owningAccountId;

  /// Structure with additional type-specific details about the resource.  See <span pulumi-lang-nodejs="`properties`" pulumi-lang-dotnet="`Properties`" pulumi-lang-go="`properties`" pulumi-lang-python="`properties`" pulumi-lang-yaml="`properties`" pulumi-lang-java="`properties`">`properties`</span> below.
  final List<SearchResourceProperty> properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String region;

  /// Type of the resource.
  final String resourceType;

  /// Amazon Web Service that owns the resource and is responsible for creating and updating it.
  final String service;

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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['lastReportedAt'] = lastReportedAt;
    map['owningAccountId'] = owningAccountId;
    map['properties'] =
        Input.encodeList<SearchResourceProperty, Map<String, dynamic>>(
            properties, (value) => value.toMap());
    map['region'] = region;
    map['resourceType'] = resourceType;
    map['service'] = service;
    return map;
  }

  factory SearchResource.fromMap(Map<String, dynamic> map) {
    return SearchResource(
      arn: map['arn'] as String,
      lastReportedAt: map['lastReportedAt'] as String,
      owningAccountId: map['owningAccountId'] as String,
      properties: Input.decodeList<SearchResourceProperty>(
          map['properties'],
          (value) => SearchResourceProperty.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      resourceType: map['resourceType'] as String,
      service: map['service'] as String,
    );
  }
}
