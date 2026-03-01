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
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? createdBy,
    pulumi.Output<String>? description,
    pulumi.Output<String>? domainIdentifier,
    pulumi.Output<List<AssetTypeFormsInput>>? formsInputs,
    pulumi.Output<String>? name,
    pulumi.Output<String>? owningProjectIdentifier,
    pulumi.Output<String>? region,
    pulumi.Output<String>? revision,
    pulumi.Output<AssetTypeTimeouts>? timeouts,
  }) :
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      createdBy = pulumi.Input.asOptionalInput<String>(createdBy),
      description = pulumi.Input.asOptionalInput<String>(description),
      domainIdentifier = pulumi.Input.asOptionalInput<String>(domainIdentifier),
      formsInputs = pulumi.Input.asOptionalInput<List<AssetTypeFormsInput>>(formsInputs),
      name = pulumi.Input.asOptionalInput<String>(name),
      owningProjectIdentifier = pulumi.Input.asOptionalInput<String>(owningProjectIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      revision = pulumi.Input.asOptionalInput<String>(revision),
      timeouts = pulumi.Input.asOptionalInput<AssetTypeTimeouts>(timeouts);

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
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<String>(map['createdBy'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainIdentifier: map['domainIdentifier'] == null ? null : pulumi.Output.create<String>(map['domainIdentifier'] as String),
      formsInputs: map['formsInputs'] == null ? null : pulumi.Output.create<List<AssetTypeFormsInput>>(pulumi.Input.decodeList<AssetTypeFormsInput>(map['formsInputs'], (value) => AssetTypeFormsInput.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      owningProjectIdentifier: map['owningProjectIdentifier'] == null ? null : pulumi.Output.create<String>(map['owningProjectIdentifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      revision: map['revision'] == null ? null : pulumi.Output.create<String>(map['revision'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AssetTypeTimeouts>(AssetTypeTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

