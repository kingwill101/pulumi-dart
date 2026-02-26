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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lex.V2modelsSlot("example", {
/// botId: exampleAwsLexv2modelsBot.id,
/// botVersion: exampleAwsLexv2modelsBotVersion.botVersion,
/// intentId: exampleAwsLexv2modelsIntent.id,
/// localeId: exampleAwsLexv2modelsBotLocale.localeId,
/// name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lex.V2modelsSlot("example",
/// bot_id=example_aws_lexv2models_bot["id"],
/// bot_version=example_aws_lexv2models_bot_version["botVersion"],
/// intent_id=example_aws_lexv2models_intent["id"],
/// locale_id=example_aws_lexv2models_bot_locale["localeId"],
/// name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lex.V2modelsSlot("example", new()
/// {
/// BotId = exampleAwsLexv2modelsBot.Id,
/// BotVersion = exampleAwsLexv2modelsBotVersion.BotVersion,
/// IntentId = exampleAwsLexv2modelsIntent.Id,
/// LocaleId = exampleAwsLexv2modelsBotLocale.LocaleId,
/// Name = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lex.NewV2modelsSlot(ctx, "example", &lex.V2modelsSlotArgs{
/// BotId:      pulumi.Any(exampleAwsLexv2modelsBot.Id),
/// BotVersion: pulumi.Any(exampleAwsLexv2modelsBotVersion.BotVersion),
/// IntentId:   pulumi.Any(exampleAwsLexv2modelsIntent.Id),
/// LocaleId:   pulumi.Any(exampleAwsLexv2modelsBotLocale.LocaleId),
/// Name:       pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lex.V2modelsSlot;
/// import com.pulumi.aws.lex.V2modelsSlotArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new V2modelsSlot("example", V2modelsSlotArgs.builder()
/// .botId(exampleAwsLexv2modelsBot.id())
/// .botVersion(exampleAwsLexv2modelsBotVersion.botVersion())
/// .intentId(exampleAwsLexv2modelsIntent.id())
/// .localeId(exampleAwsLexv2modelsBotLocale.localeId())
/// .name("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lex:V2modelsSlot
/// properties:
/// botId: ${exampleAwsLexv2modelsBot.id}
/// botVersion: ${exampleAwsLexv2modelsBotVersion.botVersion}
/// intentId: ${exampleAwsLexv2modelsIntent.id}
/// localeId: ${exampleAwsLexv2modelsBotLocale.localeId}
/// name: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### <span pulumi-lang-nodejs="`valueElicitationSetting`" pulumi-lang-dotnet="`ValueElicitationSetting`" pulumi-lang-go="`valueElicitationSetting`" pulumi-lang-python="`value_elicitation_setting`" pulumi-lang-yaml="`valueElicitationSetting`" pulumi-lang-java="`valueElicitationSetting`">`value_elicitation_setting`</span> Example
///
/// > When using <span pulumi-lang-nodejs="`valueElicitationSetting`" pulumi-lang-dotnet="`ValueElicitationSetting`" pulumi-lang-go="`valueElicitationSetting`" pulumi-lang-python="`value_elicitation_setting`" pulumi-lang-yaml="`valueElicitationSetting`" pulumi-lang-java="`valueElicitationSetting`">`value_elicitation_setting`</span>, if you do not provide a <span pulumi-lang-nodejs="`promptAttemptsSpecification`" pulumi-lang-dotnet="`PromptAttemptsSpecification`" pulumi-lang-go="`promptAttemptsSpecification`" pulumi-lang-python="`prompt_attempts_specification`" pulumi-lang-yaml="`promptAttemptsSpecification`" pulumi-lang-java="`promptAttemptsSpecification`">`prompt_attempts_specification`</span>, AWS Lex will configure default <span pulumi-lang-nodejs="`promptAttemptsSpecification`" pulumi-lang-dotnet="`PromptAttemptsSpecification`" pulumi-lang-go="`promptAttemptsSpecification`" pulumi-lang-python="`prompt_attempts_specification`" pulumi-lang-yaml="`promptAttemptsSpecification`" pulumi-lang-java="`promptAttemptsSpecification`">`prompt_attempts_specification`</span>s.
/// As a result, Terraform will report a difference in the configuration.
/// To avoid this behavior, include <span pulumi-lang-nodejs="`promptAttemptsSpecification`" pulumi-lang-dotnet="`PromptAttemptsSpecification`" pulumi-lang-go="`promptAttemptsSpecification`" pulumi-lang-python="`prompt_attempts_specification`" pulumi-lang-yaml="`promptAttemptsSpecification`" pulumi-lang-java="`promptAttemptsSpecification`">`prompt_attempts_specification`</span> blocks matching the default configuration, as shown below.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lex.V2modelsSlot("example", {
/// botId: test.id,
/// botVersion: testAwsLexv2modelsBotLocale.botVersion,
/// intentId: testAwsLexv2modelsIntent.intentId,
/// localeId: testAwsLexv2modelsBotLocale.localeId,
/// name: "example",
/// valueElicitationSetting: {
/// slotConstraint: "Required",
/// promptSpecification: {
/// allowInterrupt: true,
/// maxRetries: 1,
/// messageSelectionStrategy: "Random",
/// messageGroups: [{
/// message: {
/// plainTextMessage: {
/// value: "What is your favorite color?",
/// },
/// },
/// }],
/// promptAttemptsSpecifications: [
/// {
/// allowInterrupt: true,
/// mapBlockKey: "Initial",
/// allowedInputTypes: {
/// allowAudioInput: true,
/// allowDtmfInput: true,
/// },
/// audioAndDtmfInputSpecification: {
/// startTimeoutMs: 4000,
/// audioSpecification: {
/// endTimeoutMs: 640,
/// maxLengthMs: 15000,
/// },
/// dtmfSpecification: {
/// deletionCharacter: "*",
/// endCharacter: "#",
/// endTimeoutMs: 5000,
/// maxLength: 513,
/// },
/// },
/// textInputSpecification: {
/// startTimeoutMs: 30000,
/// },
/// },
/// {
/// allowInterrupt: true,
/// mapBlockKey: "Retry1",
/// allowedInputTypes: {
/// allowAudioInput: true,
/// allowDtmfInput: true,
/// },
/// audioAndDtmfInputSpecification: {
/// startTimeoutMs: 4000,
/// audioSpecification: {
/// endTimeoutMs: 640,
/// maxLengthMs: 15000,
/// },
/// dtmfSpecification: {
/// deletionCharacter: "*",
/// endCharacter: "#",
/// endTimeoutMs: 5000,
/// maxLength: 513,
/// },
/// },
/// textInputSpecification: {
/// startTimeoutMs: 30000,
/// },
/// },
/// ],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lex.V2modelsSlot("example",
/// bot_id=test["id"],
/// bot_version=test_aws_lexv2models_bot_locale["botVersion"],
/// intent_id=test_aws_lexv2models_intent["intentId"],
/// locale_id=test_aws_lexv2models_bot_locale["localeId"],
/// name="example",
/// value_elicitation_setting={
/// "slot_constraint": "Required",
/// "prompt_specification": {
/// "allow_interrupt": True,
/// "max_retries": 1,
/// "message_selection_strategy": "Random",
/// "message_groups": [{
/// "message": {
/// "plain_text_message": {
/// "value": "What is your favorite color?",
/// },
/// },
/// }],
/// "prompt_attempts_specifications": [
/// {
/// "allow_interrupt": True,
/// "map_block_key": "Initial",
/// "allowed_input_types": {
/// "allow_audio_input": True,
/// "allow_dtmf_input": True,
/// },
/// "audio_and_dtmf_input_specification": {
/// "start_timeout_ms": 4000,
/// "audio_specification": {
/// "end_timeout_ms": 640,
/// "max_length_ms": 15000,
/// },
/// "dtmf_specification": {
/// "deletion_character": "*",
/// "end_character": "#",
/// "end_timeout_ms": 5000,
/// "max_length": 513,
/// },
/// },
/// "text_input_specification": {
/// "start_timeout_ms": 30000,
/// },
/// },
/// {
/// "allow_interrupt": True,
/// "map_block_key": "Retry1",
/// "allowed_input_types": {
/// "allow_audio_input": True,
/// "allow_dtmf_input": True,
/// },
/// "audio_and_dtmf_input_specification": {
/// "start_timeout_ms": 4000,
/// "audio_specification": {
/// "end_timeout_ms": 640,
/// "max_length_ms": 15000,
/// },
/// "dtmf_specification": {
/// "deletion_character": "*",
/// "end_character": "#",
/// "end_timeout_ms": 5000,
/// "max_length": 513,
/// },
/// },
/// "text_input_specification": {
/// "start_timeout_ms": 30000,
/// },
/// },
/// ],
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lex.V2modelsSlot("example", new()
/// {
/// BotId = test.Id,
/// BotVersion = testAwsLexv2modelsBotLocale.BotVersion,
/// IntentId = testAwsLexv2modelsIntent.IntentId,
/// LocaleId = testAwsLexv2modelsBotLocale.LocaleId,
/// Name = "example",
/// ValueElicitationSetting = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingArgs
/// {
/// SlotConstraint = "Required",
/// PromptSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationArgs
/// {
/// AllowInterrupt = true,
/// MaxRetries = 1,
/// MessageSelectionStrategy = "Random",
/// MessageGroups = new[]
/// {
/// new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupArgs
/// {
/// Message = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageArgs
/// {
/// PlainTextMessage = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessageArgs
/// {
/// Value = "What is your favorite color?",
/// },
/// },
/// },
/// },
/// PromptAttemptsSpecifications = new[]
/// {
/// new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationArgs
/// {
/// AllowInterrupt = true,
/// MapBlockKey = "Initial",
/// AllowedInputTypes = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs
/// {
/// AllowAudioInput = true,
/// AllowDtmfInput = true,
/// },
/// AudioAndDtmfInputSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs
/// {
/// StartTimeoutMs = 4000,
/// AudioSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs
/// {
/// EndTimeoutMs = 640,
/// MaxLengthMs = 15000,
/// },
/// DtmfSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs
/// {
/// DeletionCharacter = "*",
/// EndCharacter = "#",
/// EndTimeoutMs = 5000,
/// MaxLength = 513,
/// },
/// },
/// TextInputSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs
/// {
/// StartTimeoutMs = 30000,
/// },
/// },
/// new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationArgs
/// {
/// AllowInterrupt = true,
/// MapBlockKey = "Retry1",
/// AllowedInputTypes = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs
/// {
/// AllowAudioInput = true,
/// AllowDtmfInput = true,
/// },
/// AudioAndDtmfInputSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs
/// {
/// StartTimeoutMs = 4000,
/// AudioSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs
/// {
/// EndTimeoutMs = 640,
/// MaxLengthMs = 15000,
/// },
/// DtmfSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs
/// {
/// DeletionCharacter = "*",
/// EndCharacter = "#",
/// EndTimeoutMs = 5000,
/// MaxLength = 513,
/// },
/// },
/// TextInputSpecification = new Aws.Lex.Inputs.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs
/// {
/// StartTimeoutMs = 30000,
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lex.NewV2modelsSlot(ctx, "example", &lex.V2modelsSlotArgs{
/// BotId:      pulumi.Any(test.Id),
/// BotVersion: pulumi.Any(testAwsLexv2modelsBotLocale.BotVersion),
/// IntentId:   pulumi.Any(testAwsLexv2modelsIntent.IntentId),
/// LocaleId:   pulumi.Any(testAwsLexv2modelsBotLocale.LocaleId),
/// Name:       pulumi.String("example"),
/// ValueElicitationSetting: &lex.V2modelsSlotValueElicitationSettingArgs{
/// SlotConstraint: pulumi.String("Required"),
/// PromptSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationArgs{
/// AllowInterrupt:           pulumi.Bool(true),
/// MaxRetries:               pulumi.Int(1),
/// MessageSelectionStrategy: pulumi.String("Random"),
/// MessageGroups: lex.V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupArray{
/// &lex.V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupArgs{
/// Message: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageArgs{
/// PlainTextMessage: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessageArgs{
/// Value: pulumi.String("What is your favorite color?"),
/// },
/// },
/// },
/// },
/// PromptAttemptsSpecifications: lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationArray{
/// &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationArgs{
/// AllowInterrupt: pulumi.Bool(true),
/// MapBlockKey:    pulumi.String("Initial"),
/// AllowedInputTypes: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs{
/// AllowAudioInput: pulumi.Bool(true),
/// AllowDtmfInput:  pulumi.Bool(true),
/// },
/// AudioAndDtmfInputSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs{
/// StartTimeoutMs: pulumi.Int(4000),
/// AudioSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs{
/// EndTimeoutMs: pulumi.Int(640),
/// MaxLengthMs:  pulumi.Int(15000),
/// },
/// DtmfSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs{
/// DeletionCharacter: pulumi.String("*"),
/// EndCharacter:      pulumi.String("#"),
/// EndTimeoutMs:      pulumi.Int(5000),
/// MaxLength:         pulumi.Int(513),
/// },
/// },
/// TextInputSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs{
/// StartTimeoutMs: pulumi.Int(30000),
/// },
/// },
/// &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationArgs{
/// AllowInterrupt: pulumi.Bool(true),
/// MapBlockKey:    pulumi.String("Retry1"),
/// AllowedInputTypes: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs{
/// AllowAudioInput: pulumi.Bool(true),
/// AllowDtmfInput:  pulumi.Bool(true),
/// },
/// AudioAndDtmfInputSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs{
/// StartTimeoutMs: pulumi.Int(4000),
/// AudioSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs{
/// EndTimeoutMs: pulumi.Int(640),
/// MaxLengthMs:  pulumi.Int(15000),
/// },
/// DtmfSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs{
/// DeletionCharacter: pulumi.String("*"),
/// EndCharacter:      pulumi.String("#"),
/// EndTimeoutMs:      pulumi.Int(5000),
/// MaxLength:         pulumi.Int(513),
/// },
/// },
/// TextInputSpecification: &lex.V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs{
/// StartTimeoutMs: pulumi.Int(30000),
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lex.V2modelsSlot;
/// import com.pulumi.aws.lex.V2modelsSlotArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsSlotValueElicitationSettingArgs;
/// import com.pulumi.aws.lex.inputs.V2modelsSlotValueElicitationSettingPromptSpecificationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new V2modelsSlot("example", V2modelsSlotArgs.builder()
/// .botId(test.id())
/// .botVersion(testAwsLexv2modelsBotLocale.botVersion())
/// .intentId(testAwsLexv2modelsIntent.intentId())
/// .localeId(testAwsLexv2modelsBotLocale.localeId())
/// .name("example")
/// .valueElicitationSetting(V2modelsSlotValueElicitationSettingArgs.builder()
/// .slotConstraint("Required")
/// .promptSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationArgs.builder()
/// .allowInterrupt(true)
/// .maxRetries(1)
/// .messageSelectionStrategy("Random")
/// .messageGroups(V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupArgs.builder()
/// .message(V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageArgs.builder()
/// .plainTextMessage(V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessageArgs.builder()
/// .value("What is your favorite color?")
/// .build())
/// .build())
/// .build())
/// .promptAttemptsSpecifications(
/// V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationArgs.builder()
/// .allowInterrupt(true)
/// .mapBlockKey("Initial")
/// .allowedInputTypes(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs.builder()
/// .allowAudioInput(true)
/// .allowDtmfInput(true)
/// .build())
/// .audioAndDtmfInputSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs.builder()
/// .startTimeoutMs(4000)
/// .audioSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs.builder()
/// .endTimeoutMs(640)
/// .maxLengthMs(15000)
/// .build())
/// .dtmfSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs.builder()
/// .deletionCharacter("*")
/// .endCharacter("#")
/// .endTimeoutMs(5000)
/// .maxLength(513)
/// .build())
/// .build())
/// .textInputSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs.builder()
/// .startTimeoutMs(30000)
/// .build())
/// .build(),
/// V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationArgs.builder()
/// .allowInterrupt(true)
/// .mapBlockKey("Retry1")
/// .allowedInputTypes(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypesArgs.builder()
/// .allowAudioInput(true)
/// .allowDtmfInput(true)
/// .build())
/// .audioAndDtmfInputSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationArgs.builder()
/// .startTimeoutMs(4000)
/// .audioSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecificationArgs.builder()
/// .endTimeoutMs(640)
/// .maxLengthMs(15000)
/// .build())
/// .dtmfSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecificationArgs.builder()
/// .deletionCharacter("*")
/// .endCharacter("#")
/// .endTimeoutMs(5000)
/// .maxLength(513)
/// .build())
/// .build())
/// .textInputSpecification(V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecificationArgs.builder()
/// .startTimeoutMs(30000)
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lex:V2modelsSlot
/// properties:
/// botId: ${test.id}
/// botVersion: ${testAwsLexv2modelsBotLocale.botVersion}
/// intentId: ${testAwsLexv2modelsIntent.intentId}
/// localeId: ${testAwsLexv2modelsBotLocale.localeId}
/// name: example
/// valueElicitationSetting:
/// slotConstraint: Required
/// promptSpecification:
/// allowInterrupt: true
/// maxRetries: 1
/// messageSelectionStrategy: Random
/// messageGroups:
/// - message:
/// plainTextMessage:
/// value: What is your favorite color?
/// promptAttemptsSpecifications:
/// - allowInterrupt: true
/// mapBlockKey: Initial
/// allowedInputTypes:
/// allowAudioInput: true
/// allowDtmfInput: true
/// audioAndDtmfInputSpecification:
/// startTimeoutMs: 4000
/// audioSpecification:
/// endTimeoutMs: 640
/// maxLengthMs: 15000
/// dtmfSpecification:
/// deletionCharacter: '*'
/// endCharacter: '#'
/// endTimeoutMs: 5000
/// maxLength: 513
/// textInputSpecification:
/// startTimeoutMs: 30000
/// - allowInterrupt: true
/// mapBlockKey: Retry1
/// allowedInputTypes:
/// allowAudioInput: true
/// allowDtmfInput: true
/// audioAndDtmfInputSpecification:
/// startTimeoutMs: 4000
/// audioSpecification:
/// endTimeoutMs: 640
/// maxLengthMs: 15000
/// dtmfSpecification:
/// deletionCharacter: '*'
/// endCharacter: '#'
/// endTimeoutMs: 5000
/// maxLength: 513
/// textInputSpecification:
/// startTimeoutMs: 30000
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Lex V2 Models Slot using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
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
  /// See the <span pulumi-lang-nodejs="`multipleValuesSetting`" pulumi-lang-dotnet="`MultipleValuesSetting`" pulumi-lang-go="`multipleValuesSetting`" pulumi-lang-python="`multiple_values_setting`" pulumi-lang-yaml="`multipleValuesSetting`" pulumi-lang-java="`multipleValuesSetting`">`multiple_values_setting`</span> argument reference below.
  late final Output<List<V2modelsSlotMultipleValuesSetting>?>
      multipleValuesSettings;

  /// Name of the slot.
  late final Output<String> name;

  /// Determines how slot values are used in Amazon CloudWatch logs.
  /// See the <span pulumi-lang-nodejs="`obfuscationSetting`" pulumi-lang-dotnet="`ObfuscationSetting`" pulumi-lang-go="`obfuscationSetting`" pulumi-lang-python="`obfuscation_setting`" pulumi-lang-yaml="`obfuscationSetting`" pulumi-lang-java="`obfuscationSetting`">`obfuscation_setting`</span> argument reference below.
  late final Output<List<V2modelsSlotObfuscationSetting>?> obfuscationSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Unique identifier associated with the slot.
  late final Output<String> slotId;

  /// Unique identifier for the slot type associated with this slot.
  late final Output<String> slotTypeId;

  /// Specifications for the constituent sub slots and the expression for the composite slot.
  /// See the <span pulumi-lang-nodejs="`subSlotSetting`" pulumi-lang-dotnet="`SubSlotSetting`" pulumi-lang-go="`subSlotSetting`" pulumi-lang-python="`sub_slot_setting`" pulumi-lang-yaml="`subSlotSetting`" pulumi-lang-java="`subSlotSetting`">`sub_slot_setting`</span> argument reference below.
  late final Output<List<V2modelsSlotSubSlotSetting>?> subSlotSettings;
  late final Output<V2modelsSlotTimeouts?> timeouts;

  /// Prompts that Amazon Lex sends to the user to elicit a response that provides the value for the slot.
  /// If you configure this block without `prompt_specification.*.prompt_attempts_specification`, AWS will provide default <span pulumi-lang-nodejs="`promptAttemptsSpecification`" pulumi-lang-dotnet="`PromptAttemptsSpecification`" pulumi-lang-go="`promptAttemptsSpecification`" pulumi-lang-python="`prompt_attempts_specification`" pulumi-lang-yaml="`promptAttemptsSpecification`" pulumi-lang-java="`promptAttemptsSpecification`">`prompt_attempts_specification`</span> blocks for the initial prompt (map key `Initial`) and each retry attempt (map keys `Retry1`, `Retry2`, etc.).
  /// This will cause Terraform to report differences.
  /// Use the <span pulumi-lang-nodejs="`valueElicitationSetting`" pulumi-lang-dotnet="`ValueElicitationSetting`" pulumi-lang-go="`valueElicitationSetting`" pulumi-lang-python="`value_elicitation_setting`" pulumi-lang-yaml="`valueElicitationSetting`" pulumi-lang-java="`valueElicitationSetting`">`value_elicitation_setting`</span> configuration above in the <span pulumi-lang-nodejs="`valueElicitationSetting`" pulumi-lang-dotnet="`ValueElicitationSetting`" pulumi-lang-go="`valueElicitationSetting`" pulumi-lang-python="`value_elicitation_setting`" pulumi-lang-yaml="`valueElicitationSetting`" pulumi-lang-java="`valueElicitationSetting`">`value_elicitation_setting`</span> example to avoid differences resulting from AWS default configurations.
  /// See the <span pulumi-lang-nodejs="`valueElicitationSetting`" pulumi-lang-dotnet="`ValueElicitationSetting`" pulumi-lang-go="`valueElicitationSetting`" pulumi-lang-python="`value_elicitation_setting`" pulumi-lang-yaml="`valueElicitationSetting`" pulumi-lang-java="`valueElicitationSetting`">`value_elicitation_setting`</span> argument reference below.
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
    this.botId = Output.createUnknown<String>();
    this.botVersion = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.intentId = Output.createUnknown<String>();
    this.localeId = Output.createUnknown<String>();
    this.multipleValuesSettings =
        Output.createUnknown<List<V2modelsSlotMultipleValuesSetting>?>();
    this.name = Output.createUnknown<String>();
    this.obfuscationSettings =
        Output.createUnknown<List<V2modelsSlotObfuscationSetting>?>();
    this.region = Output.createUnknown<String>();
    this.slotId = Output.createUnknown<String>();
    this.slotTypeId = Output.createUnknown<String>();
    this.subSlotSettings =
        Output.createUnknown<List<V2modelsSlotSubSlotSetting>?>();
    this.timeouts = Output.createUnknown<V2modelsSlotTimeouts?>();
    this.valueElicitationSetting =
        Output.createUnknown<V2modelsSlotValueElicitationSetting>();
  }
}
