import 'package:pulumi/pulumi.dart' as pulumi;
import '../slot_type_enumeration_value/slot_type_enumeration_value.dart';
import 'slot_type_args.dart';

/// Provides an Amazon Lex Slot Type resource. For more information see
/// [Amazon Lex: How It Works](https://docs.aws.amazon.com/lex/latest/dg/how-it-works.html)
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import slot types using their name. For example:
///
/// ```sh
/// $ pulumi import aws:lex/slotType:SlotType flower_types FlowerTypes
/// ```
class SlotType extends pulumi.CustomResource {
  /// Checksum identifying the version of the slot type that was created. The checksum is
  /// not included as an argument because the resource will add it automatically when updating the slot type.
  late final pulumi.Output<String> checksum;

  /// Determines if a new slot type version is created when the initial resource is created and on each
  /// update. Defaults to `false`.
  late final pulumi.Output<bool?> createVersion;

  /// The date when the slot type version was created.
  late final pulumi.Output<String> createdDate;

  /// A description of the slot type. Must be less than or equal to 200 characters in length.
  late final pulumi.Output<String?> description;

  /// A list of EnumerationValue objects that defines the values that
  /// the slot type can take. Each value can have a list of synonyms, which are additional values that help
  /// train the machine learning model about the values that it resolves for a slot. Attributes are
  /// documented under enumeration_value.
  late final pulumi.Output<List<SlotTypeEnumerationValue>> enumerationValues;

  /// The date when the `$LATEST` version of this slot type was updated.
  late final pulumi.Output<String> lastUpdatedDate;

  /// The name of the slot type. The name is not case sensitive. Must be less than or equal to 100 characters in length.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Determines the slot resolution strategy that Amazon Lex
  /// uses to return slot type values. `ORIGINAL_VALUE` returns the value entered by the user if the user
  /// value is similar to the slot value. `TOP_RESOLUTION` returns the first value in the resolution list
  /// if there is a resolution list for the slot, otherwise null is returned. Defaults to `ORIGINAL_VALUE`.
  late final pulumi.Output<String?> valueSelectionStrategy;

  /// The version of the slot type.
  late final pulumi.Output<String> version;

  SlotType(
    String name, {
    SlotTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/slotType:SlotType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.checksum = registerOutput<String>('checksum');
    this.createVersion = registerOutput<bool?>('createVersion');
    this.createdDate = registerOutput<String>('createdDate');
    this.description = registerOutput<String?>('description');
    this.enumerationValues =
        registerOutput<List<SlotTypeEnumerationValue>>('enumerationValues');
    this.lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.valueSelectionStrategy =
        registerOutput<String?>('valueSelectionStrategy');
    this.version = registerOutput<String>('version');
  }
}
