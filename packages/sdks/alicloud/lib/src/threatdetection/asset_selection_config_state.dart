// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AssetSelectionConfig resources.
class AssetSelectionConfigState {
  /// The first ID of the resource
  final pulumi.Input<String>? businessType;
  /// The operating system type.
  final pulumi.Input<String>? platform;
  /// Target object type.
  final pulumi.Input<String>? targetType;

  /// Creates a new [AssetSelectionConfigState].
  /// [businessType] The first ID of the resource
  /// [platform] The operating system type.
  /// [targetType] Target object type.
  AssetSelectionConfigState({
    pulumi.Output<String>? businessType,
    pulumi.Output<String>? platform,
    pulumi.Output<String>? targetType,
  }) :
      businessType = pulumi.Input.asOptionalInput<String>(businessType),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      targetType = pulumi.Input.asOptionalInput<String>(targetType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessType': ?businessType,
      'platform': ?platform,
      'targetType': ?targetType,
    };
  }

  factory AssetSelectionConfigState.fromMap(Map<String, dynamic> map) {
    return AssetSelectionConfigState(
      businessType: map['businessType'] == null ? null : pulumi.Output.create<String>(map['businessType'] as String),
      platform: map['platform'] == null ? null : pulumi.Output.create<String>(map['platform'] as String),
      targetType: map['targetType'] == null ? null : pulumi.Output.create<String>(map['targetType'] as String),
    );
  }
}

