// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_verified_access_trust_provider.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// The custom subdomain for the CIDR endpoints.
  final pulumi.Input<String>? cidrEndpointsCustomSubdomain;
  /// The time that the Verified Access Instance was created.
  final pulumi.Input<String>? creationTime;
  /// A description for the AWS Verified Access Instance.
  final pulumi.Input<String>? description;
  /// Enable or disable support for Federal Information Processing Standards (FIPS) on the AWS Verified Access Instance.
  final pulumi.Input<bool>? fipsEnabled;
  /// The time that the Verified Access Instance was last updated.
  final pulumi.Input<String>? lastUpdatedTime;
  final pulumi.Input<List<String>>? nameServers;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// One or more blocks of providing information about the AWS Verified Access Trust Providers. See verified_access_trust_providers below for details.One or more blocks
  final pulumi.Input<List<InstanceVerifiedAccessTrustProvider>>? verifiedAccessTrustProviders;

  /// Creates a new [InstanceState].
  /// [cidrEndpointsCustomSubdomain] The custom subdomain for the CIDR endpoints.
  /// [creationTime] The time that the Verified Access Instance was created.
  /// [description] A description for the AWS Verified Access Instance.
  /// [fipsEnabled] Enable or disable support for Federal Information Processing Standards (FIPS) on the AWS Verified Access Instance.
  /// [lastUpdatedTime] The time that the Verified Access Instance was last updated.
  /// [nameServers] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [verifiedAccessTrustProviders] One or more blocks of providing information about the AWS Verified Access Trust Providers. See verified_access_trust_providers below for details.One or more blocks
  InstanceState({
    this.cidrEndpointsCustomSubdomain,
    this.creationTime,
    this.description,
    this.fipsEnabled,
    this.lastUpdatedTime,
    this.nameServers,
    this.region,
    this.tags,
    this.tagsAll,
    this.verifiedAccessTrustProviders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrEndpointsCustomSubdomain': ?cidrEndpointsCustomSubdomain,
      'creationTime': ?creationTime,
      'description': ?description,
      'fipsEnabled': ?fipsEnabled,
      'lastUpdatedTime': ?lastUpdatedTime,
      'nameServers': ?nameServers,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'verifiedAccessTrustProviders': ?pulumi.Input.mapOptionalInputValue<List<InstanceVerifiedAccessTrustProvider>, List<Map<String, dynamic>>>(verifiedAccessTrustProviders, (value) => pulumi.Input.encodeList<InstanceVerifiedAccessTrustProvider, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      cidrEndpointsCustomSubdomain: map['cidrEndpointsCustomSubdomain'] == null ? null : (map['cidrEndpointsCustomSubdomain'] as String).input(),
      creationTime: map['creationTime'] == null ? null : (map['creationTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fipsEnabled: map['fipsEnabled'] == null ? null : (map['fipsEnabled'] as bool).input(),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : (map['lastUpdatedTime'] as String).input(),
      nameServers: map['nameServers'] == null ? null : ((map['nameServers'] as List).cast<String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      verifiedAccessTrustProviders: map['verifiedAccessTrustProviders'] == null ? null : (pulumi.Input.decodeList<InstanceVerifiedAccessTrustProvider>(map['verifiedAccessTrustProviders'], (value) => InstanceVerifiedAccessTrustProvider.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

