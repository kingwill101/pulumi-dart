import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_secret_args.dart';
import 'get_regional_secret_iam_policy_args.dart';
import 'get_regional_secret_iam_policy_result.dart';
import 'get_regional_secret_result.dart';
import 'get_regional_secret_version_access_args.dart';
import 'get_regional_secret_version_access_result.dart';
import 'get_regional_secret_version_args.dart';
import 'get_regional_secret_version_result.dart';
import 'get_regional_secrets_args.dart';
import 'get_regional_secrets_result.dart';
import 'get_secret_args.dart';
import 'get_secret_iam_policy_args.dart';
import 'get_secret_iam_policy_result.dart';
import 'get_secret_result.dart';
import 'get_secret_version_access_args.dart';
import 'get_secret_version_access_result.dart';
import 'get_secret_version_args.dart';
import 'get_secret_version_result.dart';
import 'get_secrets_args.dart';
import 'get_secrets_result.dart';

/// Use this data source to get information about a Secret Manager Regional Secret
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secretDatasource = gcp.secretmanager.getRegionalSecret({
///     secretId: "secretname",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret_datasource = gcp.secretmanager.get_regional_secret(secret_id="secretname",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secretDatasource = Gcp.SecretManager.GetRegionalSecret.Invoke(new()
///     {
///         SecretId = "secretname",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.LookupRegionalSecret(ctx, &secretmanager.LookupRegionalSecretArgs{
/// 			SecretId: "secretname",
/// 			Location: "us-central1",
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
/// import com.pulumi.gcp.secretmanager.SecretmanagerFunctions;
/// import com.pulumi.gcp.secretmanager.inputs.GetRegionalSecretArgs;
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
///         final var secretDatasource = SecretmanagerFunctions.getRegionalSecret(GetRegionalSecretArgs.builder()
///             .secretId("secretname")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   secretDatasource:
///     fn::invoke:
///       function: gcp:secretmanager:getRegionalSecret
///       arguments:
///         secretId: secretname
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_secretmanager_get_regional_secret_get_regional_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionalSecretResult> getRegionalSecret(
  GetRegionalSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getRegionalSecret:getRegionalSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionalSecretResult.fromMap(result);
}

/// Retrieves the current IAM policy data for regionalsecret
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.secretmanager.getRegionalSecretIamPolicy({
///     project: regional_secret_basic.project,
///     location: regional_secret_basic.location,
///     secretId: regional_secret_basic.secretId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.secretmanager.get_regional_secret_iam_policy(project=regional_secret_basic["project"],
///     location=regional_secret_basic["location"],
///     secret_id=regional_secret_basic["secretId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.SecretManager.GetRegionalSecretIamPolicy.Invoke(new()
///     {
///         Project = regional_secret_basic.Project,
///         Location = regional_secret_basic.Location,
///         SecretId = regional_secret_basic.SecretId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.LookupRegionalSecretIamPolicy(ctx, &secretmanager.LookupRegionalSecretIamPolicyArgs{
/// 			Project:  pulumi.StringRef(regional_secret_basic.Project),
/// 			Location: pulumi.StringRef(regional_secret_basic.Location),
/// 			SecretId: regional_secret_basic.SecretId,
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
/// import com.pulumi.gcp.secretmanager.SecretmanagerFunctions;
/// import com.pulumi.gcp.secretmanager.inputs.GetRegionalSecretIamPolicyArgs;
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
///         final var policy = SecretmanagerFunctions.getRegionalSecretIamPolicy(GetRegionalSecretIamPolicyArgs.builder()
///             .project(regional_secret_basic.project())
///             .location(regional_secret_basic.location())
///             .secretId(regional_secret_basic.secretId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:secretmanager:getRegionalSecretIamPolicy
///       arguments:
///         project: ${["regional-secret-basic"].project}
///         location: ${["regional-secret-basic"].location}
///         secretId: ${["regional-secret-basic"].secretId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_secretmanager_get_regional_secret_iam_policy_get_regional_secret_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionalSecretIamPolicyResult> getRegionalSecretIamPolicy(
  GetRegionalSecretIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getRegionalSecretIamPolicy:getRegionalSecretIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionalSecretIamPolicyResult.fromMap(result);
}

/// subcategory: "Secret Manager"
/// description: |-
/// Get a Secret Manager regional secret's version.
/// ---
///
/// Get the value and metadata from a Secret Manager regional secret version. For more information see the [official documentation](https://cloud.google.com/secret-manager/docs/regional-secrets-overview) and [API](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.locations.secrets.versions). If you don't need the metadata (i.e., if you want to use a more limited role to access the regional secret version only), see also the gcp.secretmanager.getRegionalSecretVersionAccess datasource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = gcp.secretmanager.getRegionalSecretVersion({
///     secret: "my-secret",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.secretmanager.get_regional_secret_version(secret="my-secret",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = Gcp.SecretManager.GetRegionalSecretVersion.Invoke(new()
///     {
///         Secret = "my-secret",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.LookupRegionalSecretVersion(ctx, &secretmanager.LookupRegionalSecretVersionArgs{
/// 			Secret:   "my-secret",
/// 			Location: pulumi.StringRef("us-central1"),
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
/// import com.pulumi.gcp.secretmanager.SecretmanagerFunctions;
/// import com.pulumi.gcp.secretmanager.inputs.GetRegionalSecretVersionArgs;
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
///         final var basic = SecretmanagerFunctions.getRegionalSecretVersion(GetRegionalSecretVersionArgs.builder()
///             .secret("my-secret")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   basic:
///     fn::invoke:
///       function: gcp:secretmanager:getRegionalSecretVersion
///       arguments:
///         secret: my-secret
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_secretmanager_get_regional_secret_version_get_regional_secret_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionalSecretVersionResult> getRegionalSecretVersion(
  GetRegionalSecretVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getRegionalSecretVersion:getRegionalSecretVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionalSecretVersionResult.fromMap(result);
}

/// subcategory: "Secret Manager"
/// page_title: "Google: gcp.secretmanager.getRegionalSecretVersionAccess"
/// description: |-
/// Get a payload of Secret Manager regional secret's version.
/// ---
///
/// Get the value from a Secret Manager regional secret version. This is similar to the gcp.secretmanager.RegionalSecretVersion datasource, but it only requires the [Secret Manager Secret Accessor](https://cloud.google.com/secret-manager/docs/access-control#secretmanager.secretAccessor) role. For more information see the [official documentation](https://cloud.google.com/secret-manager/docs/regional-secrets-overview) and [API](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.locations.secrets.versions/access).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const latest = gcp.secretmanager.getRegionalSecretVersionAccess({
///     secret: "my-secret",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// latest = gcp.secretmanager.get_regional_secret_version_access(secret="my-secret",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var latest = Gcp.SecretManager.GetRegionalSecretVersionAccess.Invoke(new()
///     {
///         Secret = "my-secret",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.GetRegionalSecretVersionAccess(ctx, &secretmanager.GetRegionalSecretVersionAccessArgs{
/// 			Secret:   "my-secret",
/// 			Location: pulumi.StringRef("us-central1"),
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
/// import com.pulumi.gcp.secretmanager.SecretmanagerFunctions;
/// import com.pulumi.gcp.secretmanager.inputs.GetRegionalSecretVersionAccessArgs;
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
///         final var latest = SecretmanagerFunctions.getRegionalSecretVersionAccess(GetRegionalSecretVersionAccessArgs.builder()
///             .secret("my-secret")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   latest:
///     fn::invoke:
///       function: gcp:secretmanager:getRegionalSecretVersionAccess
///       arguments:
///         secret: my-secret
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_secretmanager_get_regional_secret_version_access_get_regional_secret_version_access_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionalSecretVersionAccessResult> getRegionalSecretVersionAccess(
  GetRegionalSecretVersionAccessArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getRegionalSecretVersionAccess:getRegionalSecretVersionAccess',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionalSecretVersionAccessResult.fromMap(result);
}

/// subcategory: "Secret Manager"
/// description: |-
/// List the Secret Manager Regional Secrets.
/// ---
///
/// Use this data source to list the Secret Manager Regional Secrets.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secrets = gcp.secretmanager.getRegionalSecrets({
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secrets = gcp.secretmanager.get_regional_secrets(location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secrets = Gcp.SecretManager.GetRegionalSecrets.Invoke(new()
///     {
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.GetRegionalSecrets(ctx, &secretmanager.GetRegionalSecretsArgs{
/// 			Location: "us-central1",
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
/// import com.pulumi.gcp.secretmanager.SecretmanagerFunctions;
/// import com.pulumi.gcp.secretmanager.inputs.GetRegionalSecretsArgs;
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
///         final var secrets = SecretmanagerFunctions.getRegionalSecrets(GetRegionalSecretsArgs.builder()
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   secrets:
///     fn::invoke:
///       function: gcp:secretmanager:getRegionalSecrets
///       arguments:
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_secretmanager_get_regional_secrets_get_regional_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionalSecretsResult> getRegionalSecrets(
  GetRegionalSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getRegionalSecrets:getRegionalSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionalSecretsResult.fromMap(result);
}

/// Use this data source to get information about a Secret Manager Secret
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const qa = gcp.secretmanager.getSecret({
///     secretId: "foobar",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// qa = gcp.secretmanager.get_secret(secret_id="foobar")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qa = Gcp.SecretManager.GetSecret.Invoke(new()
///     {
///         SecretId = "foobar",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.LookupSecret(ctx, &secretmanager.LookupSecretArgs{
/// 			SecretId: "foobar",
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
/// import com.pulumi.gcp.secretmanager.SecretmanagerFunctions;
/// import com.pulumi.gcp.secretmanager.inputs.GetSecretArgs;
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
///         final var qa = SecretmanagerFunctions.getSecret(GetSecretArgs.builder()
///             .secretId("foobar")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   qa:
///     fn::invoke:
///       function: gcp:secretmanager:getSecret
///       arguments:
///         secretId: foobar
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_secretmanager_get_secret_get_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretResult> getSecret(
  GetSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getSecret:getSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretResult.fromMap(result);
}

/// Retrieves the current IAM policy data for secret
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.secretmanager.getSecretIamPolicy({
///     project: secret_basic.project,
///     secretId: secret_basic.secretId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.secretmanager.get_secret_iam_policy(project=secret_basic["project"],
///     secret_id=secret_basic["secretId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.SecretManager.GetSecretIamPolicy.Invoke(new()
///     {
///         Project = secret_basic.Project,
///         SecretId = secret_basic.SecretId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.LookupSecretIamPolicy(ctx, &secretmanager.LookupSecretIamPolicyArgs{
/// 			Project:  pulumi.StringRef(secret_basic.Project),
/// 			SecretId: secret_basic.SecretId,
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
/// import com.pulumi.gcp.secretmanager.SecretmanagerFunctions;
/// import com.pulumi.gcp.secretmanager.inputs.GetSecretIamPolicyArgs;
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
///         final var policy = SecretmanagerFunctions.getSecretIamPolicy(GetSecretIamPolicyArgs.builder()
///             .project(secret_basic.project())
///             .secretId(secret_basic.secretId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:secretmanager:getSecretIamPolicy
///       arguments:
///         project: ${["secret-basic"].project}
///         secretId: ${["secret-basic"].secretId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_secretmanager_get_secret_iam_policy_get_secret_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretIamPolicyResult> getSecretIamPolicy(
  GetSecretIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getSecretIamPolicy:getSecretIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretIamPolicyResult.fromMap(result);
}

/// Get the value and metadata from a Secret Manager secret version. For more information see the [official documentation](https://cloud.google.com/secret-manager/docs/) and [API](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.secrets.versions). If you don't need the metadata (i.e., if you want to use a more limited role to access the secret version only), see also the gcp.secretmanager.getSecretVersionAccess datasource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = gcp.secretmanager.getSecretVersion({
///     secret: "my-secret",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.secretmanager.get_secret_version(secret="my-secret")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = Gcp.SecretManager.GetSecretVersion.Invoke(new()
///     {
///         Secret = "my-secret",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.LookupSecretVersion(ctx, &secretmanager.LookupSecretVersionArgs{
/// 			Secret: "my-secret",
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
/// import com.pulumi.gcp.secretmanager.SecretmanagerFunctions;
/// import com.pulumi.gcp.secretmanager.inputs.GetSecretVersionArgs;
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
///         final var basic = SecretmanagerFunctions.getSecretVersion(GetSecretVersionArgs.builder()
///             .secret("my-secret")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   basic:
///     fn::invoke:
///       function: gcp:secretmanager:getSecretVersion
///       arguments:
///         secret: my-secret
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_secretmanager_get_secret_version_get_secret_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretVersionResult> getSecretVersion(
  GetSecretVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getSecretVersion:getSecretVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretVersionResult.fromMap(result);
}

/// Get the value from a Secret Manager secret version. This is similar to the gcp.secretmanager.SecretVersion datasource, but it only requires the [Secret Manager Secret Accessor](https://cloud.google.com/secret-manager/docs/access-control#secretmanager.secretAccessor) role. For more information see the [official documentation](https://cloud.google.com/secret-manager/docs/) and [API](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.secrets.versions/access).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = gcp.secretmanager.getSecretVersionAccess({
///     secret: "my-secret",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.secretmanager.get_secret_version_access(secret="my-secret")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = Gcp.SecretManager.GetSecretVersionAccess.Invoke(new()
///     {
///         Secret = "my-secret",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.GetSecretVersionAccess(ctx, &secretmanager.GetSecretVersionAccessArgs{
/// 			Secret: "my-secret",
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
/// import com.pulumi.gcp.secretmanager.SecretmanagerFunctions;
/// import com.pulumi.gcp.secretmanager.inputs.GetSecretVersionAccessArgs;
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
///         final var basic = SecretmanagerFunctions.getSecretVersionAccess(GetSecretVersionAccessArgs.builder()
///             .secret("my-secret")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   basic:
///     fn::invoke:
///       function: gcp:secretmanager:getSecretVersionAccess
///       arguments:
///         secret: my-secret
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_secretmanager_get_secret_version_access_get_secret_version_access_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretVersionAccessResult> getSecretVersionAccess(
  GetSecretVersionAccessArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getSecretVersionAccess:getSecretVersionAccess',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretVersionAccessResult.fromMap(result);
}

/// Use this data source to list the Secret Manager Secrets
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secrets = gcp.secretmanager.getSecrets({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secrets = gcp.secretmanager.get_secrets()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secrets = Gcp.SecretManager.GetSecrets.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretmanager.GetSecrets(ctx, &secretmanager.GetSecretsArgs{}, nil)
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
/// import com.pulumi.gcp.secretmanager.SecretmanagerFunctions;
/// import com.pulumi.gcp.secretmanager.inputs.GetSecretsArgs;
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
///         final var secrets = SecretmanagerFunctions.getSecrets(GetSecretsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   secrets:
///     fn::invoke:
///       function: gcp:secretmanager:getSecrets
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_secretmanager_get_secrets_get_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretsResult> getSecrets(
  GetSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getSecrets:getSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretsResult.fromMap(result);
}
