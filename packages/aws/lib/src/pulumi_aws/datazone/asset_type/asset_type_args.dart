// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../asset_type_forms_input/asset_type_forms_input.dart';
import '../asset_type_timeouts/asset_type_timeouts.dart';

/// The set of arguments for AssetType.
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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      domainIdentifier: pulumi.Input.asInput<String>(map['domainIdentifier']),
      formsInputs: pulumi.Input.asOptionalInput<List<AssetTypeFormsInput>>(
          map['formsInputs']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      owningProjectIdentifier:
          pulumi.Input.asInput<String>(map['owningProjectIdentifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      timeouts:
          pulumi.Input.asOptionalInput<AssetTypeTimeouts>(map['timeouts']),
    );
  }
}
