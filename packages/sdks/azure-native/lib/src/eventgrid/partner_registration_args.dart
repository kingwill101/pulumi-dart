// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_partner_registration_args_doc}
/// The set of arguments for PartnerRegistration.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_partner_registration_args_doc}
class PartnerRegistrationArgs {
  /// Location of the resource.
  final pulumi.Input<String>? location;
  /// The immutableId of the corresponding partner registration.
  /// Note: This property is marked for deprecation and is not supported in any future GA API version
  final pulumi.Input<String>? partnerRegistrationImmutableId;
  /// Name of the partner registration.
  final pulumi.Input<String>? partnerRegistrationName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PartnerRegistrationArgs].
  /// [location] Location of the resource.
  /// [partnerRegistrationImmutableId] The immutableId of the corresponding partner registration.
  /// [partnerRegistrationName] Name of the partner registration.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [tags] Tags of the resource.
  PartnerRegistrationArgs({
    this.location,
    this.partnerRegistrationImmutableId,
    this.partnerRegistrationName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'partnerRegistrationImmutableId': ?partnerRegistrationImmutableId,
      'partnerRegistrationName': ?partnerRegistrationName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PartnerRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return PartnerRegistrationArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      partnerRegistrationImmutableId: map['partnerRegistrationImmutableId'] == null ? null : (map['partnerRegistrationImmutableId'] as String).input(),
      partnerRegistrationName: map['partnerRegistrationName'] == null ? null : (map['partnerRegistrationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

