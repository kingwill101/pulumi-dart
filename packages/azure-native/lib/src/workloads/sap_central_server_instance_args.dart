// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_sap_central_server_instance_args_doc}
/// The set of arguments for SapCentralServerInstance.
/// {@endtemplate}
/// {@macro pulumi_workloads_sap_central_server_instance_args_doc}
class SapCentralServerInstanceArgs {
  /// Central Services Instance resource name string modeled as parameter for auto generation to work correctly.
  final pulumi.Input<String>? centralInstanceName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Virtual Instances for SAP solutions resource
  final pulumi.Input<String> sapVirtualInstanceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SapCentralServerInstanceArgs].
  /// [centralInstanceName] Central Services Instance resource name string modeled as parameter for auto generation to work correctly.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sapVirtualInstanceName] The name of the Virtual Instances for SAP solutions resource
  /// [tags] Resource tags.
  SapCentralServerInstanceArgs({
    String? centralInstanceName,
    String? location,
    required String resourceGroupName,
    required String sapVirtualInstanceName,
    Map<String, String>? tags,
  }) :
      centralInstanceName = pulumi.Input.asOptionalInput<String>(centralInstanceName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sapVirtualInstanceName = pulumi.Input.asInput<String>(sapVirtualInstanceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'centralInstanceName': ?centralInstanceName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sapVirtualInstanceName': sapVirtualInstanceName,
      'tags': ?tags,
    };
  }

  factory SapCentralServerInstanceArgs.fromMap(Map<String, dynamic> map) {
    return SapCentralServerInstanceArgs(
      centralInstanceName: map['centralInstanceName'] == null ? null : map['centralInstanceName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sapVirtualInstanceName: map['sapVirtualInstanceName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

