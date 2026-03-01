// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_communication_domain_args_doc}
class DomainArgs {
  /// Describes how a Domains resource is being managed.
  final pulumi.Input<String> domainManagement;
  /// The name of the Domains resource.
  final pulumi.Input<String>? domainName;
  /// The name of the EmailService resource.
  final pulumi.Input<String> emailServiceName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Describes whether user engagement tracking is enabled or disabled.
  final pulumi.Input<String>? userEngagementTracking;

  /// Creates a new [DomainArgs].
  /// [domainManagement] Describes how a Domains resource is being managed.
  /// [domainName] The name of the Domains resource.
  /// [emailServiceName] The name of the EmailService resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [userEngagementTracking] Describes whether user engagement tracking is enabled or disabled.
  DomainArgs({
    required String domainManagement,
    String? domainName,
    required String emailServiceName,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
    String? userEngagementTracking,
  }) :
      domainManagement = pulumi.Input.asInput<String>(domainManagement),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      emailServiceName = pulumi.Input.asInput<String>(emailServiceName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userEngagementTracking = pulumi.Input.asOptionalInput<String>(userEngagementTracking);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainManagement': domainManagement,
      'domainName': ?domainName,
      'emailServiceName': emailServiceName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'userEngagementTracking': ?userEngagementTracking,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      domainManagement: map['domainManagement'] as String,
      domainName: map['domainName'] == null ? null : map['domainName'] as String,
      emailServiceName: map['emailServiceName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      userEngagementTracking: map['userEngagementTracking'] == null ? null : map['userEngagementTracking'] as String,
    );
  }
}

