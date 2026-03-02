// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_authorization.dart';

/// {@template pulumi_eventgrid_partner_configuration_args_doc}
/// The set of arguments for PartnerConfiguration.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_partner_configuration_args_doc}
class PartnerConfigurationArgs {
  /// Location of the resource.
  final pulumi.Input<String>? location;
  /// The details of authorized partners.
  final pulumi.Input<PartnerAuthorization>? partnerAuthorization;
  /// Provisioning state of the partner configuration.
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PartnerConfigurationArgs].
  /// [location] Location of the resource.
  /// [partnerAuthorization] The details of authorized partners.
  /// [provisioningState] Provisioning state of the partner configuration.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [tags] Tags of the resource.
  PartnerConfigurationArgs({
    this.location,
    this.partnerAuthorization,
    this.provisioningState,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'partnerAuthorization': ?pulumi.Input.mapOptionalInputValue<PartnerAuthorization, Map<String, dynamic>>(partnerAuthorization, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PartnerConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return PartnerConfigurationArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      partnerAuthorization: map['partnerAuthorization'] == null ? null : (PartnerAuthorization.fromMap((map['partnerAuthorization'] as Map).cast<String, dynamic>())).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

