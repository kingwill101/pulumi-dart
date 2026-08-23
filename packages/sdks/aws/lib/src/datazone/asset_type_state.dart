// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_type_forms_input.dart';
import 'asset_type_timeouts.dart';

/// Input properties used for looking up and filtering AssetType resources.
class AssetTypeState {
  /// The timestamp when the custom asset type was created.
  final pulumi.Input<String>? createdAt;
  /// The user who created the custom asset type.
  final pulumi.Input<String>? createdBy;
  /// The description of the custom asset type.
  final pulumi.Input<String>? description;
  /// The unique identifier of the Amazon DataZone domain where the custom asset type is being created.
  final pulumi.Input<String>? domainIdentifier;
  /// The metadata forms that are to be attached to the custom asset type.
  final pulumi.Input<List<AssetTypeFormsInput>>? formsInputs;
  /// The name of the custom asset type.
  final pulumi.Input<String>? name;
  /// The unique identifier of the Amazon DataZone project that owns the custom asset type.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? owningProjectIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The revision of the asset type.
  final pulumi.Input<String>? revision;
  final pulumi.Input<AssetTypeTimeouts>? timeouts;

  /// Creates a new [AssetTypeState].
  /// [createdAt] The timestamp when the custom asset type was created.
  /// [createdBy] The user who created the custom asset type.
  /// [description] The description of the custom asset type.
  /// [domainIdentifier] The unique identifier of the Amazon DataZone domain where the custom asset type is being created.
  /// [formsInputs] The metadata forms that are to be attached to the custom asset type.
  /// [name] The name of the custom asset type.
  /// [owningProjectIdentifier] The unique identifier of the Amazon DataZone project that owns the custom asset type.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revision] The revision of the asset type.
  /// [timeouts] Optional.
  const AssetTypeState({
    this.createdAt,
    this.createdBy,
    this.description,
    this.domainIdentifier,
    this.formsInputs,
    this.name,
    this.owningProjectIdentifier,
    this.region,
    this.revision,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'description': ?description,
      'domainIdentifier': ?domainIdentifier,
      'formsInputs': ?pulumi.Input.mapOptionalInputValue<List<AssetTypeFormsInput>, List<Map<String, dynamic>>>(formsInputs, (value) => pulumi.Input.encodeList<AssetTypeFormsInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'owningProjectIdentifier': ?owningProjectIdentifier,
      'region': ?region,
      'revision': ?revision,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AssetTypeTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AssetTypeState.fromMap(Map<String, dynamic> map) {
    return AssetTypeState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainIdentifier: (() { final guardedValue = map['domainIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      formsInputs: (() { final guardedValue = map['formsInputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssetTypeFormsInput>(guardedValue, (value) => AssetTypeFormsInput.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owningProjectIdentifier: (() { final guardedValue = map['owningProjectIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssetTypeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
