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
    pulumi.Output<LinkOrganization>? linkOrganization,
    pulumi.Output<String>? location,
    required pulumi.Output<OfferDetail> offerDetail,
    pulumi.Output<String>? organizationName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<UserDetail> userDetail,
  }) :
      linkOrganization = pulumi.Input.asOptionalInput<LinkOrganization>(linkOrganization),
      location = pulumi.Input.asOptionalInput<String>(location),
      offerDetail = pulumi.Input.asInput<OfferDetail>(offerDetail),
      organizationName = pulumi.Input.asOptionalInput<String>(organizationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userDetail = pulumi.Input.asInput<UserDetail>(userDetail);

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
      linkOrganization: map['linkOrganization'] == null ? null : pulumi.Output.create<LinkOrganization>(LinkOrganization.fromMap((map['linkOrganization'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      offerDetail: pulumi.Output.create<OfferDetail>(OfferDetail.fromMap((map['offerDetail'] as Map).cast<String, dynamic>())),
      organizationName: map['organizationName'] == null ? null : pulumi.Output.create<String>(map['organizationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userDetail: pulumi.Output.create<UserDetail>(UserDetail.fromMap((map['userDetail'] as Map).cast<String, dynamic>())),
    );
  }
}

