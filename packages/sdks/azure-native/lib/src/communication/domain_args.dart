// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_communication_domain_args_doc}
class DomainArgs {
  /// Describes how a Domains resource is being managed.
  final pulumi.Input<dynamic> domainManagement;
  /// The name of the Domains resource.
  final pulumi.Input<String?>? domainName;
  /// The name of the EmailService resource.
  final pulumi.Input<String> emailServiceName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Describes whether user engagement tracking is enabled or disabled.
  final pulumi.Input<dynamic>? userEngagementTracking;

  /// Creates a new [DomainArgs].
  /// [domainManagement] Describes how a Domains resource is being managed.
  /// [domainName] The name of the Domains resource.
  /// [emailServiceName] The name of the EmailService resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [userEngagementTracking] Describes whether user engagement tracking is enabled or disabled.
  const DomainArgs({
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
      domainManagement: pulumi.Input.fromValue(map['domainManagement']),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailServiceName: pulumi.Input.fromValue(map['emailServiceName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userEngagementTracking: (() { final guardedValue = map['userEngagementTracking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
