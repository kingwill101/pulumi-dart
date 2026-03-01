import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bot_association_args.dart';
import 'get_bot_association_result.dart';
import 'get_contact_flow_args.dart';
import 'get_contact_flow_module_args.dart';
import 'get_contact_flow_module_result.dart';
import 'get_contact_flow_result.dart';
import 'get_hours_of_operation_args.dart';
import 'get_hours_of_operation_result.dart';
import 'get_instance_args.dart';
import 'get_instance_result.dart';
import 'get_instance_storage_config_args.dart';
import 'get_instance_storage_config_result.dart';
import 'get_lambda_function_association_args.dart';
import 'get_lambda_function_association_result.dart';
import 'get_prompt_args.dart';
import 'get_prompt_result.dart';
import 'get_queue_args.dart';
import 'get_queue_result.dart';
import 'get_quick_connect_args.dart';
import 'get_quick_connect_result.dart';
import 'get_routing_profile_args.dart';
import 'get_routing_profile_result.dart';
import 'get_security_profile_args.dart';
import 'get_security_profile_result.dart';
import 'get_user_args.dart';
import 'get_user_hierarchy_group_args.dart';
import 'get_user_hierarchy_group_result.dart';
import 'get_user_hierarchy_structure_args.dart';
import 'get_user_hierarchy_structure_result.dart';
import 'get_user_result.dart';
import 'get_vocabulary_args.dart';
import 'get_vocabulary_result.dart';

/// Provides details about a specific Lex (V1) Bot associated with an Amazon Connect instance.
///
/// ## Example Usage
///
/// ### By name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getBotAssociation({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     lexBot: {
///         name: "Test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_bot_association(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     lex_bot={
///         "name": "Test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetBotAssociation.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         LexBot = new Aws.Connect.Inputs.GetBotAssociationLexBotInputArgs
///         {
///             Name = "Test",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupBotAssociation(ctx, &connect.LookupBotAssociationArgs{
/// 			InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			LexBot: connect.GetBotAssociationLexBot{
/// 				Name: "Test",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetBotAssociationArgs;
/// import com.pulumi.aws.connect.inputs.GetBotAssociationLexBotArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getBotAssociation(GetBotAssociationArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .lexBot(GetBotAssociationLexBotArgs.builder()
///                 .name("Test")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getBotAssociation
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         lexBot:
///           name: Test
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_connect_get_bot_association_get_bot_association_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBotAssociationResult> getBotAssociation(
  GetBotAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getBotAssociation:getBotAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBotAssociationResult.fromMap(result);
}

/// Provides details about a specific Amazon Connect Contact Flow.
///
/// ## Example Usage
///
/// By name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.connect.getContactFlow({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.get_contact_flow(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Connect.GetContactFlow.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupContactFlow(ctx, &connect.LookupContactFlowArgs{
/// 			InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			Name:       pulumi.StringRef("Test"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetContactFlowArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var test = ConnectFunctions.getContactFlow(GetContactFlowArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:connect:getContactFlow
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         name: Test
/// ```
///
///
/// By contact_flow_id
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.connect.getContactFlow({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     contactFlowId: "cccccccc-bbbb-cccc-dddd-111111111111",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.get_contact_flow(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     contact_flow_id="cccccccc-bbbb-cccc-dddd-111111111111")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Connect.GetContactFlow.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         ContactFlowId = "cccccccc-bbbb-cccc-dddd-111111111111",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupContactFlow(ctx, &connect.LookupContactFlowArgs{
/// 			InstanceId:    "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			ContactFlowId: pulumi.StringRef("cccccccc-bbbb-cccc-dddd-111111111111"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetContactFlowArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var test = ConnectFunctions.getContactFlow(GetContactFlowArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .contactFlowId("cccccccc-bbbb-cccc-dddd-111111111111")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:connect:getContactFlow
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         contactFlowId: cccccccc-bbbb-cccc-dddd-111111111111
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_connect_get_contact_flow_get_contact_flow_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContactFlowResult> getContactFlow(
  GetContactFlowArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getContactFlow:getContactFlow',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContactFlowResult.fromMap(result);
}

/// Provides details about a specific Amazon Connect Contact Flow Module.
///
/// ## Example Usage
///
/// By `name`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getContactFlowModule({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_contact_flow_module(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetContactFlowModule.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupContactFlowModule(ctx, &connect.LookupContactFlowModuleArgs{
/// 			InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			Name:       pulumi.StringRef("example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetContactFlowModuleArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getContactFlowModule(GetContactFlowModuleArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getContactFlowModule
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         name: example
/// ```
///
///
/// By `contact_flow_module_id`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getContactFlowModule({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     contactFlowModuleId: "cccccccc-bbbb-cccc-dddd-111111111111",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_contact_flow_module(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     contact_flow_module_id="cccccccc-bbbb-cccc-dddd-111111111111")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetContactFlowModule.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         ContactFlowModuleId = "cccccccc-bbbb-cccc-dddd-111111111111",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupContactFlowModule(ctx, &connect.LookupContactFlowModuleArgs{
/// 			InstanceId:          "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			ContactFlowModuleId: pulumi.StringRef("cccccccc-bbbb-cccc-dddd-111111111111"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetContactFlowModuleArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getContactFlowModule(GetContactFlowModuleArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .contactFlowModuleId("cccccccc-bbbb-cccc-dddd-111111111111")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getContactFlowModule
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         contactFlowModuleId: cccccccc-bbbb-cccc-dddd-111111111111
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_connect_get_contact_flow_module_get_contact_flow_module_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContactFlowModuleResult> getContactFlowModule(
  GetContactFlowModuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getContactFlowModule:getContactFlowModule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContactFlowModuleResult.fromMap(result);
}

/// Provides details about a specific Amazon Connect Hours of Operation.
///
/// ## Example Usage
///
/// By `name`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.connect.getHoursOfOperation({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.get_hours_of_operation(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Connect.GetHoursOfOperation.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupHoursOfOperation(ctx, &connect.LookupHoursOfOperationArgs{
/// 			InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			Name:       pulumi.StringRef("Test"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetHoursOfOperationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var test = ConnectFunctions.getHoursOfOperation(GetHoursOfOperationArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:connect:getHoursOfOperation
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         name: Test
/// ```
///
///
/// By `hours_of_operation_id`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.connect.getHoursOfOperation({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     hoursOfOperationId: "cccccccc-bbbb-cccc-dddd-111111111111",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.get_hours_of_operation(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     hours_of_operation_id="cccccccc-bbbb-cccc-dddd-111111111111")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Connect.GetHoursOfOperation.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         HoursOfOperationId = "cccccccc-bbbb-cccc-dddd-111111111111",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupHoursOfOperation(ctx, &connect.LookupHoursOfOperationArgs{
/// 			InstanceId:         "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			HoursOfOperationId: pulumi.StringRef("cccccccc-bbbb-cccc-dddd-111111111111"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetHoursOfOperationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var test = ConnectFunctions.getHoursOfOperation(GetHoursOfOperationArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .hoursOfOperationId("cccccccc-bbbb-cccc-dddd-111111111111")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:connect:getHoursOfOperation
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         hoursOfOperationId: cccccccc-bbbb-cccc-dddd-111111111111
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_connect_get_hours_of_operation_get_hours_of_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHoursOfOperationResult> getHoursOfOperation(
  GetHoursOfOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getHoursOfOperation:getHoursOfOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHoursOfOperationResult.fromMap(result);
}

/// Provides details about a specific Amazon Connect Instance.
///
/// ## Example Usage
///
/// By instance_alias
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = aws.connect.getInstance({
///     instanceAlias: "foo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.connect.get_instance(instance_alias="foo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Aws.Connect.GetInstance.Invoke(new()
///     {
///         InstanceAlias = "foo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupInstance(ctx, &connect.LookupInstanceArgs{
/// 			InstanceAlias: pulumi.StringRef("foo"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetInstanceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var foo = ConnectFunctions.getInstance(GetInstanceArgs.builder()
///             .instanceAlias("foo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: aws:connect:getInstance
///       arguments:
///         instanceAlias: foo
/// ```
///
///
/// By instance_id
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = aws.connect.getInstance({
///     instanceId: "97afc98d-101a-ba98-ab97-ae114fc115ec",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.connect.get_instance(instance_id="97afc98d-101a-ba98-ab97-ae114fc115ec")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Aws.Connect.GetInstance.Invoke(new()
///     {
///         InstanceId = "97afc98d-101a-ba98-ab97-ae114fc115ec",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupInstance(ctx, &connect.LookupInstanceArgs{
/// 			InstanceId: pulumi.StringRef("97afc98d-101a-ba98-ab97-ae114fc115ec"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetInstanceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var foo = ConnectFunctions.getInstance(GetInstanceArgs.builder()
///             .instanceId("97afc98d-101a-ba98-ab97-ae114fc115ec")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: aws:connect:getInstance
///       arguments:
///         instanceId: 97afc98d-101a-ba98-ab97-ae114fc115ec
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_connect_get_instance_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getInstance:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

/// Provides details about a specific Amazon Connect Instance Storage Config.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getInstanceStorageConfig({
///     associationId: "1234567891234567890122345678912345678901223456789123456789012234",
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     resourceType: "CONTACT_TRACE_RECORDS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_instance_storage_config(association_id="1234567891234567890122345678912345678901223456789123456789012234",
///     instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     resource_type="CONTACT_TRACE_RECORDS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetInstanceStorageConfig.Invoke(new()
///     {
///         AssociationId = "1234567891234567890122345678912345678901223456789123456789012234",
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         ResourceType = "CONTACT_TRACE_RECORDS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupInstanceStorageConfig(ctx, &connect.LookupInstanceStorageConfigArgs{
/// 			AssociationId: "1234567891234567890122345678912345678901223456789123456789012234",
/// 			InstanceId:    "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			ResourceType:  "CONTACT_TRACE_RECORDS",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetInstanceStorageConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getInstanceStorageConfig(GetInstanceStorageConfigArgs.builder()
///             .associationId("1234567891234567890122345678912345678901223456789123456789012234")
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .resourceType("CONTACT_TRACE_RECORDS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getInstanceStorageConfig
///       arguments:
///         associationId: 1234567891234567890122345678912345678901223456789123456789012234
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         resourceType: CONTACT_TRACE_RECORDS
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_connect_get_instance_storage_config_get_instance_storage_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceStorageConfigResult> getInstanceStorageConfig(
  GetInstanceStorageConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getInstanceStorageConfig:getInstanceStorageConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceStorageConfigResult.fromMap(result);
}

/// Provides details about a specific Connect Lambda Function Association.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getLambdaFunctionAssociation({
///     functionArn: "arn:aws:lambda:us-west-2:123456789123:function:abcdefg",
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_lambda_function_association(function_arn="arn:aws:lambda:us-west-2:123456789123:function:abcdefg",
///     instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetLambdaFunctionAssociation.Invoke(new()
///     {
///         FunctionArn = "arn:aws:lambda:us-west-2:123456789123:function:abcdefg",
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupLambdaFunctionAssociation(ctx, &connect.LookupLambdaFunctionAssociationArgs{
/// 			FunctionArn: "arn:aws:lambda:us-west-2:123456789123:function:abcdefg",
/// 			InstanceId:  "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetLambdaFunctionAssociationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getLambdaFunctionAssociation(GetLambdaFunctionAssociationArgs.builder()
///             .functionArn("arn:aws:lambda:us-west-2:123456789123:function:abcdefg")
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getLambdaFunctionAssociation
///       arguments:
///         functionArn: arn:aws:lambda:us-west-2:123456789123:function:abcdefg
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_connect_get_lambda_function_association_get_lambda_function_association_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLambdaFunctionAssociationResult> getLambdaFunctionAssociation(
  GetLambdaFunctionAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getLambdaFunctionAssociation:getLambdaFunctionAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLambdaFunctionAssociationResult.fromMap(result);
}

/// Provides details about a specific Amazon Connect Prompt.
///
/// ## Example Usage
///
/// By `name`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getPrompt({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Beep.wav",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_prompt(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Beep.wav")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetPrompt.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Beep.wav",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.GetPrompt(ctx, &connect.GetPromptArgs{
/// 			InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			Name:       "Beep.wav",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetPromptArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getPrompt(GetPromptArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Beep.wav")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getPrompt
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         name: Beep.wav
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_connect_get_prompt_get_prompt_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPromptResult> getPrompt(
  GetPromptArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getPrompt:getPrompt',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPromptResult.fromMap(result);
}

/// Provides details about a specific Amazon Connect Queue.
///
/// ## Example Usage
///
/// By `name`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getQueue({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_queue(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetQueue.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupQueue(ctx, &connect.LookupQueueArgs{
/// 			InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			Name:       pulumi.StringRef("Example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetQueueArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getQueue(GetQueueArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getQueue
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         name: Example
/// ```
///
///
/// By `queue_id`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getQueue({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     queueId: "cccccccc-bbbb-cccc-dddd-111111111111",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_queue(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     queue_id="cccccccc-bbbb-cccc-dddd-111111111111")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetQueue.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         QueueId = "cccccccc-bbbb-cccc-dddd-111111111111",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupQueue(ctx, &connect.LookupQueueArgs{
/// 			InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			QueueId:    pulumi.StringRef("cccccccc-bbbb-cccc-dddd-111111111111"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetQueueArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getQueue(GetQueueArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .queueId("cccccccc-bbbb-cccc-dddd-111111111111")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getQueue
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         queueId: cccccccc-bbbb-cccc-dddd-111111111111
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_connect_get_queue_get_queue_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueueResult> getQueue(
  GetQueueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getQueue:getQueue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueResult.fromMap(result);
}

/// Provides details about a specific Amazon Connect Quick Connect.
///
/// ## Example Usage
///
/// By `name`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getQuickConnect({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_quick_connect(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetQuickConnect.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupQuickConnect(ctx, &connect.LookupQuickConnectArgs{
/// 			InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			Name:       pulumi.StringRef("Example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetQuickConnectArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getQuickConnect(GetQuickConnectArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getQuickConnect
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         name: Example
/// ```
///
///
/// By `quick_connect_id`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getQuickConnect({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     quickConnectId: "cccccccc-bbbb-cccc-dddd-111111111111",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_quick_connect(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     quick_connect_id="cccccccc-bbbb-cccc-dddd-111111111111")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetQuickConnect.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         QuickConnectId = "cccccccc-bbbb-cccc-dddd-111111111111",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupQuickConnect(ctx, &connect.LookupQuickConnectArgs{
/// 			InstanceId:     "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			QuickConnectId: pulumi.StringRef("cccccccc-bbbb-cccc-dddd-111111111111"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetQuickConnectArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getQuickConnect(GetQuickConnectArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .quickConnectId("cccccccc-bbbb-cccc-dddd-111111111111")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getQuickConnect
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         quickConnectId: cccccccc-bbbb-cccc-dddd-111111111111
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_connect_get_quick_connect_get_quick_connect_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQuickConnectResult> getQuickConnect(
  GetQuickConnectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getQuickConnect:getQuickConnect',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQuickConnectResult.fromMap(result);
}

/// Provides details about a specific Amazon Connect Routing Profile.
///
/// ## Example Usage
///
/// By `name`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getRoutingProfile({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_routing_profile(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetRoutingProfile.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupRoutingProfile(ctx, &connect.LookupRoutingProfileArgs{
/// 			InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			Name:       pulumi.StringRef("Example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetRoutingProfileArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getRoutingProfile(GetRoutingProfileArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getRoutingProfile
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         name: Example
/// ```
///
///
/// By `routing_profile_id`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getRoutingProfile({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     routingProfileId: "cccccccc-bbbb-cccc-dddd-111111111111",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_routing_profile(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     routing_profile_id="cccccccc-bbbb-cccc-dddd-111111111111")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetRoutingProfile.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         RoutingProfileId = "cccccccc-bbbb-cccc-dddd-111111111111",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupRoutingProfile(ctx, &connect.LookupRoutingProfileArgs{
/// 			InstanceId:       "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			RoutingProfileId: pulumi.StringRef("cccccccc-bbbb-cccc-dddd-111111111111"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetRoutingProfileArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getRoutingProfile(GetRoutingProfileArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .routingProfileId("cccccccc-bbbb-cccc-dddd-111111111111")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getRoutingProfile
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         routingProfileId: cccccccc-bbbb-cccc-dddd-111111111111
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_connect_get_routing_profile_get_routing_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoutingProfileResult> getRoutingProfile(
  GetRoutingProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getRoutingProfile:getRoutingProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoutingProfileResult.fromMap(result);
}

/// Provides details about a specific Amazon Connect Security Profile.
///
/// ## Example Usage
///
/// By `name`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getSecurityProfile({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_security_profile(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetSecurityProfile.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupSecurityProfile(ctx, &connect.LookupSecurityProfileArgs{
/// 			InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			Name:       pulumi.StringRef("Example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetSecurityProfileArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getSecurityProfile(GetSecurityProfileArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getSecurityProfile
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         name: Example
/// ```
///
///
/// By `security_profile_id`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getSecurityProfile({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     securityProfileId: "cccccccc-bbbb-cccc-dddd-111111111111",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_security_profile(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     security_profile_id="cccccccc-bbbb-cccc-dddd-111111111111")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetSecurityProfile.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         SecurityProfileId = "cccccccc-bbbb-cccc-dddd-111111111111",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupSecurityProfile(ctx, &connect.LookupSecurityProfileArgs{
/// 			InstanceId:        "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			SecurityProfileId: pulumi.StringRef("cccccccc-bbbb-cccc-dddd-111111111111"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetSecurityProfileArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getSecurityProfile(GetSecurityProfileArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .securityProfileId("cccccccc-bbbb-cccc-dddd-111111111111")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getSecurityProfile
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         securityProfileId: cccccccc-bbbb-cccc-dddd-111111111111
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_connect_get_security_profile_get_security_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityProfileResult> getSecurityProfile(
  GetSecurityProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getSecurityProfile:getSecurityProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityProfileResult.fromMap(result);
}

/// Provides details about a specific Amazon Connect User.
///
/// ## Example Usage
///
/// By `name`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getUser({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_user(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetUser.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupUser(ctx, &connect.LookupUserArgs{
/// 			InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			Name:       pulumi.StringRef("Example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetUserArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getUser(GetUserArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getUser
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         name: Example
/// ```
///
///
/// By `user_id`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getUser({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     userId: "cccccccc-bbbb-cccc-dddd-111111111111",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_user(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     user_id="cccccccc-bbbb-cccc-dddd-111111111111")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetUser.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         UserId = "cccccccc-bbbb-cccc-dddd-111111111111",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupUser(ctx, &connect.LookupUserArgs{
/// 			InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			UserId:     pulumi.StringRef("cccccccc-bbbb-cccc-dddd-111111111111"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetUserArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getUser(GetUserArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .userId("cccccccc-bbbb-cccc-dddd-111111111111")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getUser
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         userId: cccccccc-bbbb-cccc-dddd-111111111111
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_connect_get_user_get_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getUser:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}

/// Provides details about a specific Amazon Connect User Hierarchy Group.
///
/// ## Example Usage
///
/// By `name`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getUserHierarchyGroup({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_user_hierarchy_group(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetUserHierarchyGroup.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupUserHierarchyGroup(ctx, &connect.LookupUserHierarchyGroupArgs{
/// 			InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			Name:       pulumi.StringRef("Example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetUserHierarchyGroupArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getUserHierarchyGroup(GetUserHierarchyGroupArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getUserHierarchyGroup
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         name: Example
/// ```
///
///
/// By `hierarchy_group_id`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getUserHierarchyGroup({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     hierarchyGroupId: "cccccccc-bbbb-cccc-dddd-111111111111",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_user_hierarchy_group(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     hierarchy_group_id="cccccccc-bbbb-cccc-dddd-111111111111")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetUserHierarchyGroup.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         HierarchyGroupId = "cccccccc-bbbb-cccc-dddd-111111111111",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupUserHierarchyGroup(ctx, &connect.LookupUserHierarchyGroupArgs{
/// 			InstanceId:       "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			HierarchyGroupId: pulumi.StringRef("cccccccc-bbbb-cccc-dddd-111111111111"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetUserHierarchyGroupArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getUserHierarchyGroup(GetUserHierarchyGroupArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .hierarchyGroupId("cccccccc-bbbb-cccc-dddd-111111111111")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getUserHierarchyGroup
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         hierarchyGroupId: cccccccc-bbbb-cccc-dddd-111111111111
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_connect_get_user_hierarchy_group_get_user_hierarchy_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserHierarchyGroupResult> getUserHierarchyGroup(
  GetUserHierarchyGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getUserHierarchyGroup:getUserHierarchyGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserHierarchyGroupResult.fromMap(result);
}

/// Provides details about a specific Amazon Connect User Hierarchy Structure
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.connect.getUserHierarchyStructure({
///     instanceId: testAwsConnectInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.get_user_hierarchy_structure(instance_id=test_aws_connect_instance["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Connect.GetUserHierarchyStructure.Invoke(new()
///     {
///         InstanceId = testAwsConnectInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupUserHierarchyStructure(ctx, &connect.LookupUserHierarchyStructureArgs{
/// 			InstanceId: testAwsConnectInstance.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetUserHierarchyStructureArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var test = ConnectFunctions.getUserHierarchyStructure(GetUserHierarchyStructureArgs.builder()
///             .instanceId(testAwsConnectInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:connect:getUserHierarchyStructure
///       arguments:
///         instanceId: ${testAwsConnectInstance.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_connect_get_user_hierarchy_structure_get_user_hierarchy_structure_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserHierarchyStructureResult> getUserHierarchyStructure(
  GetUserHierarchyStructureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getUserHierarchyStructure:getUserHierarchyStructure',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserHierarchyStructureResult.fromMap(result);
}

/// Provides details about a specific Amazon Connect Vocabulary.
///
/// ## Example Usage
///
/// By `name`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getVocabulary({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_vocabulary(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetVocabulary.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupVocabulary(ctx, &connect.LookupVocabularyArgs{
/// 			InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			Name:       pulumi.StringRef("Example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetVocabularyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getVocabulary(GetVocabularyArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getVocabulary
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         name: Example
/// ```
///
///
/// By `vocabulary_id`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getVocabulary({
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     vocabularyId: "cccccccc-bbbb-cccc-dddd-111111111111",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_vocabulary(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     vocabulary_id="cccccccc-bbbb-cccc-dddd-111111111111")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Connect.GetVocabulary.Invoke(new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         VocabularyId = "cccccccc-bbbb-cccc-dddd-111111111111",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.LookupVocabulary(ctx, &connect.LookupVocabularyArgs{
/// 			InstanceId:   "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// 			VocabularyId: pulumi.StringRef("cccccccc-bbbb-cccc-dddd-111111111111"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetVocabularyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = ConnectFunctions.getVocabulary(GetVocabularyArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .vocabularyId("cccccccc-bbbb-cccc-dddd-111111111111")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:connect:getVocabulary
///       arguments:
///         instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///         vocabularyId: cccccccc-bbbb-cccc-dddd-111111111111
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_connect_get_vocabulary_get_vocabulary_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVocabularyResult> getVocabulary(
  GetVocabularyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getVocabulary:getVocabulary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVocabularyResult.fromMap(result);
}
