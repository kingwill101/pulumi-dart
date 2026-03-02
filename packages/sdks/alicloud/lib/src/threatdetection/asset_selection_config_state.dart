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
    this.businessType,
    this.platform,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessType': ?businessType,
      'platform': ?platform,
      'targetType': ?targetType,
    };
  }

  factory AssetSelectionConfigState.fromMap(Map<String, dynamic> map) {
    return AssetSelectionConfigState(
      businessType: map['businessType'] == null ? null : (map['businessType'] as String).input(),
      platform: map['platform'] == null ? null : (map['platform'] as String).input(),
      targetType: map['targetType'] == null ? null : (map['targetType'] as String).input(),
    );
  }
}

