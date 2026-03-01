// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_plan_properties.dart';
import 'sku.dart';

/// {@template pulumi_cognitiveservices_commitment_plan_args_doc}
/// The set of arguments for CommitmentPlan.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_commitment_plan_args_doc}
class CommitmentPlanArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of the commitmentPlan associated with the Cognitive Services Account
  final pulumi.Input<String>? commitmentPlanName;
  /// The Kind of the resource.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Properties of Cognitive Services account commitment plan.
  final pulumi.Input<CommitmentPlanProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource model definition representing SKU
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CommitmentPlanArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [commitmentPlanName] The name of the commitmentPlan associated with the Cognitive Services Account
  /// [kind] The Kind of the resource.
  /// [location] The geo-location where the resource lives
  /// [properties] Properties of Cognitive Services account commitment plan.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The resource model definition representing SKU
  /// [tags] Resource tags.
  CommitmentPlanArgs({
    required String accountName,
    String? commitmentPlanName,
    String? kind,
    String? location,
    CommitmentPlanProperties? properties,
    required String resourceGroupName,
    Sku? sku,
    Map<String, String>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      commitmentPlanName = pulumi.Input.asOptionalInput<String>(commitmentPlanName),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<CommitmentPlanProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'commitmentPlanName': ?commitmentPlanName,
      'kind': ?kind,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<CommitmentPlanProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory CommitmentPlanArgs.fromMap(Map<String, dynamic> map) {
    return CommitmentPlanArgs(
      accountName: map['accountName'] as String,
      commitmentPlanName: map['commitmentPlanName'] == null ? null : map['commitmentPlanName'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : CommitmentPlanProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] == null ? null : Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

