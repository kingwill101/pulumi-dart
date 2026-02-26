// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'instance_peering_cidr_range.dart';

/// The set of arguments for Instance.
class InstanceArgs4 {
  /// Optional. Customer accept list represents the list of projects (id/number) on customer side that can privately connect to the service attachment. It is an optional field which the customers can provide during the instance creation. By default, the customer project associated with the Apigee organization will be included to the list.
  final Input<List<String>>? consumerAcceptList;

  /// Optional. Description of the instance.
  final Input<String>? description;

  /// Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only. Use the following format: `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`
  final Input<String>? diskEncryptionKeyName;

  /// Optional. Display name for the instance.
  final Input<String>? displayName;

  /// Optional. Comma-separated list of CIDR blocks of length 22 and/or 28 used to create the Apigee instance. Providing CIDR ranges is optional. You can provide just /22 or /28 or both (or neither). Ranges you provide should be freely available as part of a larger named range you have allocated to the Service Networking peering. If this parameter is not provided, Apigee automatically requests an available /22 and /28 CIDR block from Service Networking. Use the /22 CIDR block for configuring your firewall needs to allow traffic from Apigee. Input formats: `a.b.c.d/22` or `e.f.g.h/28` or `a.b.c.d/22,e.f.g.h/28`
  final Input<String>? ipRange;

  /// Compute Engine location where the instance resides.
  final Input<String>? location;

  /// Resource ID of the instance. Values must match the regular expression `^a-z{0,30}[a-z\d]$`.
  final Input<String>? name;
  final Input<String> organizationId;

  /// Optional. Size of the CIDR block range that will be reserved by the instance. PAID organizations support `SLASH_16` to `SLASH_20` and defaults to `SLASH_16`. Evaluation organizations support only `SLASH_23`.
  final Input<InstancePeeringCidrRange>? peeringCidrRange;

  InstanceArgs4({
    this.consumerAcceptList,
    this.description,
    this.diskEncryptionKeyName,
    this.displayName,
    this.ipRange,
    this.location,
    this.name,
    required this.organizationId,
    this.peeringCidrRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consumerAcceptListValue = consumerAcceptList;
    if (consumerAcceptListValue != null) {
      map['consumerAcceptList'] = consumerAcceptListValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final diskEncryptionKeyNameValue = diskEncryptionKeyName;
    if (diskEncryptionKeyNameValue != null) {
      map['diskEncryptionKeyName'] = diskEncryptionKeyNameValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final ipRangeValue = ipRange;
    if (ipRangeValue != null) {
      map['ipRange'] = ipRangeValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    final peeringCidrRangeValue = peeringCidrRange;
    if (peeringCidrRangeValue != null) {
      map['peeringCidrRange'] =
          Input.mapOptionalInputValue<InstancePeeringCidrRange, String>(
              peeringCidrRangeValue, (value) => value.value);
    }
    return map;
  }

  factory InstanceArgs4.fromMap(Map<String, dynamic> map) {
    return InstanceArgs4(
      consumerAcceptList:
          Input.asOptionalInput<List<String>>(map['consumerAcceptList']),
      description: Input.asOptionalInput<String>(map['description']),
      diskEncryptionKeyName:
          Input.asOptionalInput<String>(map['diskEncryptionKeyName']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      ipRange: Input.asOptionalInput<String>(map['ipRange']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      peeringCidrRange: Input.asOptionalInput<InstancePeeringCidrRange>(
          map['peeringCidrRange']),
    );
  }
}
