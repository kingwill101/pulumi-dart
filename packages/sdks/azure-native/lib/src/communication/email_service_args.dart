// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_email_service_args_doc}
/// The set of arguments for EmailService.
/// {@endtemplate}
/// {@macro pulumi_communication_email_service_args_doc}
class EmailServiceArgs {
  /// The location where the email service stores its data at rest.
  final pulumi.Input<String> dataLocation;
  /// The name of the EmailService resource.
  final pulumi.Input<String>? emailServiceName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EmailServiceArgs].
  /// [dataLocation] The location where the email service stores its data at rest.
  /// [emailServiceName] The name of the EmailService resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  EmailServiceArgs({
    required this.dataLocation,
    this.emailServiceName,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLocation': dataLocation,
      'emailServiceName': ?emailServiceName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EmailServiceArgs.fromMap(Map<String, dynamic> map) {
    return EmailServiceArgs(
      dataLocation: (map['dataLocation'] as String).input(),
      emailServiceName: map['emailServiceName'] == null ? null : (map['emailServiceName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

