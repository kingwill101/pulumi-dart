// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_rule.dart';

/// NetworkSecurityGroup resource.
class NetworkSecurityGroup {
  /// The default security rules of network security group.
  final List<SecurityRule>? defaultSecurityRules;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// When enabled, flows created from Network Security Group connections will be re-evaluated when rules are updates. Initial enablement will trigger re-evaluation.
  final bool? flushConnection;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// The provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final String? provisioningState;
  /// The resource GUID property of the network security group resource.
  final String? resourceGuid;
  /// A collection of security rules of the network security group.
  final List<SecurityRule>? securityRules;
  /// Resource tags.
  final Map<String, String>? tags;

  /// Creates a new [NetworkSecurityGroup].
  /// [defaultSecurityRules] The default security rules of network security group.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [flushConnection] When enabled, flows created from Network Security Group connections will be re-evaluated when rules are updates. Initial enablement will trigger re-evaluation.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [provisioningState] The provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [resourceGuid] The resource GUID property of the network security group resource.
  /// [securityRules] A collection of security rules of the network security group.
  /// [tags] Resource tags.
  NetworkSecurityGroup({
    this.defaultSecurityRules,
    this.etag,
    this.flushConnection,
    this.id,
    this.location,
    this.provisioningState,
    this.resourceGuid,
    this.securityRules,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultSecurityRules': ?defaultSecurityRules == null ? null : pulumi.Input.encodeList<SecurityRule, Map<String, dynamic>>(defaultSecurityRules!, (value) => value.toMap()),
      'etag': ?etag,
      'flushConnection': ?flushConnection,
      'id': ?id,
      'location': ?location,
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'securityRules': ?securityRules == null ? null : pulumi.Input.encodeList<SecurityRule, Map<String, dynamic>>(securityRules!, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory NetworkSecurityGroup.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroup(
      defaultSecurityRules: map['defaultSecurityRules'] == null ? null : pulumi.Input.decodeList<SecurityRule>(map['defaultSecurityRules'], (value) => SecurityRule.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : map['etag'] as String,
      flushConnection: map['flushConnection'] == null ? null : map['flushConnection'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] == null ? null : map['resourceGuid'] as String,
      securityRules: map['securityRules'] == null ? null : pulumi.Input.decodeList<SecurityRule>(map['securityRules'], (value) => SecurityRule.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

