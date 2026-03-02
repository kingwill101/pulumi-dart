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
  AssetTypeState({
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
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      createdBy: map['createdBy'] == null ? null : ((map['createdBy'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      domainIdentifier: map['domainIdentifier'] == null ? null : ((map['domainIdentifier'] as String).input()).input(),
      formsInputs: map['formsInputs'] == null ? null : ((pulumi.Input.decodeList<AssetTypeFormsInput>(map['formsInputs']!, (value) => AssetTypeFormsInput.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      owningProjectIdentifier: map['owningProjectIdentifier'] == null ? null : ((map['owningProjectIdentifier'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      revision: map['revision'] == null ? null : ((map['revision'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((AssetTypeTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

