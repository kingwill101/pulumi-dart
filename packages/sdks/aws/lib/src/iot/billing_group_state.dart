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
    pulumi.Output<String>? arn,
    pulumi.Output<List<BillingGroupMetadata>>? metadatas,
    pulumi.Output<String>? name,
    pulumi.Output<BillingGroupProperties>? properties,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<int>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      metadatas = pulumi.Input.asOptionalInput<List<BillingGroupMetadata>>(metadatas),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<BillingGroupProperties>(properties),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      version = pulumi.Input.asOptionalInput<int>(version);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      metadatas: map['metadatas'] == null ? null : pulumi.Output.create<List<BillingGroupMetadata>>(pulumi.Input.decodeList<BillingGroupMetadata>(map['metadatas'], (value) => BillingGroupMetadata.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<BillingGroupProperties>(BillingGroupProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
    );
  }
}

