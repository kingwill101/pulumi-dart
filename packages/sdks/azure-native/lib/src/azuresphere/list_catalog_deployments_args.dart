// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuresphere_list_catalog_deployments_args_doc}
/// Arguments for listCatalogDeployments.
/// {@endtemplate}
/// {@macro pulumi_azuresphere_list_catalog_deployments_args_doc}
class ListCatalogDeploymentsArgs {
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

  /// Creates a new [ListCatalogDeploymentsArgs].
  /// [catalogName] Name of catalog
  /// [filter] Filter the result list using the given expression
  /// [maxpagesize] The maximum number of result items per page.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [skip] The number of result items to skip.
  /// [top] The number of result items to return.
  ListCatalogDeploymentsArgs({
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

  factory ListCatalogDeploymentsArgs.fromMap(Map<String, dynamic> map) {
    return ListCatalogDeploymentsArgs(
      catalogName: pulumi.Input.fromValue(map['catalogName'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxpagesize: (() { final guardedValue = map['maxpagesize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      skip: (() { final guardedValue = map['skip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      top: (() { final guardedValue = map['top']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

