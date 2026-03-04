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
      dataLocation: pulumi.Input.fromValue(map['dataLocation'] as String),
      emailServiceName: (() {
        final guardedValue = map['emailServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
