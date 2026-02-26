// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../asset_type_forms_input/asset_type_forms_input.dart';
import '../asset_type_timeouts/asset_type_timeouts.dart';

/// The set of arguments for AssetType.
class AssetTypeArgs {
  /// The description of the custom asset type.
  final Input<String>? description;

  /// The unique identifier of the Amazon DataZone domain where the custom asset type is being created.
  final Input<String> domainIdentifier;

  /// The metadata forms that are to be attached to the custom asset type.
  final Input<List<AssetTypeFormsInput>>? formsInputs;

  /// The name of the custom asset type.
  final Input<String>? name;

  /// The unique identifier of the Amazon DataZone project that owns the custom asset type.
  ///
  /// The following arguments are optional:
  final Input<String> owningProjectIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<AssetTypeTimeouts>? timeouts;

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
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['domainIdentifier'] = domainIdentifier;
    final formsInputsValue = formsInputs;
    if (formsInputsValue != null) {
      map['formsInputs'] = Input.mapOptionalInputValue<
              List<AssetTypeFormsInput>, List<Map<String, dynamic>>>(
          formsInputsValue,
          (value) =>
              Input.encodeList<AssetTypeFormsInput, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
      map['timeouts'] =
          Input.mapOptionalInputValue<AssetTypeTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AssetTypeArgs.fromMap(Map<String, dynamic> map) {
    return AssetTypeArgs(
      description: Input.asOptionalInput<String>(map['description']),
      domainIdentifier: Input.asInput<String>(map['domainIdentifier']),
      formsInputs:
          Input.asOptionalInput<List<AssetTypeFormsInput>>(map['formsInputs']),
      name: Input.asOptionalInput<String>(map['name']),
      owningProjectIdentifier:
          Input.asInput<String>(map['owningProjectIdentifier']),
      region: Input.asOptionalInput<String>(map['region']),
      timeouts: Input.asOptionalInput<AssetTypeTimeouts>(map['timeouts']),
    );
  }
}
