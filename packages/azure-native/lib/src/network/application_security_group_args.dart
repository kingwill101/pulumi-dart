// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_application_security_group_args_doc}
/// The set of arguments for ApplicationSecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_network_application_security_group_args_doc}
class ApplicationSecurityGroupArgs {
  /// The name of the application security group.
  final pulumi.Input<String>? applicationSecurityGroupName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationSecurityGroupArgs].
  /// [applicationSecurityGroupName] The name of the application security group.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  ApplicationSecurityGroupArgs({
    String? applicationSecurityGroupName,
    String? id,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      applicationSecurityGroupName = pulumi.Input.asOptionalInput<String>(applicationSecurityGroupName),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSecurityGroupName': ?applicationSecurityGroupName,
      'id': ?id,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ApplicationSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationSecurityGroupArgs(
      applicationSecurityGroupName: map['applicationSecurityGroupName'] == null ? null : map['applicationSecurityGroupName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

