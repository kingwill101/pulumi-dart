// ignore_for_file: unused_element, unnecessary_cast

import 'liftr_base_marketplace_details_response.dart';
import 'liftr_base_single_sign_on_properties_v2_response.dart';
import 'liftr_base_user_details_response.dart';
import 'partner_properties_response.dart';

/// Properties specific to Instance
class InstancePropertiesResponse {
  /// Marketplace details of the resource.
  final LiftrBaseMarketplaceDetailsResponse marketplace;
  /// partner properties
  final PartnerPropertiesResponse? partnerProperties;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Single sign-on properties
  final LiftrBaseSingleSignOnPropertiesV2Response? singleSignOnProperties;
  /// Details of the user.
  final LiftrBaseUserDetailsResponse user;

  /// Creates a new [InstancePropertiesResponse].
  /// [marketplace] Marketplace details of the resource.
  /// [partnerProperties] partner properties
  /// [provisioningState] Provisioning state of the resource.
  /// [singleSignOnProperties] Single sign-on properties
  /// [user] Details of the user.
  InstancePropertiesResponse({
    required this.marketplace,
    this.partnerProperties,
    required this.provisioningState,
    this.singleSignOnProperties,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'marketplace': marketplace.toMap(),
      'partnerProperties': ?partnerProperties == null ? null : partnerProperties!.toMap(),
      'provisioningState': provisioningState,
      'singleSignOnProperties': ?singleSignOnProperties == null ? null : singleSignOnProperties!.toMap(),
      'user': user.toMap(),
    };
  }

  factory InstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InstancePropertiesResponse(
      marketplace: LiftrBaseMarketplaceDetailsResponse.fromMap((map['marketplace'] as Map).cast<String, dynamic>()),
      partnerProperties: map['partnerProperties'] == null ? null : PartnerPropertiesResponse.fromMap((map['partnerProperties'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      singleSignOnProperties: map['singleSignOnProperties'] == null ? null : LiftrBaseSingleSignOnPropertiesV2Response.fromMap((map['singleSignOnProperties'] as Map).cast<String, dynamic>()),
      user: LiftrBaseUserDetailsResponse.fromMap((map['user'] as Map).cast<String, dynamic>()),
    );
  }
}

