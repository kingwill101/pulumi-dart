import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2models_slot_type_composite_slot_type_setting/v2models_slot_type_composite_slot_type_setting.dart';
import '../v2models_slot_type_external_source_setting/v2models_slot_type_external_source_setting.dart';
import '../v2models_slot_type_slot_type_value/v2models_slot_type_slot_type_value.dart';
import '../v2models_slot_type_timeouts/v2models_slot_type_timeouts.dart';
import '../v2models_slot_type_value_selection_setting/v2models_slot_type_value_selection_setting.dart';
import 'v2models_slot_type_args.dart';

/// Resource for managing an AWS Lex V2 Models Slot Type.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### value_selection_setting Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Lex V2 Models Slot Type using using a comma-delimited string concatenating `bot_id`, `bot_version`, `locale_id`, and `slot_type_id`. For example:
///
/// ```sh
/// $ pulumi import aws:lex/v2modelsSlotType:V2modelsSlotType example bot-1234,DRAFT,en_US,slot_type-id-12345678
/// ```
class V2modelsSlotType extends pulumi.CustomResource {
  /// Identifier of the bot associated with this slot type.
  late final pulumi.Output<String> botId;

  /// Version of the bot associated with this slot type.
  late final pulumi.Output<String> botVersion;

  /// Specifications for a composite slot type.
  /// See `composite_slot_type_setting` argument reference below.
  late final pulumi.Output<List<V2modelsSlotTypeCompositeSlotTypeSetting>?>
      compositeSlotTypeSettings;

  /// Description of the slot type.
  late final pulumi.Output<String?> description;

  /// Type of external information used to create the slot type.
  /// See `external_source_setting` argument reference below.
  late final pulumi.Output<List<V2modelsSlotTypeExternalSourceSetting>?>
      externalSourceSettings;

  /// Identifier of the language and locale where this slot type is used.
  /// All of the bots, slot types, and slots used by the intent must have the same locale.
  late final pulumi.Output<String> localeId;

  /// Name of the slot type.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Built-in slot type used as a parent of this slot type.
  /// When you define a parent slot type, the new slot type has the configuration of the parent slot type.
  /// Only `AMAZON.AlphaNumeric` is supported.
  late final pulumi.Output<String?> parentSlotTypeSignature;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Unique identifier for the slot type.
  late final pulumi.Output<String> slotTypeId;

  /// List of SlotTypeValue objects that defines the values that the slot type can take.
  /// Each value can have a list of synonyms, additional values that help train the machine learning model about the values that it resolves for a slot.
  /// See `slot_type_values` argument reference below.
  late final pulumi.Output<List<V2modelsSlotTypeSlotTypeValue>?> slotTypeValues;
  late final pulumi.Output<V2modelsSlotTypeTimeouts?> timeouts;

  /// Determines the strategy that Amazon Lex uses to select a value from the list of possible values.
  /// See `value_selection_setting` argument reference below.
  late final pulumi.Output<V2modelsSlotTypeValueSelectionSetting?>
      valueSelectionSetting;

  V2modelsSlotType(
    String name, {
    V2modelsSlotTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/v2modelsSlotType:V2modelsSlotType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.botId = registerOutput<String>('botId');
    this.botVersion = registerOutput<String>('botVersion');
    this.compositeSlotTypeSettings =
        registerOutput<List<V2modelsSlotTypeCompositeSlotTypeSetting>?>(
            'compositeSlotTypeSettings');
    this.description = registerOutput<String?>('description');
    this.externalSourceSettings =
        registerOutput<List<V2modelsSlotTypeExternalSourceSetting>?>(
            'externalSourceSettings');
    this.localeId = registerOutput<String>('localeId');
    this.name = registerOutput<String>('name');
    this.parentSlotTypeSignature =
        registerOutput<String?>('parentSlotTypeSignature');
    this.region = registerOutput<String>('region');
    this.slotTypeId = registerOutput<String>('slotTypeId');
    this.slotTypeValues =
        registerOutput<List<V2modelsSlotTypeSlotTypeValue>?>('slotTypeValues');
    this.timeouts = registerOutput<V2modelsSlotTypeTimeouts?>('timeouts');
    this.valueSelectionSetting =
        registerOutput<V2modelsSlotTypeValueSelectionSetting?>(
            'valueSelectionSetting');
  }
}
