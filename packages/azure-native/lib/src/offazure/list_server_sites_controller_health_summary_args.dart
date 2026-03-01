// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_list_server_sites_controller_health_summary_args_doc}
/// Arguments for listServerSitesControllerHealthSummary.
/// {@endtemplate}
/// {@macro pulumi_offazure_list_server_sites_controller_health_summary_args_doc}
class ListServerSitesControllerHealthSummaryArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name
  final pulumi.Input<String> siteName;

  /// Creates a new [ListServerSitesControllerHealthSummaryArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  ListServerSitesControllerHealthSummaryArgs({
    required String resourceGroupName,
    required String siteName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
    };
  }

  factory ListServerSitesControllerHealthSummaryArgs.fromMap(Map<String, dynamic> map) {
    return ListServerSitesControllerHealthSummaryArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      siteName: map['siteName'] as String,
    );
  }
}

