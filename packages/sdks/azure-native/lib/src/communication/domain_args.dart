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
    required this.domainManagement,
    this.domainName,
    required this.emailServiceName,
    this.location,
    required this.resourceGroupName,
    this.tags,
    this.userEngagementTracking,
  });

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
      domainManagement: (map['domainManagement'] as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName']! as String).input(),
      emailServiceName: (map['emailServiceName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      userEngagementTracking: map['userEngagementTracking'] == null ? null : (map['userEngagementTracking']! as String).input(),
    );
  }
}

