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
    pulumi.Output<String>? description,
    required pulumi.Output<String> domainIdentifier,
    pulumi.Output<List<AssetTypeFormsInput>>? formsInputs,
    pulumi.Output<String>? name,
    required pulumi.Output<String> owningProjectIdentifier,
    pulumi.Output<String>? region,
    pulumi.Output<AssetTypeTimeouts>? timeouts,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      domainIdentifier = pulumi.Input.asInput<String>(domainIdentifier),
      formsInputs = pulumi.Input.asOptionalInput<List<AssetTypeFormsInput>>(formsInputs),
      name = pulumi.Input.asOptionalInput<String>(name),
      owningProjectIdentifier = pulumi.Input.asInput<String>(owningProjectIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<AssetTypeTimeouts>(timeouts);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainIdentifier: pulumi.Output.create<String>(map['domainIdentifier'] as String),
      formsInputs: map['formsInputs'] == null ? null : pulumi.Output.create<List<AssetTypeFormsInput>>(pulumi.Input.decodeList<AssetTypeFormsInput>(map['formsInputs'], (value) => AssetTypeFormsInput.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      owningProjectIdentifier: pulumi.Output.create<String>(map['owningProjectIdentifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AssetTypeTimeouts>(AssetTypeTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

