// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dashboard_dashboard_args_doc}
/// The set of arguments for Dashboard.
/// {@endtemplate}
/// {@macro pulumi_dashboard_dashboard_args_doc}
class DashboardArgs {
  /// The name of the Azure Managed Dashboard.
  final pulumi.Input<String>? dashboardName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DashboardArgs].
  /// [dashboardName] The name of the Azure Managed Dashboard.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  DashboardArgs({
    pulumi.Output<String>? dashboardName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dashboardName = pulumi.Input.asOptionalInput<String>(dashboardName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardName': ?dashboardName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DashboardArgs.fromMap(Map<String, dynamic> map) {
    return DashboardArgs(
      dashboardName: map['dashboardName'] == null ? null : pulumi.Output.create<String>(map['dashboardName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

