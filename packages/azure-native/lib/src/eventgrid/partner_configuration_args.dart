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
    String? location,
    PartnerAuthorization? partnerAuthorization,
    String? provisioningState,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      partnerAuthorization = pulumi.Input.asOptionalInput<PartnerAuthorization>(partnerAuthorization),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : map['location'] as String,
      partnerAuthorization: map['partnerAuthorization'] == null ? null : PartnerAuthorization.fromMap((map['partnerAuthorization'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

