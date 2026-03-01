// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_scale_vcore_sku.dart';

/// {@template pulumi_powerbidedicated_auto_scale_vcore_args_doc}
/// The set of arguments for AutoScaleVCore.
/// {@endtemplate}
/// {@macro pulumi_powerbidedicated_auto_scale_vcore_args_doc}
class AutoScaleVCoreArgs {
  /// The maximum capacity of an auto scale v-core resource.
  final pulumi.Input<int>? capacityLimit;
  /// The object ID of the capacity resource associated with the auto scale v-core resource.
  final pulumi.Input<String>? capacityObjectId;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU of the auto scale v-core resource.
  final pulumi.Input<AutoScaleVCoreSku> sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the auto scale v-core. It must be a minimum of 3 characters, and a maximum of 63.
  final pulumi.Input<String>? vcoreName;

  /// Creates a new [AutoScaleVCoreArgs].
  /// [capacityLimit] The maximum capacity of an auto scale v-core resource.
  /// [capacityObjectId] The object ID of the capacity resource associated with the auto scale v-core resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU of the auto scale v-core resource.
  /// [tags] Resource tags.
  /// [vcoreName] The name of the auto scale v-core. It must be a minimum of 3 characters, and a maximum of 63.
  AutoScaleVCoreArgs({
    int? capacityLimit,
    String? capacityObjectId,
    String? location,
    required String resourceGroupName,
    required AutoScaleVCoreSku sku,
    Map<String, String>? tags,
    String? vcoreName,
  }) :
      capacityLimit = pulumi.Input.asOptionalInput<int>(capacityLimit),
      capacityObjectId = pulumi.Input.asOptionalInput<String>(capacityObjectId),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<AutoScaleVCoreSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vcoreName = pulumi.Input.asOptionalInput<String>(vcoreName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityLimit': ?capacityLimit,
      'capacityObjectId': ?capacityObjectId,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<AutoScaleVCoreSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'vcoreName': ?vcoreName,
    };
  }

  factory AutoScaleVCoreArgs.fromMap(Map<String, dynamic> map) {
    return AutoScaleVCoreArgs(
      capacityLimit: map['capacityLimit'] == null ? null : map['capacityLimit'] as int,
      capacityObjectId: map['capacityObjectId'] == null ? null : map['capacityObjectId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: AutoScaleVCoreSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vcoreName: map['vcoreName'] == null ? null : map['vcoreName'] as String,
    );
  }
}

