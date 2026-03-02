// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_type_forms_input.dart';
import 'asset_type_timeouts.dart';

/// {@template pulumi_datazone_asset_type_asset_type_args_doc}
/// The set of arguments for AssetType.
/// {@endtemplate}
/// {@macro pulumi_datazone_asset_type_asset_type_args_doc}
class AssetTypeArgs {
  /// The description of the custom asset type.
  final pulumi.Input<String>? description;
  /// The unique identifier of the Amazon DataZone domain where the custom asset type is being created.
  final pulumi.Input<String> domainIdentifier;
  /// The metadata forms that are to be attached to the custom asset type.
  final pulumi.Input<List<AssetTypeFormsInput>>? formsInputs;
  /// The name of the custom asset type.
  final pulumi.Input<String>? name;
  /// The unique identifier of the Amazon DataZone project that owns the custom asset type.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> owningProjectIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<AssetTypeTimeouts>? timeouts;

  /// Creates a new [AssetTypeArgs].
  /// [description] The description of the custom asset type.
  /// [domainIdentifier] The unique identifier of the Amazon DataZone domain where the custom asset type is being created.
  /// [formsInputs] The metadata forms that are to be attached to the custom asset type.
  /// [name] The name of the custom asset type.
  /// [owningProjectIdentifier] The unique identifier of the Amazon DataZone project that owns the custom asset type.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  AssetTypeArgs({
    this.description,
    required this.domainIdentifier,
    this.formsInputs,
    this.name,
    required this.owningProjectIdentifier,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'domainIdentifier': domainIdentifier,
      'formsInputs': ?pulumi.Input.mapOptionalInputValue<List<AssetTypeFormsInput>, List<Map<String, dynamic>>>(formsInputs, (value) => pulumi.Input.encodeList<AssetTypeFormsInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'owningProjectIdentifier': owningProjectIdentifier,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AssetTypeTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AssetTypeArgs.fromMap(Map<String, dynamic> map) {
    return AssetTypeArgs(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      domainIdentifier: (map['domainIdentifier'] as String).input(),
      formsInputs: map['formsInputs'] == null ? null : ((pulumi.Input.decodeList<AssetTypeFormsInput>(map['formsInputs']!, (value) => AssetTypeFormsInput.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      owningProjectIdentifier: (map['owningProjectIdentifier'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((AssetTypeTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

