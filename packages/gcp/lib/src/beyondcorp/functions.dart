import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_connection_args.dart';
import 'get_app_connection_result.dart';
import 'get_app_connector_args.dart';
import 'get_app_connector_result.dart';
import 'get_app_gateway_args.dart';
import 'get_app_gateway_result.dart';
import 'get_security_gateway_application_iam_policy_args.dart';
import 'get_security_gateway_application_iam_policy_result.dart';
import 'get_security_gateway_args.dart';
import 'get_security_gateway_iam_policy_args.dart';
import 'get_security_gateway_iam_policy_result.dart';
import 'get_security_gateway_result.dart';

/// Get information about a Google BeyondCorp App Connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_beyondcorp_app_connection = gcp.beyondcorp.getAppConnection({
///     name: "my-beyondcorp-app-connection",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_beyondcorp_app_connection = gcp.beyondcorp.get_app_connection(name="my-beyondcorp-app-connection")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_beyondcorp_app_connection = Gcp.Beyondcorp.GetAppConnection.Invoke(new()
///     {
///         Name = "my-beyondcorp-app-connection",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.LookupAppConnection(ctx, &beyondcorp.LookupAppConnectionArgs{
/// 			Name: "my-beyondcorp-app-connection",
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
/// import com.pulumi.gcp.beyondcorp.BeyondcorpFunctions;
/// import com.pulumi.gcp.beyondcorp.inputs.GetAppConnectionArgs;
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
///         final var my-beyondcorp-app-connection = BeyondcorpFunctions.getAppConnection(GetAppConnectionArgs.builder()
///             .name("my-beyondcorp-app-connection")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-beyondcorp-app-connection:
///     fn::invoke:
///       function: gcp:beyondcorp:getAppConnection
///       arguments:
///         name: my-beyondcorp-app-connection
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_get_app_connection_get_app_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppConnectionResult> getAppConnection(
  GetAppConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getAppConnection:getAppConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppConnectionResult.fromMap(result);
}

/// Get information about a Google BeyondCorp App Connector.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_beyondcorp_app_connector = gcp.beyondcorp.getAppConnector({
///     name: "my-beyondcorp-app-connector",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_beyondcorp_app_connector = gcp.beyondcorp.get_app_connector(name="my-beyondcorp-app-connector")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_beyondcorp_app_connector = Gcp.Beyondcorp.GetAppConnector.Invoke(new()
///     {
///         Name = "my-beyondcorp-app-connector",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.LookupAppConnector(ctx, &beyondcorp.LookupAppConnectorArgs{
/// 			Name: "my-beyondcorp-app-connector",
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
/// import com.pulumi.gcp.beyondcorp.BeyondcorpFunctions;
/// import com.pulumi.gcp.beyondcorp.inputs.GetAppConnectorArgs;
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
///         final var my-beyondcorp-app-connector = BeyondcorpFunctions.getAppConnector(GetAppConnectorArgs.builder()
///             .name("my-beyondcorp-app-connector")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-beyondcorp-app-connector:
///     fn::invoke:
///       function: gcp:beyondcorp:getAppConnector
///       arguments:
///         name: my-beyondcorp-app-connector
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_get_app_connector_get_app_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppConnectorResult> getAppConnector(
  GetAppConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getAppConnector:getAppConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppConnectorResult.fromMap(result);
}

/// Get information about a Google BeyondCorp App Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_beyondcorp_app_gateway = gcp.beyondcorp.getAppGateway({
///     name: "my-beyondcorp-app-gateway",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_beyondcorp_app_gateway = gcp.beyondcorp.get_app_gateway(name="my-beyondcorp-app-gateway")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_beyondcorp_app_gateway = Gcp.Beyondcorp.GetAppGateway.Invoke(new()
///     {
///         Name = "my-beyondcorp-app-gateway",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.LookupAppGateway(ctx, &beyondcorp.LookupAppGatewayArgs{
/// 			Name: "my-beyondcorp-app-gateway",
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
/// import com.pulumi.gcp.beyondcorp.BeyondcorpFunctions;
/// import com.pulumi.gcp.beyondcorp.inputs.GetAppGatewayArgs;
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
///         final var my-beyondcorp-app-gateway = BeyondcorpFunctions.getAppGateway(GetAppGatewayArgs.builder()
///             .name("my-beyondcorp-app-gateway")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-beyondcorp-app-gateway:
///     fn::invoke:
///       function: gcp:beyondcorp:getAppGateway
///       arguments:
///         name: my-beyondcorp-app-gateway
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_get_app_gateway_get_app_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppGatewayResult> getAppGateway(
  GetAppGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getAppGateway:getAppGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppGatewayResult.fromMap(result);
}

/// Get information about a Google BeyondCorp Security Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_beyondcorp_security_gateway = gcp.beyondcorp.getSecurityGateway({
///     securityGatewayId: "my-beyondcorp-security-gateway",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_beyondcorp_security_gateway = gcp.beyondcorp.get_security_gateway(security_gateway_id="my-beyondcorp-security-gateway")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_beyondcorp_security_gateway = Gcp.Beyondcorp.GetSecurityGateway.Invoke(new()
///     {
///         SecurityGatewayId = "my-beyondcorp-security-gateway",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.LookupSecurityGateway(ctx, &beyondcorp.LookupSecurityGatewayArgs{
/// 			SecurityGatewayId: "my-beyondcorp-security-gateway",
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
/// import com.pulumi.gcp.beyondcorp.BeyondcorpFunctions;
/// import com.pulumi.gcp.beyondcorp.inputs.GetSecurityGatewayArgs;
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
///         final var my-beyondcorp-security-gateway = BeyondcorpFunctions.getSecurityGateway(GetSecurityGatewayArgs.builder()
///             .securityGatewayId("my-beyondcorp-security-gateway")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-beyondcorp-security-gateway:
///     fn::invoke:
///       function: gcp:beyondcorp:getSecurityGateway
///       arguments:
///         securityGatewayId: my-beyondcorp-security-gateway
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_get_security_gateway_get_security_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityGatewayResult> getSecurityGateway(
  GetSecurityGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getSecurityGateway:getSecurityGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityGatewayResult.fromMap(result);
}

/// Retrieves the current IAM policy data for securitygatewayapplication
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.beyondcorp.getSecurityGatewayApplicationIamPolicy({
///     project: example.project,
///     securityGatewayId: example.securityGatewayId,
///     applicationId: example.applicationId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.beyondcorp.get_security_gateway_application_iam_policy(project=example["project"],
///     security_gateway_id=example["securityGatewayId"],
///     application_id=example["applicationId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Beyondcorp.GetSecurityGatewayApplicationIamPolicy.Invoke(new()
///     {
///         Project = example.Project,
///         SecurityGatewayId = example.SecurityGatewayId,
///         ApplicationId = example.ApplicationId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.LookupSecurityGatewayApplicationIamPolicy(ctx, &beyondcorp.LookupSecurityGatewayApplicationIamPolicyArgs{
/// 			Project:           pulumi.StringRef(example.Project),
/// 			SecurityGatewayId: example.SecurityGatewayId,
/// 			ApplicationId:     example.ApplicationId,
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
/// import com.pulumi.gcp.beyondcorp.BeyondcorpFunctions;
/// import com.pulumi.gcp.beyondcorp.inputs.GetSecurityGatewayApplicationIamPolicyArgs;
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
///         final var policy = BeyondcorpFunctions.getSecurityGatewayApplicationIamPolicy(GetSecurityGatewayApplicationIamPolicyArgs.builder()
///             .project(example.project())
///             .securityGatewayId(example.securityGatewayId())
///             .applicationId(example.applicationId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:beyondcorp:getSecurityGatewayApplicationIamPolicy
///       arguments:
///         project: ${example.project}
///         securityGatewayId: ${example.securityGatewayId}
///         applicationId: ${example.applicationId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_get_security_gateway_application_iam_policy_get_security_gateway_application_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityGatewayApplicationIamPolicyResult>
getSecurityGatewayApplicationIamPolicy(
  GetSecurityGatewayApplicationIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getSecurityGatewayApplicationIamPolicy:getSecurityGatewayApplicationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityGatewayApplicationIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for securitygateway
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.beyondcorp.getSecurityGatewayIamPolicy({
///     project: example.project,
///     location: example.location,
///     securityGatewayId: example.securityGatewayId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.beyondcorp.get_security_gateway_iam_policy(project=example["project"],
///     location=example["location"],
///     security_gateway_id=example["securityGatewayId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Beyondcorp.GetSecurityGatewayIamPolicy.Invoke(new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         SecurityGatewayId = example.SecurityGatewayId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := beyondcorp.LookupSecurityGatewayIamPolicy(ctx, &beyondcorp.LookupSecurityGatewayIamPolicyArgs{
/// 			Project:           pulumi.StringRef(example.Project),
/// 			Location:          pulumi.StringRef(example.Location),
/// 			SecurityGatewayId: example.SecurityGatewayId,
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
/// import com.pulumi.gcp.beyondcorp.BeyondcorpFunctions;
/// import com.pulumi.gcp.beyondcorp.inputs.GetSecurityGatewayIamPolicyArgs;
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
///         final var policy = BeyondcorpFunctions.getSecurityGatewayIamPolicy(GetSecurityGatewayIamPolicyArgs.builder()
///             .project(example.project())
///             .location(example.location())
///             .securityGatewayId(example.securityGatewayId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:beyondcorp:getSecurityGatewayIamPolicy
///       arguments:
///         project: ${example.project}
///         location: ${example.location}
///         securityGatewayId: ${example.securityGatewayId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_beyondcorp_get_security_gateway_iam_policy_get_security_gateway_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityGatewayIamPolicyResult> getSecurityGatewayIamPolicy(
  GetSecurityGatewayIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getSecurityGatewayIamPolicy:getSecurityGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityGatewayIamPolicyResult.fromMap(result);
}
