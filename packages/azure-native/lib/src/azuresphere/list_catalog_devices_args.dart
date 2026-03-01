// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuresphere_list_catalog_devices_args_doc}
/// Arguments for listCatalogDevices.
/// {@endtemplate}
/// {@macro pulumi_azuresphere_list_catalog_devices_args_doc}
class ListCatalogDevicesArgs {
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

  /// Creates a new [ListCatalogDevicesArgs].
  /// [catalogName] Name of catalog
  /// [filter] Filter the result list using the given expression
  /// [maxpagesize] The maximum number of result items per page.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [skip] The number of result items to skip.
  /// [top] The number of result items to return.
  ListCatalogDevicesArgs({
    required String catalogName,
    String? filter,
    int? maxpagesize,
    required String resourceGroupName,
    int? skip,
    int? top,
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

  factory ListCatalogDevicesArgs.fromMap(Map<String, dynamic> map) {
    return ListCatalogDevicesArgs(
      catalogName: map['catalogName'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      maxpagesize: map['maxpagesize'] == null ? null : map['maxpagesize'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      skip: map['skip'] == null ? null : map['skip'] as int,
      top: map['top'] == null ? null : map['top'] as int,
    );
  }
}

