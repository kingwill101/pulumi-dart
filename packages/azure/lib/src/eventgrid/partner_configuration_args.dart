// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_configuration_partner_authorization.dart';

/// {@template pulumi_eventgrid_partner_configuration_partner_configuration_args_doc}
/// The set of arguments for PartnerConfiguration.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_partner_configuration_partner_configuration_args_doc}
class PartnerConfigurationArgs {
  /// Time used to validate the authorization expiration time for each authorized partner. Defaults to `7`.
  final pulumi.Input<int>? defaultMaximumExpirationTimeInDays;
  /// One or more `partner_authorization` blocks as defined below.
  final pulumi.Input<List<PartnerConfigurationPartnerAuthorization>>? partnerAuthorizations;
  /// The name of the Resource Group where the Event Grid Partner Configuration should exist. Changing this forces a new Event Grid Partner Configuration to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Event Grid Partner Configuration.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PartnerConfigurationArgs].
  /// [defaultMaximumExpirationTimeInDays] Time used to validate the authorization expiration time for each authorized partner. Defaults to `7`.
  /// [partnerAuthorizations] One or more `partner_authorization` blocks as defined below.
  /// [resourceGroupName] The name of the Resource Group where the Event Grid Partner Configuration should exist. Changing this forces a new Event Grid Partner Configuration to be created.
  /// [tags] A mapping of tags which should be assigned to the Event Grid Partner Configuration.
  PartnerConfigurationArgs({
    int? defaultMaximumExpirationTimeInDays,
    List<PartnerConfigurationPartnerAuthorization>? partnerAuthorizations,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      defaultMaximumExpirationTimeInDays = pulumi.Input.asOptionalInput<int>(defaultMaximumExpirationTimeInDays),
      partnerAuthorizations = pulumi.Input.asOptionalInput<List<PartnerConfigurationPartnerAuthorization>>(partnerAuthorizations),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMaximumExpirationTimeInDays': ?defaultMaximumExpirationTimeInDays,
      'partnerAuthorizations': ?pulumi.Input.mapOptionalInputValue<List<PartnerConfigurationPartnerAuthorization>, List<Map<String, dynamic>>>(partnerAuthorizations, (value) => pulumi.Input.encodeList<PartnerConfigurationPartnerAuthorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PartnerConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return PartnerConfigurationArgs(
      defaultMaximumExpirationTimeInDays: map['defaultMaximumExpirationTimeInDays'] == null ? null : map['defaultMaximumExpirationTimeInDays'] as int,
      partnerAuthorizations: map['partnerAuthorizations'] == null ? null : pulumi.Input.decodeList<PartnerConfigurationPartnerAuthorization>(map['partnerAuthorizations'], (value) => PartnerConfigurationPartnerAuthorization.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

