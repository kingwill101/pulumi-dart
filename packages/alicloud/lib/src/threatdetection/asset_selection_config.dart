import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_selection_config_args.dart';

/// ## Import
///
/// Threat Detection Asset Selection Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/assetSelectionConfig:AssetSelectionConfig example <id>
/// ```
class AssetSelectionConfig extends pulumi.CustomResource {
  /// The first ID of the resource
  late final pulumi.Output<String> businessType;
  /// The operating system type.
  late final pulumi.Output<String?> platform;
  /// Target object type.
  late final pulumi.Output<String> targetType;

  /// Creates a new [AssetSelectionConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssetSelectionConfig]. {@macro pulumi_threatdetection_asset_selection_config_asset_selection_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssetSelectionConfig(
    String name, {
    AssetSelectionConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/assetSelectionConfig:AssetSelectionConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.businessType = registerOutput<String>('businessType');
    this.platform = registerOutput<String?>('platform');
    this.targetType = registerOutput<String>('targetType');
  }
}
