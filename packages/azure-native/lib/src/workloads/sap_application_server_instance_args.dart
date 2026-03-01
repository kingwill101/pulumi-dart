// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_sap_application_server_instance_args_doc}
/// The set of arguments for SapApplicationServerInstance.
/// {@endtemplate}
/// {@macro pulumi_workloads_sap_application_server_instance_args_doc}
class SapApplicationServerInstanceArgs {
  /// The name of SAP Application Server instance resource.
  final pulumi.Input<String>? applicationInstanceName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Virtual Instances for SAP solutions resource
  final pulumi.Input<String> sapVirtualInstanceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SapApplicationServerInstanceArgs].
  /// [applicationInstanceName] The name of SAP Application Server instance resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sapVirtualInstanceName] The name of the Virtual Instances for SAP solutions resource
  /// [tags] Resource tags.
  SapApplicationServerInstanceArgs({
    String? applicationInstanceName,
    String? location,
    required String resourceGroupName,
    required String sapVirtualInstanceName,
    Map<String, String>? tags,
  }) :
      applicationInstanceName = pulumi.Input.asOptionalInput<String>(applicationInstanceName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sapVirtualInstanceName = pulumi.Input.asInput<String>(sapVirtualInstanceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationInstanceName': ?applicationInstanceName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sapVirtualInstanceName': sapVirtualInstanceName,
      'tags': ?tags,
    };
  }

  factory SapApplicationServerInstanceArgs.fromMap(Map<String, dynamic> map) {
    return SapApplicationServerInstanceArgs(
      applicationInstanceName: map['applicationInstanceName'] == null ? null : map['applicationInstanceName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sapVirtualInstanceName: map['sapVirtualInstanceName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

