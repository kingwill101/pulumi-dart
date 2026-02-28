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
    String? description,
    required String domainIdentifier,
    List<AssetTypeFormsInput>? formsInputs,
    String? name,
    required String owningProjectIdentifier,
    String? region,
    AssetTypeTimeouts? timeouts,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        domainIdentifier = pulumi.Input.asInput<String>(domainIdentifier),
        formsInputs = pulumi.Input.asOptionalInput<List<AssetTypeFormsInput>>(
            formsInputs),
        name = pulumi.Input.asOptionalInput<String>(name),
        owningProjectIdentifier =
            pulumi.Input.asInput<String>(owningProjectIdentifier),
        region = pulumi.Input.asOptionalInput<String>(region),
        timeouts = pulumi.Input.asOptionalInput<AssetTypeTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['domainIdentifier'] = domainIdentifier;
    final formsInputsValue = formsInputs;
    if (formsInputsValue != null) {
      map['formsInputs'] = pulumi.Input.mapOptionalInputValue<
              List<AssetTypeFormsInput>, List<Map<String, dynamic>>>(
          formsInputsValue,
          (value) => pulumi.Input.encodeList<AssetTypeFormsInput,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['owningProjectIdentifier'] = owningProjectIdentifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<AssetTypeTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AssetTypeArgs.fromMap(Map<String, dynamic> map) {
    return AssetTypeArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      domainIdentifier: map['domainIdentifier'] as String,
      formsInputs: map['formsInputs'] == null
          ? null
          : pulumi.Input.decodeList<AssetTypeFormsInput>(
              map['formsInputs'],
              (value) => AssetTypeFormsInput.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      owningProjectIdentifier: map['owningProjectIdentifier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : AssetTypeTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
