// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_custom_ipprefix_args_doc}
/// The set of arguments for CustomIPPrefix.
/// {@endtemplate}
/// {@macro pulumi_network_custom_ipprefix_args_doc}
class CustomIPPrefixArgs {
  /// The ASN for CIDR advertising. Should be an integer as string.
  final pulumi.Input<String>? asn;
  /// Authorization message for WAN validation.
  final pulumi.Input<String>? authorizationMessage;
  /// The prefix range in CIDR notation. Should include the start address and the prefix length.
  final pulumi.Input<String>? cidr;
  /// The commissioned state of the Custom IP Prefix.
  final pulumi.Input<String>? commissionedState;
  /// The name of the custom IP prefix.
  final pulumi.Input<String>? customIpPrefixName;
  /// The Parent CustomIpPrefix for IPv6 /64 CustomIpPrefix.
  final pulumi.Input<SubResource>? customIpPrefixParent;
  /// Whether to do express route advertise.
  final pulumi.Input<bool>? expressRouteAdvertise;
  /// The extended location of the custom IP prefix.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The Geo for CIDR advertising. Should be an Geo code.
  final pulumi.Input<String>? geo;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Whether to Advertise the range to Internet.
  final pulumi.Input<bool>? noInternetAdvertise;
  /// Type of custom IP prefix. Should be Singular, Parent, or Child.
  final pulumi.Input<String>? prefixType;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Signed message for WAN validation.
  final pulumi.Input<String>? signedMessage;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [CustomIPPrefixArgs].
  /// [asn] The ASN for CIDR advertising. Should be an integer as string.
  /// [authorizationMessage] Authorization message for WAN validation.
  /// [cidr] The prefix range in CIDR notation. Should include the start address and the prefix length.
  /// [commissionedState] The commissioned state of the Custom IP Prefix.
  /// [customIpPrefixName] The name of the custom IP prefix.
  /// [customIpPrefixParent] The Parent CustomIpPrefix for IPv6 /64 CustomIpPrefix.
  /// [expressRouteAdvertise] Whether to do express route advertise.
  /// [extendedLocation] The extended location of the custom IP prefix.
  /// [geo] The Geo for CIDR advertising. Should be an Geo code.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [noInternetAdvertise] Whether to Advertise the range to Internet.
  /// [prefixType] Type of custom IP prefix. Should be Singular, Parent, or Child.
  /// [resourceGroupName] The name of the resource group.
  /// [signedMessage] Signed message for WAN validation.
  /// [tags] Resource tags.
  /// [zones] A list of availability zones denoting the IP allocated for the resource needs to come from.
  CustomIPPrefixArgs({
    String? asn,
    String? authorizationMessage,
    String? cidr,
    String? commissionedState,
    String? customIpPrefixName,
    SubResource? customIpPrefixParent,
    bool? expressRouteAdvertise,
    ExtendedLocation? extendedLocation,
    String? geo,
    String? id,
    String? location,
    bool? noInternetAdvertise,
    String? prefixType,
    required String resourceGroupName,
    String? signedMessage,
    Map<String, String>? tags,
    List<String>? zones,
  }) :
      asn = pulumi.Input.asOptionalInput<String>(asn),
      authorizationMessage = pulumi.Input.asOptionalInput<String>(authorizationMessage),
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      commissionedState = pulumi.Input.asOptionalInput<String>(commissionedState),
      customIpPrefixName = pulumi.Input.asOptionalInput<String>(customIpPrefixName),
      customIpPrefixParent = pulumi.Input.asOptionalInput<SubResource>(customIpPrefixParent),
      expressRouteAdvertise = pulumi.Input.asOptionalInput<bool>(expressRouteAdvertise),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      geo = pulumi.Input.asOptionalInput<String>(geo),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      noInternetAdvertise = pulumi.Input.asOptionalInput<bool>(noInternetAdvertise),
      prefixType = pulumi.Input.asOptionalInput<String>(prefixType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      signedMessage = pulumi.Input.asOptionalInput<String>(signedMessage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'authorizationMessage': ?authorizationMessage,
      'cidr': ?cidr,
      'commissionedState': ?commissionedState,
      'customIpPrefixName': ?customIpPrefixName,
      'customIpPrefixParent': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(customIpPrefixParent, (value) => value.toMap()),
      'expressRouteAdvertise': ?expressRouteAdvertise,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'geo': ?geo,
      'id': ?id,
      'location': ?location,
      'noInternetAdvertise': ?noInternetAdvertise,
      'prefixType': ?prefixType,
      'resourceGroupName': resourceGroupName,
      'signedMessage': ?signedMessage,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory CustomIPPrefixArgs.fromMap(Map<String, dynamic> map) {
    return CustomIPPrefixArgs(
      asn: map['asn'] == null ? null : map['asn'] as String,
      authorizationMessage: map['authorizationMessage'] == null ? null : map['authorizationMessage'] as String,
      cidr: map['cidr'] == null ? null : map['cidr'] as String,
      commissionedState: map['commissionedState'] == null ? null : map['commissionedState'] as String,
      customIpPrefixName: map['customIpPrefixName'] == null ? null : map['customIpPrefixName'] as String,
      customIpPrefixParent: map['customIpPrefixParent'] == null ? null : SubResource.fromMap((map['customIpPrefixParent'] as Map).cast<String, dynamic>()),
      expressRouteAdvertise: map['expressRouteAdvertise'] == null ? null : map['expressRouteAdvertise'] as bool,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      geo: map['geo'] == null ? null : map['geo'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      noInternetAdvertise: map['noInternetAdvertise'] == null ? null : map['noInternetAdvertise'] as bool,
      prefixType: map['prefixType'] == null ? null : map['prefixType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      signedMessage: map['signedMessage'] == null ? null : map['signedMessage'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

