// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_application_type_args_doc}
/// The set of arguments for ApplicationType.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_application_type_args_doc}
class ApplicationTypeArgs {
  /// The name of the application type name resource.
  final pulumi.Input<String>? applicationTypeName;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationTypeArgs].
  /// [applicationTypeName] The name of the application type name resource.
  /// [clusterName] The name of the cluster resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ApplicationTypeArgs({
    String? applicationTypeName,
    required String clusterName,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      applicationTypeName = pulumi.Input.asOptionalInput<String>(applicationTypeName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTypeName': ?applicationTypeName,
      'clusterName': clusterName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ApplicationTypeArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationTypeArgs(
      applicationTypeName: map['applicationTypeName'] == null ? null : map['applicationTypeName'] as String,
      clusterName: map['clusterName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

