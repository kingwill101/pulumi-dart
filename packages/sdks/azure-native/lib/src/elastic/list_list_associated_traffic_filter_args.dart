// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elastic_list_list_associated_traffic_filter_args_doc}
/// Arguments for listListAssociatedTrafficFilter.
/// {@endtemplate}
/// {@macro pulumi_elastic_list_list_associated_traffic_filter_args_doc}
class ListListAssociatedTrafficFilterArgs {
  /// Monitor resource name
  final pulumi.Input<String> monitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListListAssociatedTrafficFilterArgs].
  /// [monitorName] Monitor resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListListAssociatedTrafficFilterArgs({
    required this.monitorName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitorName': monitorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListListAssociatedTrafficFilterArgs.fromMap(Map<String, dynamic> map) {
    return ListListAssociatedTrafficFilterArgs(
      monitorName: (map['monitorName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

