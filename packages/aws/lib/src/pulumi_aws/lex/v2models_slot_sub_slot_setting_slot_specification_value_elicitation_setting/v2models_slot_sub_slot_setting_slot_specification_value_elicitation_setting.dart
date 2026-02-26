// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_default_value_specification/v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_default_value_specification.dart';
import '../v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification/v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_prompt_specification.dart';
import '../v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_sample_utterance/v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_sample_utterance.dart';
import '../v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_wait_and_continue_specification/v2models_slot_sub_slot_setting_slot_specification_value_elicitation_setting_wait_and_continue_specification.dart';

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting {
  /// List of default values for a slot.
  /// See the <span pulumi-lang-nodejs="`defaultValueSpecification`" pulumi-lang-dotnet="`DefaultValueSpecification`" pulumi-lang-go="`defaultValueSpecification`" pulumi-lang-python="`default_value_specification`" pulumi-lang-yaml="`defaultValueSpecification`" pulumi-lang-java="`defaultValueSpecification`">`default_value_specification`</span> argument reference below.
  final List<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification>?
      defaultValueSpecifications;

  /// Prompt that Amazon Lex uses to elicit the slot value from the user.
  /// See the <span pulumi-lang-nodejs="`aws.lex.V2modelsIntent`" pulumi-lang-dotnet="`aws.lex.V2modelsIntent`" pulumi-lang-go="`lex.V2modelsIntent`" pulumi-lang-python="`lex.V2modelsIntent`" pulumi-lang-yaml="`aws.lex.V2modelsIntent`" pulumi-lang-java="`aws.lex.V2modelsIntent`">`aws.lex.V2modelsIntent`</span> resource for details on the <span pulumi-lang-nodejs="`promptSpecification`" pulumi-lang-dotnet="`PromptSpecification`" pulumi-lang-go="`promptSpecification`" pulumi-lang-python="`prompt_specification`" pulumi-lang-yaml="`promptSpecification`" pulumi-lang-java="`promptSpecification`">`prompt_specification`</span> argument reference - they are identical.
  final V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification?
      promptSpecification;
  final List<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance>?
      sampleUtterances;

  /// Specifies the prompts that Amazon Lex uses while a bot is waiting for customer input.
  /// See the <span pulumi-lang-nodejs="`waitAndContinueSpecification`" pulumi-lang-dotnet="`WaitAndContinueSpecification`" pulumi-lang-go="`waitAndContinueSpecification`" pulumi-lang-python="`wait_and_continue_specification`" pulumi-lang-yaml="`waitAndContinueSpecification`" pulumi-lang-java="`waitAndContinueSpecification`">`wait_and_continue_specification`</span> argument reference below.
  final List<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification>?
      waitAndContinueSpecifications;

  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting({
    this.defaultValueSpecifications,
    this.promptSpecification,
    this.sampleUtterances,
    this.waitAndContinueSpecifications,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultValueSpecificationsValue = defaultValueSpecifications;
    if (defaultValueSpecificationsValue != null) {
      map['defaultValueSpecifications'] = Input.encodeList<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification,
          Map<String,
              dynamic>>(defaultValueSpecificationsValue, (value) => value.toMap());
    }
    final promptSpecificationValue = promptSpecification;
    if (promptSpecificationValue != null) {
      map['promptSpecification'] = promptSpecificationValue.toMap();
    }
    final sampleUtterancesValue = sampleUtterances;
    if (sampleUtterancesValue != null) {
      map['sampleUtterances'] = Input.encodeList<
          V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance,
          Map<String,
              dynamic>>(sampleUtterancesValue, (value) => value.toMap());
    }
    final waitAndContinueSpecificationsValue = waitAndContinueSpecifications;
    if (waitAndContinueSpecificationsValue != null) {
      map['waitAndContinueSpecifications'] = Input.encodeList<
              V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification,
              Map<String, dynamic>>(
          waitAndContinueSpecificationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting(
      defaultValueSpecifications: map['defaultValueSpecifications'] == null
          ? null
          : Input.decodeList<
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification>(
              map['defaultValueSpecifications'],
              (value) =>
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification
                      .fromMap((value as Map).cast<String, dynamic>())),
      promptSpecification: map['promptSpecification'] == null
          ? null
          : V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification
              .fromMap(
                  (map['promptSpecification'] as Map).cast<String, dynamic>()),
      sampleUtterances: map['sampleUtterances'] == null
          ? null
          : Input.decodeList<
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance>(
              map['sampleUtterances'],
              (value) =>
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance
                      .fromMap((value as Map).cast<String, dynamic>())),
      waitAndContinueSpecifications: map['waitAndContinueSpecifications'] ==
              null
          ? null
          : Input.decodeList<
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification>(
              map['waitAndContinueSpecifications'],
              (value) =>
                  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
