import 'package:pulumi/pulumi.dart';
import '../v2models_slot_multiple_values_setting/v2models_slot_multiple_values_setting.dart';
import '../v2models_slot_obfuscation_setting/v2models_slot_obfuscation_setting.dart';
import '../v2models_slot_sub_slot_setting/v2models_slot_sub_slot_setting.dart';
import '../v2models_slot_timeouts/v2models_slot_timeouts.dart';
import '../v2models_slot_value_elicitation_setting/v2models_slot_value_elicitation_setting.dart';
import 'v2models_slot_args.dart';

/// Resource for managing an AWS Lex V2 Models Slot.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### `value_elicitation_setting` Example
///
/// > When using `value_elicitation_setting`, if you do not provide a `prompt_attempts_specification`, AWS Lex will configure default `prompt_attempts_specification`s.
/// As a result, Terraform will report a difference in the configuration.
/// To avoid this behavior, include `prompt_attempts_specification` blocks matching the default configuration, as shown below.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Lex V2 Models Slot using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:lex/v2modelsSlot:V2modelsSlot example bot-1234,1,intent-5678,en-US,slot-9012
/// ```
class V2modelsSlot extends CustomResource {
  /// Identifier of the bot associated with the slot.
  late final Output<String> botId;

  /// Version of the bot associated with the slot.
  late final Output<String> botVersion;

  /// Description of the slot.
  late final Output<String?> description;

  /// Identifier of the intent that contains the slot.
  late final Output<String> intentId;

  /// Identifier of the language and locale that the slot will be used in.
  late final Output<String> localeId;

  /// Whether the slot returns multiple values in one response.
  /// See the `multiple_values_setting` argument reference below.
  late final Output<List<V2modelsSlotMultipleValuesSetting>?>
      multipleValuesSettings;

  /// Name of the slot.
  late final Output<String> name;

  /// Determines how slot values are used in Amazon CloudWatch logs.
  /// See the `obfuscation_setting` argument reference below.
  late final Output<List<V2modelsSlotObfuscationSetting>?> obfuscationSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Unique identifier associated with the slot.
  late final Output<String> slotId;

  /// Unique identifier for the slot type associated with this slot.
  late final Output<String> slotTypeId;

  /// Specifications for the constituent sub slots and the expression for the composite slot.
  /// See the `sub_slot_setting` argument reference below.
  late final Output<List<V2modelsSlotSubSlotSetting>?> subSlotSettings;
  late final Output<V2modelsSlotTimeouts?> timeouts;

  /// Prompts that Amazon Lex sends to the user to elicit a response that provides the value for the slot.
  /// If you configure this block without `prompt_specification.*.prompt_attempts_specification`, AWS will provide default `prompt_attempts_specification` blocks for the initial prompt (map key `Initial`) and each retry attempt (map keys `Retry1`, `Retry2`, etc.).
  /// This will cause Terraform to report differences.
  /// Use the `value_elicitation_setting` configuration above in the `value_elicitation_setting` example to avoid differences resulting from AWS default configurations.
  /// See the `value_elicitation_setting` argument reference below.
  ///
  /// The following arguments are optional:
  late final Output<V2modelsSlotValueElicitationSetting>
      valueElicitationSetting;

  V2modelsSlot(
    String name, {
    V2modelsSlotArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lex/v2modelsSlot:V2modelsSlot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.botId = registerOutput<String>('botId');
    this.botVersion = registerOutput<String>('botVersion');
    this.description = registerOutput<String?>('description');
    this.intentId = registerOutput<String>('intentId');
    this.localeId = registerOutput<String>('localeId');
    this.multipleValuesSettings =
        registerOutput<List<V2modelsSlotMultipleValuesSetting>?>(
            'multipleValuesSettings');
    this.name = registerOutput<String>('name');
    this.obfuscationSettings =
        registerOutput<List<V2modelsSlotObfuscationSetting>?>(
            'obfuscationSettings');
    this.region = registerOutput<String>('region');
    this.slotId = registerOutput<String>('slotId');
    this.slotTypeId = registerOutput<String>('slotTypeId');
    this.subSlotSettings =
        registerOutput<List<V2modelsSlotSubSlotSetting>?>('subSlotSettings');
    this.timeouts = registerOutput<V2modelsSlotTimeouts?>('timeouts');
    this.valueElicitationSetting =
        registerOutput<V2modelsSlotValueElicitationSetting>(
            'valueElicitationSetting');
  }
}
