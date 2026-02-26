import 'package:pulumi/pulumi.dart';
import '../state_machine_encryption_configuration/state_machine_encryption_configuration.dart';
import '../state_machine_logging_configuration/state_machine_logging_configuration.dart';
import '../state_machine_tracing_configuration/state_machine_tracing_configuration.dart';
import 'state_machine_args.dart';

/// Provides a Step Function State Machine resource
///
/// ## Example Usage
///
/// ### Basic (Standard Workflow)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // ...
/// const sfnStateMachine = new aws.sfn.StateMachine("sfn_state_machine", {
/// name: "my-state-machine",
/// roleArn: iamForSfn.arn,
/// definition: `{
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"${lambda.arn}\",
/// \"End\": true
/// }
/// }
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # ...
/// sfn_state_machine = aws.sfn.StateMachine("sfn_state_machine",
/// name="my-state-machine",
/// role_arn=iam_for_sfn["arn"],
/// definition=f"""{{
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {{
/// \"HelloWorld\": {{
/// \"Type\": \"Task\",
/// \"Resource\": \"{lambda_["arn"]}\",
/// \"End\": true
/// }}
/// }}
/// }}
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // ...
/// var sfnStateMachine = new Aws.Sfn.StateMachine("sfn_state_machine", new()
/// {
/// Name = "my-state-machine",
/// RoleArn = iamForSfn.Arn,
/// Definition = @$"{{
/// \""Comment\"": \""A Hello World example of the Amazon States Language using an AWS Lambda Function\"",
/// \""StartAt\"": \""HelloWorld\"",
/// \""States\"": {{
/// \""HelloWorld\"": {{
/// \""Type\"": \""Task\"",
/// \""Resource\"": \""{lambda.Arn}\"",
/// \""End\"": true
/// }}
/// }}
/// }}
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sfn"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // ...
/// _, err := sfn.NewStateMachine(ctx, "sfn_state_machine", &sfn.StateMachineArgs{
/// Name:    pulumi.String("my-state-machine"),
/// RoleArn: pulumi.Any(iamForSfn.Arn),
/// Definition: pulumi.Sprintf(`{
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"%v\",
/// \"End\": true
/// }
/// }
/// }
/// `, lambda.Arn),
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
/// import com.pulumi.aws.sfn.StateMachine;
/// import com.pulumi.aws.sfn.StateMachineArgs;
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
/// // ...
/// var sfnStateMachine = new StateMachine("sfnStateMachine", StateMachineArgs.builder()
/// .name("my-state-machine")
/// .roleArn(iamForSfn.arn())
/// .definition("""
/// {
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"%s\",
/// \"End\": true
/// }
/// }
/// }
/// ", lambda.arn()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # ...
/// sfnStateMachine:
/// type: aws:sfn:StateMachine
/// name: sfn_state_machine
/// properties:
/// name: my-state-machine
/// roleArn: ${iamForSfn.arn}
/// definition: |
/// {
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"${lambda.arn}\",
/// \"End\": true
/// }
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Basic (Express Workflow)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // ...
/// const sfnStateMachine = new aws.sfn.StateMachine("sfn_state_machine", {
/// name: "my-state-machine",
/// roleArn: iamForSfn.arn,
/// type: "EXPRESS",
/// definition: `{
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"${lambda.arn}\",
/// \"End\": true
/// }
/// }
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # ...
/// sfn_state_machine = aws.sfn.StateMachine("sfn_state_machine",
/// name="my-state-machine",
/// role_arn=iam_for_sfn["arn"],
/// type="EXPRESS",
/// definition=f"""{{
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {{
/// \"HelloWorld\": {{
/// \"Type\": \"Task\",
/// \"Resource\": \"{lambda_["arn"]}\",
/// \"End\": true
/// }}
/// }}
/// }}
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // ...
/// var sfnStateMachine = new Aws.Sfn.StateMachine("sfn_state_machine", new()
/// {
/// Name = "my-state-machine",
/// RoleArn = iamForSfn.Arn,
/// Type = "EXPRESS",
/// Definition = @$"{{
/// \""Comment\"": \""A Hello World example of the Amazon States Language using an AWS Lambda Function\"",
/// \""StartAt\"": \""HelloWorld\"",
/// \""States\"": {{
/// \""HelloWorld\"": {{
/// \""Type\"": \""Task\"",
/// \""Resource\"": \""{lambda.Arn}\"",
/// \""End\"": true
/// }}
/// }}
/// }}
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sfn"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // ...
/// _, err := sfn.NewStateMachine(ctx, "sfn_state_machine", &sfn.StateMachineArgs{
/// Name:    pulumi.String("my-state-machine"),
/// RoleArn: pulumi.Any(iamForSfn.Arn),
/// Type:    pulumi.String("EXPRESS"),
/// Definition: pulumi.Sprintf(`{
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"%v\",
/// \"End\": true
/// }
/// }
/// }
/// `, lambda.Arn),
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
/// import com.pulumi.aws.sfn.StateMachine;
/// import com.pulumi.aws.sfn.StateMachineArgs;
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
/// // ...
/// var sfnStateMachine = new StateMachine("sfnStateMachine", StateMachineArgs.builder()
/// .name("my-state-machine")
/// .roleArn(iamForSfn.arn())
/// .type("EXPRESS")
/// .definition("""
/// {
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"%s\",
/// \"End\": true
/// }
/// }
/// }
/// ", lambda.arn()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # ...
/// sfnStateMachine:
/// type: aws:sfn:StateMachine
/// name: sfn_state_machine
/// properties:
/// name: my-state-machine
/// roleArn: ${iamForSfn.arn}
/// type: EXPRESS
/// definition: |
/// {
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"${lambda.arn}\",
/// \"End\": true
/// }
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Publish (Publish SFN version)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // ...
/// const sfnStateMachine = new aws.sfn.StateMachine("sfn_state_machine", {
/// name: "my-state-machine",
/// roleArn: iamForSfn.arn,
/// publish: true,
/// type: "EXPRESS",
/// definition: `{
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"${lambda.arn}\",
/// \"End\": true
/// }
/// }
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # ...
/// sfn_state_machine = aws.sfn.StateMachine("sfn_state_machine",
/// name="my-state-machine",
/// role_arn=iam_for_sfn["arn"],
/// publish=True,
/// type="EXPRESS",
/// definition=f"""{{
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {{
/// \"HelloWorld\": {{
/// \"Type\": \"Task\",
/// \"Resource\": \"{lambda_["arn"]}\",
/// \"End\": true
/// }}
/// }}
/// }}
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // ...
/// var sfnStateMachine = new Aws.Sfn.StateMachine("sfn_state_machine", new()
/// {
/// Name = "my-state-machine",
/// RoleArn = iamForSfn.Arn,
/// Publish = true,
/// Type = "EXPRESS",
/// Definition = @$"{{
/// \""Comment\"": \""A Hello World example of the Amazon States Language using an AWS Lambda Function\"",
/// \""StartAt\"": \""HelloWorld\"",
/// \""States\"": {{
/// \""HelloWorld\"": {{
/// \""Type\"": \""Task\"",
/// \""Resource\"": \""{lambda.Arn}\"",
/// \""End\"": true
/// }}
/// }}
/// }}
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sfn"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // ...
/// _, err := sfn.NewStateMachine(ctx, "sfn_state_machine", &sfn.StateMachineArgs{
/// Name:    pulumi.String("my-state-machine"),
/// RoleArn: pulumi.Any(iamForSfn.Arn),
/// Publish: pulumi.Bool(true),
/// Type:    pulumi.String("EXPRESS"),
/// Definition: pulumi.Sprintf(`{
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"%v\",
/// \"End\": true
/// }
/// }
/// }
/// `, lambda.Arn),
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
/// import com.pulumi.aws.sfn.StateMachine;
/// import com.pulumi.aws.sfn.StateMachineArgs;
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
/// // ...
/// var sfnStateMachine = new StateMachine("sfnStateMachine", StateMachineArgs.builder()
/// .name("my-state-machine")
/// .roleArn(iamForSfn.arn())
/// .publish(true)
/// .type("EXPRESS")
/// .definition("""
/// {
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"%s\",
/// \"End\": true
/// }
/// }
/// }
/// ", lambda.arn()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # ...
/// sfnStateMachine:
/// type: aws:sfn:StateMachine
/// name: sfn_state_machine
/// properties:
/// name: my-state-machine
/// roleArn: ${iamForSfn.arn}
/// publish: true
/// type: EXPRESS
/// definition: |
/// {
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"${lambda.arn}\",
/// \"End\": true
/// }
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Logging
///
/// > *NOTE:* See the [AWS Step Functions Developer Guide](https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html) for more information about enabling Step Function logging.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // ...
/// const sfnStateMachine = new aws.sfn.StateMachine("sfn_state_machine", {
/// name: "my-state-machine",
/// roleArn: iamForSfn.arn,
/// definition: `{
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"${lambda.arn}\",
/// \"End\": true
/// }
/// }
/// }
/// `,
/// loggingConfiguration: {
/// logDestination: `${logGroupForSfn.arn}:*`,
/// includeExecutionData: true,
/// level: "ERROR",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # ...
/// sfn_state_machine = aws.sfn.StateMachine("sfn_state_machine",
/// name="my-state-machine",
/// role_arn=iam_for_sfn["arn"],
/// definition=f"""{{
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {{
/// \"HelloWorld\": {{
/// \"Type\": \"Task\",
/// \"Resource\": \"{lambda_["arn"]}\",
/// \"End\": true
/// }}
/// }}
/// }}
/// """,
/// logging_configuration={
/// "log_destination": f"{log_group_for_sfn['arn']}:*",
/// "include_execution_data": True,
/// "level": "ERROR",
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
/// // ...
/// var sfnStateMachine = new Aws.Sfn.StateMachine("sfn_state_machine", new()
/// {
/// Name = "my-state-machine",
/// RoleArn = iamForSfn.Arn,
/// Definition = @$"{{
/// \""Comment\"": \""A Hello World example of the Amazon States Language using an AWS Lambda Function\"",
/// \""StartAt\"": \""HelloWorld\"",
/// \""States\"": {{
/// \""HelloWorld\"": {{
/// \""Type\"": \""Task\"",
/// \""Resource\"": \""{lambda.Arn}\"",
/// \""End\"": true
/// }}
/// }}
/// }}
/// ",
/// LoggingConfiguration = new Aws.Sfn.Inputs.StateMachineLoggingConfigurationArgs
/// {
/// LogDestination = $"{logGroupForSfn.Arn}:*",
/// IncludeExecutionData = true,
/// Level = "ERROR",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sfn"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // ...
/// _, err := sfn.NewStateMachine(ctx, "sfn_state_machine", &sfn.StateMachineArgs{
/// Name:    pulumi.String("my-state-machine"),
/// RoleArn: pulumi.Any(iamForSfn.Arn),
/// Definition: pulumi.Sprintf(`{
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"%v\",
/// \"End\": true
/// }
/// }
/// }
/// `, lambda.Arn),
/// LoggingConfiguration: &sfn.StateMachineLoggingConfigurationArgs{
/// LogDestination:       pulumi.Sprintf("%v:*", logGroupForSfn.Arn),
/// IncludeExecutionData: pulumi.Bool(true),
/// Level:                pulumi.String("ERROR"),
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
/// import com.pulumi.aws.sfn.StateMachine;
/// import com.pulumi.aws.sfn.StateMachineArgs;
/// import com.pulumi.aws.sfn.inputs.StateMachineLoggingConfigurationArgs;
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
/// // ...
/// var sfnStateMachine = new StateMachine("sfnStateMachine", StateMachineArgs.builder()
/// .name("my-state-machine")
/// .roleArn(iamForSfn.arn())
/// .definition("""
/// {
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"%s\",
/// \"End\": true
/// }
/// }
/// }
/// ", lambda.arn()))
/// .loggingConfiguration(StateMachineLoggingConfigurationArgs.builder()
/// .logDestination(String.format("%s:*", logGroupForSfn.arn()))
/// .includeExecutionData(true)
/// .level("ERROR")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # ...
/// sfnStateMachine:
/// type: aws:sfn:StateMachine
/// name: sfn_state_machine
/// properties:
/// name: my-state-machine
/// roleArn: ${iamForSfn.arn}
/// definition: |
/// {
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"${lambda.arn}\",
/// \"End\": true
/// }
/// }
/// }
/// loggingConfiguration:
/// logDestination: ${logGroupForSfn.arn}:*
/// includeExecutionData: true
/// level: ERROR
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Encryption
///
/// > *NOTE:* See the section [Data at rest encyption](https://docs.aws.amazon.com/step-functions/latest/dg/encryption-at-rest.html) in the [AWS Step Functions Developer Guide](https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html) for more information about enabling encryption of data using a customer-managed key for Step Functions State Machines data.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // ...
/// const sfnStateMachine = new aws.sfn.StateMachine("sfn_state_machine", {
/// name: "my-state-machine",
/// roleArn: iamForSfn.arn,
/// definition: `{
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"${lambda.arn}\",
/// \"End\": true
/// }
/// }
/// }
/// `,
/// encryptionConfiguration: {
/// kmsKeyId: kmsKeyForSfn.arn,
/// type: "CUSTOMER_MANAGED_KMS_KEY",
/// kmsDataKeyReusePeriodSeconds: 900,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # ...
/// sfn_state_machine = aws.sfn.StateMachine("sfn_state_machine",
/// name="my-state-machine",
/// role_arn=iam_for_sfn["arn"],
/// definition=f"""{{
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {{
/// \"HelloWorld\": {{
/// \"Type\": \"Task\",
/// \"Resource\": \"{lambda_["arn"]}\",
/// \"End\": true
/// }}
/// }}
/// }}
/// """,
/// encryption_configuration={
/// "kms_key_id": kms_key_for_sfn["arn"],
/// "type": "CUSTOMER_MANAGED_KMS_KEY",
/// "kms_data_key_reuse_period_seconds": 900,
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
/// // ...
/// var sfnStateMachine = new Aws.Sfn.StateMachine("sfn_state_machine", new()
/// {
/// Name = "my-state-machine",
/// RoleArn = iamForSfn.Arn,
/// Definition = @$"{{
/// \""Comment\"": \""A Hello World example of the Amazon States Language using an AWS Lambda Function\"",
/// \""StartAt\"": \""HelloWorld\"",
/// \""States\"": {{
/// \""HelloWorld\"": {{
/// \""Type\"": \""Task\"",
/// \""Resource\"": \""{lambda.Arn}\"",
/// \""End\"": true
/// }}
/// }}
/// }}
/// ",
/// EncryptionConfiguration = new Aws.Sfn.Inputs.StateMachineEncryptionConfigurationArgs
/// {
/// KmsKeyId = kmsKeyForSfn.Arn,
/// Type = "CUSTOMER_MANAGED_KMS_KEY",
/// KmsDataKeyReusePeriodSeconds = 900,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sfn"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // ...
/// _, err := sfn.NewStateMachine(ctx, "sfn_state_machine", &sfn.StateMachineArgs{
/// Name:    pulumi.String("my-state-machine"),
/// RoleArn: pulumi.Any(iamForSfn.Arn),
/// Definition: pulumi.Sprintf(`{
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"%v\",
/// \"End\": true
/// }
/// }
/// }
/// `, lambda.Arn),
/// EncryptionConfiguration: &sfn.StateMachineEncryptionConfigurationArgs{
/// KmsKeyId:                     pulumi.Any(kmsKeyForSfn.Arn),
/// Type:                         pulumi.String("CUSTOMER_MANAGED_KMS_KEY"),
/// KmsDataKeyReusePeriodSeconds: pulumi.Int(900),
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
/// import com.pulumi.aws.sfn.StateMachine;
/// import com.pulumi.aws.sfn.StateMachineArgs;
/// import com.pulumi.aws.sfn.inputs.StateMachineEncryptionConfigurationArgs;
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
/// // ...
/// var sfnStateMachine = new StateMachine("sfnStateMachine", StateMachineArgs.builder()
/// .name("my-state-machine")
/// .roleArn(iamForSfn.arn())
/// .definition("""
/// {
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"%s\",
/// \"End\": true
/// }
/// }
/// }
/// ", lambda.arn()))
/// .encryptionConfiguration(StateMachineEncryptionConfigurationArgs.builder()
/// .kmsKeyId(kmsKeyForSfn.arn())
/// .type("CUSTOMER_MANAGED_KMS_KEY")
/// .kmsDataKeyReusePeriodSeconds(900)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # ...
/// sfnStateMachine:
/// type: aws:sfn:StateMachine
/// name: sfn_state_machine
/// properties:
/// name: my-state-machine
/// roleArn: ${iamForSfn.arn}
/// definition: |
/// {
/// \"Comment\": \"A Hello World example of the Amazon States Language using an AWS Lambda Function\",
/// \"StartAt\": \"HelloWorld\",
/// \"States\": {
/// \"HelloWorld\": {
/// \"Type\": \"Task\",
/// \"Resource\": \"${lambda.arn}\",
/// \"End\": true
/// }
/// }
/// }
/// encryptionConfiguration:
/// kmsKeyId: ${kmsKeyForSfn.arn}
/// type: CUSTOMER_MANAGED_KMS_KEY
/// kmsDataKeyReusePeriodSeconds: 900
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) ARN of the state machine.
///
///
/// Using `pulumi import`, import State Machines using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sfn/stateMachine:StateMachine foo arn:aws:states:eu-west-1:123456789098:stateMachine:bar
/// ```
class StateMachine extends CustomResource {
  /// The ARN of the state machine.
  late final Output<String> arn;

  /// The date the state machine was created.
  late final Output<String> creationDate;

  /// The [Amazon States Language](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html) definition of the state machine.
  late final Output<String> definition;
  late final Output<String> description;

  /// Defines what encryption configuration is used to encrypt data in the State Machine. For more information see [TBD] in the AWS Step Functions User Guide.
  late final Output<StateMachineEncryptionConfiguration>
      encryptionConfiguration;

  /// Defines what execution history events are logged and where they are logged. The <span pulumi-lang-nodejs="`loggingConfiguration`" pulumi-lang-dotnet="`LoggingConfiguration`" pulumi-lang-go="`loggingConfiguration`" pulumi-lang-python="`logging_configuration`" pulumi-lang-yaml="`loggingConfiguration`" pulumi-lang-java="`loggingConfiguration`">`logging_configuration`</span> parameter is valid when <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is set to `STANDARD` or `EXPRESS`. Defaults to `OFF`. For more information see [Logging Express Workflows](https://docs.aws.amazon.com/step-functions/latest/dg/cw-logs.html), [Log Levels](https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html) and [Logging Configuration](https://docs.aws.amazon.com/step-functions/latest/apireference/API_CreateStateMachine.html) in the AWS Step Functions User Guide.
  late final Output<StateMachineLoggingConfiguration> loggingConfiguration;

  /// The name of the state machine. The name should only contain <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>-<span pulumi-lang-nodejs="`9`" pulumi-lang-dotnet="`9`" pulumi-lang-go="`9`" pulumi-lang-python="`9`" pulumi-lang-yaml="`9`" pulumi-lang-java="`9`">`9`</span>, `A`-`Z`, <span pulumi-lang-nodejs="`a`" pulumi-lang-dotnet="`A`" pulumi-lang-go="`a`" pulumi-lang-python="`a`" pulumi-lang-yaml="`a`" pulumi-lang-java="`a`">`a`</span>-<span pulumi-lang-nodejs="`z`" pulumi-lang-dotnet="`Z`" pulumi-lang-go="`z`" pulumi-lang-python="`z`" pulumi-lang-yaml="`z`" pulumi-lang-java="`z`">`z`</span>, `-` and `_`. If omitted, the provider will assign a random, unique name.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// Set to true to publish a version of the state machine during creation. Default: false.
  late final Output<bool?> publish;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<String> revisionId;

  /// The Amazon Resource Name (ARN) of the IAM role to use for this state machine.
  late final Output<String> roleArn;

  /// The ARN of the state machine version.
  late final Output<String> stateMachineVersionArn;

  /// The current status of the state machine. Either `ACTIVE` or `DELETING`.
  late final Output<String> status;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Selects whether AWS X-Ray tracing is enabled.
  late final Output<StateMachineTracingConfiguration> tracingConfiguration;

  /// Determines whether a Standard or Express state machine is created. The default is `STANDARD`. You cannot update the type of a state machine once it has been created. Valid values: `STANDARD`, `EXPRESS`.
  late final Output<String?> type;
  late final Output<String> versionDescription;

  StateMachine(
    String name, {
    StateMachineArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sfn/stateMachine:StateMachine',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationDate = registerOutput<String>('creationDate');
    this.definition = registerOutput<String>('definition');
    this.description = registerOutput<String>('description');
    this.encryptionConfiguration =
        registerOutput<StateMachineEncryptionConfiguration>(
            'encryptionConfiguration');
    this.loggingConfiguration =
        registerOutput<StateMachineLoggingConfiguration>(
            'loggingConfiguration');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.publish = registerOutput<bool?>('publish');
    this.region = registerOutput<String>('region');
    this.revisionId = registerOutput<String>('revisionId');
    this.roleArn = registerOutput<String>('roleArn');
    this.stateMachineVersionArn =
        registerOutput<String>('stateMachineVersionArn');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tracingConfiguration =
        registerOutput<StateMachineTracingConfiguration>(
            'tracingConfiguration');
    this.type = registerOutput<String?>('type');
    this.versionDescription = registerOutput<String>('versionDescription');
  }
}
