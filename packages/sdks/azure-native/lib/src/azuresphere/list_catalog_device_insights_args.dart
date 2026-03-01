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
    required pulumi.Output<String> catalogName,
    pulumi.Output<String>? filter,
    pulumi.Output<int>? maxpagesize,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<int>? skip,
    pulumi.Output<int>? top,
  }) :
      catalogName = pulumi.Input.asInput<String>(catalogName),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      maxpagesize = pulumi.Input.asOptionalInput<int>(maxpagesize),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skip = pulumi.Input.asOptionalInput<int>(skip),
      top = pulumi.Input.asOptionalInput<int>(top);

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
      catalogName: pulumi.Output.create<String>(map['catalogName'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      maxpagesize: map['maxpagesize'] == null ? null : pulumi.Output.create<int>(map['maxpagesize'] as int),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skip: map['skip'] == null ? null : pulumi.Output.create<int>(map['skip'] as int),
      top: map['top'] == null ? null : pulumi.Output.create<int>(map['top'] as int),
    );
  }
}

