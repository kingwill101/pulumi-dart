import 'package:pulumi/pulumi.dart';
import '../asset_type_forms_input/asset_type_forms_input.dart';
import '../asset_type_timeouts/asset_type_timeouts.dart';
import 'asset_type_args.dart';

/// Resource for managing an AWS DataZone Asset Type.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Asset Type using the `domain_identifier,name`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/assetType:AssetType example domain-id-12345678,example
/// ```
class AssetType extends CustomResource {
  /// The timestamp when the custom asset type was created.
  late final Output<String> createdAt;

  /// The user who created the custom asset type.
  late final Output<String> createdBy;

  /// The description of the custom asset type.
  late final Output<String?> description;

  /// The unique identifier of the Amazon DataZone domain where the custom asset type is being created.
  late final Output<String> domainIdentifier;

  /// The metadata forms that are to be attached to the custom asset type.
  late final Output<List<AssetTypeFormsInput>?> formsInputs;

  /// The name of the custom asset type.
  late final Output<String> name;

  /// The unique identifier of the Amazon DataZone project that owns the custom asset type.
  ///
  /// The following arguments are optional:
  late final Output<String> owningProjectIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The revision of the asset type.
  late final Output<String> revision;
  late final Output<AssetTypeTimeouts?> timeouts;

  AssetType(
    String name, {
    AssetTypeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datazone/assetType:AssetType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.createdBy = registerOutput<String>('createdBy');
    this.description = registerOutput<String?>('description');
    this.domainIdentifier = registerOutput<String>('domainIdentifier');
    this.formsInputs =
        registerOutput<List<AssetTypeFormsInput>?>('formsInputs');
    this.name = registerOutput<String>('name');
    this.owningProjectIdentifier =
        registerOutput<String>('owningProjectIdentifier');
    this.region = registerOutput<String>('region');
    this.revision = registerOutput<String>('revision');
    this.timeouts = registerOutput<AssetTypeTimeouts?>('timeouts');
  }
}
