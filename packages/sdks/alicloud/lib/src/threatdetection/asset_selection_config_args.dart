// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_asset_selection_config_asset_selection_config_args_doc}
/// The set of arguments for AssetSelectionConfig.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_asset_selection_config_asset_selection_config_args_doc}
class AssetSelectionConfigArgs {
  /// The first ID of the resource
  final pulumi.Input<String> businessType;
  /// The operating system type.
  final pulumi.Input<String>? platform;
  /// Target object type.
  final pulumi.Input<String> targetType;

  /// Creates a new [AssetSelectionConfigArgs].
  /// [businessType] The first ID of the resource
  /// [platform] The operating system type.
  /// [targetType] Target object type.
  const AssetSelectionConfigArgs({
    required this.businessType,
    this.platform,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessType': businessType,
      'platform': ?platform,
      'targetType': targetType,
    };
  }

  factory AssetSelectionConfigArgs.fromMap(Map<String, dynamic> map) {
    return AssetSelectionConfigArgs(
      businessType: pulumi.Input.fromValue(map['businessType'] as String),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
    );
  }
}

