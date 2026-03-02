// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_organization.dart';
import 'offer_detail.dart';
import 'user_detail.dart';

/// {@template pulumi_confluent_organization_args_doc}
/// The set of arguments for Organization.
/// {@endtemplate}
/// {@macro pulumi_confluent_organization_args_doc}
class OrganizationArgs {
  /// Link an existing Confluent organization
  final pulumi.Input<LinkOrganization>? linkOrganization;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Confluent offer detail
  final pulumi.Input<OfferDetail> offerDetail;
  /// Organization resource name
  final pulumi.Input<String>? organizationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Subscriber detail
  final pulumi.Input<UserDetail> userDetail;

  /// Creates a new [OrganizationArgs].
  /// [linkOrganization] Link an existing Confluent organization
  /// [location] The geo-location where the resource lives
  /// [offerDetail] Confluent offer detail
  /// [organizationName] Organization resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [userDetail] Subscriber detail
  OrganizationArgs({
    this.linkOrganization,
    this.location,
    required this.offerDetail,
    this.organizationName,
    required this.resourceGroupName,
    this.tags,
    required this.userDetail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkOrganization': ?pulumi.Input.mapOptionalInputValue<LinkOrganization, Map<String, dynamic>>(linkOrganization, (value) => value.toMap()),
      'location': ?location,
      'offerDetail': pulumi.Input.mapInputValue<OfferDetail, Map<String, dynamic>>(offerDetail, (value) => value.toMap()),
      'organizationName': ?organizationName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'userDetail': pulumi.Input.mapInputValue<UserDetail, Map<String, dynamic>>(userDetail, (value) => value.toMap()),
    };
  }

  factory OrganizationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationArgs(
      linkOrganization: map['linkOrganization'] == null ? null : (LinkOrganization.fromMap((map['linkOrganization'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      offerDetail: (OfferDetail.fromMap((map['offerDetail'] as Map).cast<String, dynamic>())).input(),
      organizationName: map['organizationName'] == null ? null : (map['organizationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      userDetail: (UserDetail.fromMap((map['userDetail'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

