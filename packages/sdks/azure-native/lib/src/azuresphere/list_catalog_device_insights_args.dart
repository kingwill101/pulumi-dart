// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuresphere_list_catalog_device_insights_args_doc}
/// Arguments for listCatalogDeviceInsights.
/// {@endtemplate}
/// {@macro pulumi_azuresphere_list_catalog_device_insights_args_doc}
class ListCatalogDeviceInsightsArgs {
  /// Name of catalog
  final pulumi.Input<String> catalogName;
  /// Filter the result list using the given expression
  final pulumi.Input<String>? filter;
  /// The maximum number of result items per page.
  final pulumi.Input<int>? maxpagesize;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The number of result items to skip.
  final pulumi.Input<int>? skip;
  /// The number of result items to return.
  final pulumi.Input<int>? top;

  /// Creates a new [ListCatalogDeviceInsightsArgs].
  /// [catalogName] Name of catalog
  /// [filter] Filter the result list using the given expression
  /// [maxpagesize] The maximum number of result items per page.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [skip] The number of result items to skip.
  /// [top] The number of result items to return.
  ListCatalogDeviceInsightsArgs({
    required this.catalogName,
    this.filter,
    this.maxpagesize,
    required this.resourceGroupName,
    this.skip,
    this.top,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'filter': ?filter,
      'maxpagesize': ?maxpagesize,
      'resourceGroupName': resourceGroupName,
      'skip': ?skip,
      'top': ?top,
    };
  }

  factory ListCatalogDeviceInsightsArgs.fromMap(Map<String, dynamic> map) {
    return ListCatalogDeviceInsightsArgs(
      catalogName: (map['catalogName'] as String).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      maxpagesize: map['maxpagesize'] == null ? null : (map['maxpagesize']! as int).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      skip: map['skip'] == null ? null : (map['skip']! as int).input(),
      top: map['top'] == null ? null : (map['top']! as int).input(),
    );
  }
}

