// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_group_metadata.dart';
import 'billing_group_properties.dart';

/// Input properties used for looking up and filtering BillingGroup resources.
class BillingGroupState {
  /// The ARN of the Billing Group.
  final pulumi.Input<String>? arn;
  final pulumi.Input<List<BillingGroupMetadata>>? metadatas;
  /// The name of the Billing Group.
  final pulumi.Input<String>? name;
  /// The Billing Group properties. Defined below.
  final pulumi.Input<BillingGroupProperties>? properties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The current version of the Billing Group record in the registry.
  final pulumi.Input<int>? version;

  /// Creates a new [BillingGroupState].
  /// [arn] The ARN of the Billing Group.
  /// [metadatas] Optional.
  /// [name] The name of the Billing Group.
  /// [properties] The Billing Group properties. Defined below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags
  /// [tagsAll] Optional.
  /// [version] The current version of the Billing Group record in the registry.
  BillingGroupState({
    this.arn,
    this.metadatas,
    this.name,
    this.properties,
    this.region,
    this.tags,
    this.tagsAll,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'metadatas': ?pulumi.Input.mapOptionalInputValue<List<BillingGroupMetadata>, List<Map<String, dynamic>>>(metadatas, (value) => pulumi.Input.encodeList<BillingGroupMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<BillingGroupProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'version': ?version,
    };
  }

  factory BillingGroupState.fromMap(Map<String, dynamic> map) {
    return BillingGroupState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      metadatas: map['metadatas'] == null ? null : ((pulumi.Input.decodeList<BillingGroupMetadata>(map['metadatas']!, (value) => BillingGroupMetadata.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      properties: map['properties'] == null ? null : ((BillingGroupProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as int).input()).input(),
    );
  }
}

