// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'public_delegated_prefix_public_delegated_sub_prefix_response3.dart';

/// Result data returned by getPublicDelegatedPrefix.
class GetPublicDelegatedPrefixResult3 {
  /// The version of BYOIP API.
  final String byoipApiVersion;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a new PublicDelegatedPrefix. An up-to-date fingerprint must be provided in order to update the PublicDelegatedPrefix, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a PublicDelegatedPrefix.
  final String fingerprint;

  /// The IP address range, in CIDR format, represented by this public delegated prefix.
  final String ipCidrRange;

  /// If true, the prefix will be live migrated.
  final bool isLiveMigration;

  /// Type of the resource. Always compute#publicDelegatedPrefix for public delegated prefixes.
  final String kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  final String parentPrefix;

  /// The list of sub public delegated prefixes that exist for this public delegated prefix.
  final List<PublicDelegatedPrefixPublicDelegatedSubPrefixResponse3>
      publicDelegatedSubPrefixs;

  /// URL of the region where the public delegated prefix resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String region;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// The status of the public delegated prefix, which can be one of following values: - `INITIALIZING` The public delegated prefix is being initialized and addresses cannot be created yet. - `READY_TO_ANNOUNCE` The public delegated prefix is a live migration prefix and is active. - `ANNOUNCED` The public delegated prefix is active. - `DELETING` The public delegated prefix is being deprovsioned.
  final String status;

  GetPublicDelegatedPrefixResult3({
    required this.byoipApiVersion,
    required this.creationTimestamp,
    required this.description,
    required this.fingerprint,
    required this.ipCidrRange,
    required this.isLiveMigration,
    required this.kind,
    required this.name,
    required this.parentPrefix,
    required this.publicDelegatedSubPrefixs,
    required this.region,
    required this.selfLink,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['byoipApiVersion'] = byoipApiVersion;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['fingerprint'] = fingerprint;
    map['ipCidrRange'] = ipCidrRange;
    map['isLiveMigration'] = isLiveMigration;
    map['kind'] = kind;
    map['name'] = name;
    map['parentPrefix'] = parentPrefix;
    map['publicDelegatedSubPrefixs'] = Input.encodeList<
            PublicDelegatedPrefixPublicDelegatedSubPrefixResponse3,
            Map<String, dynamic>>(
        publicDelegatedSubPrefixs, (value) => value.toMap());
    map['region'] = region;
    map['selfLink'] = selfLink;
    map['status'] = status;
    return map;
  }

  factory GetPublicDelegatedPrefixResult3.fromMap(Map<String, dynamic> map) {
    return GetPublicDelegatedPrefixResult3(
      byoipApiVersion: map['byoipApiVersion'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      ipCidrRange: map['ipCidrRange'] as String,
      isLiveMigration: map['isLiveMigration'] as bool,
      kind: map['kind'] as String,
      name: map['name'] as String,
      parentPrefix: map['parentPrefix'] as String,
      publicDelegatedSubPrefixs: Input.decodeList<
              PublicDelegatedPrefixPublicDelegatedSubPrefixResponse3>(
          map['publicDelegatedSubPrefixs'],
          (value) =>
              PublicDelegatedPrefixPublicDelegatedSubPrefixResponse3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      status: map['status'] as String,
    );
  }
}
