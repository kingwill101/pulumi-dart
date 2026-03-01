import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_bind_args.dart';

/// ## Import
///
/// Threat Detection Asset Bind can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/assetBind:AssetBind example <id>
/// ```
class AssetBind extends pulumi.CustomResource {
  /// Bind version.
  late final pulumi.Output<int?> authVersion;
  /// The first ID of the resource
  late final pulumi.Output<String> uuid;

  /// Creates a new [AssetBind].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssetBind]. {@macro pulumi_threatdetection_asset_bind_asset_bind_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssetBind(
    String name, {
    AssetBindArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/assetBind:AssetBind',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authVersion = registerOutput<int?>('authVersion');
    this.uuid = registerOutput<String>('uuid');
  }
}
