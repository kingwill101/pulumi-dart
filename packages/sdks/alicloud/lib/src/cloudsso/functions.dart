import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_assignments_args.dart';
import 'get_access_assignments_result.dart';
import 'get_access_configurations_args.dart';
import 'get_access_configurations_result.dart';
import 'get_directories_args.dart';
import 'get_directories_result.dart';
import 'get_groups_args.dart';
import 'get_groups_result.dart';
import 'get_scim_server_credentials_args.dart';
import 'get_scim_server_credentials_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_user_provisioning_events_args.dart';
import 'get_user_provisioning_events_result.dart';
import 'get_users_args.dart';
import 'get_users_result.dart';

/// This data source provides the Cloud Sso Access Assignments of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.193.0+.
///
/// &gt; **NOTE:** Cloud SSO Only Support `cn-shanghai` And `us-west-1` Region
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cloudsso.getAccessAssignments({
///     directoryId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const cloudSsoAccessAssignmentId1 = ids.then(ids => ids.assignments?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cloudsso.get_access_assignments(directory_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("cloudSsoAccessAssignmentId1", ids.assignments[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.CloudSso.GetAccessAssignments.Invoke(new()
///     {
///         DirectoryId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cloudSsoAccessAssignmentId1"] = ids.Apply(getAccessAssignmentsResult => getAccessAssignmentsResult.Assignments[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudsso"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cloudsso.GetAccessAssignments(ctx, &cloudsso.GetAccessAssignmentsArgs{
/// 			DirectoryId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudSsoAccessAssignmentId1", ids.Assignments[0].Id)
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
/// import com.pulumi.alicloud.cloudsso.CloudssoFunctions;
/// import com.pulumi.alicloud.cloudsso.inputs.GetAccessAssignmentsArgs;
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
///         final var ids = CloudssoFunctions.getAccessAssignments(GetAccessAssignmentsArgs.builder()
///             .directoryId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("cloudSsoAccessAssignmentId1", ids.assignments()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cloudsso:getAccessAssignments
///       arguments:
///         directoryId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
/// outputs:
///   cloudSsoAccessAssignmentId1: ${ids.assignments[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudsso_get_access_assignments_get_access_assignments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessAssignmentsResult> getAccessAssignments(
  GetAccessAssignmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudsso/getAccessAssignments:getAccessAssignments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessAssignmentsResult.fromMap(result);
}

/// This data source provides the Cloud Sso Access Configurations of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.140.0+.
///
/// &gt; **NOTE:** Cloud SSO Only Support `cn-shanghai` And `us-west-1` Region
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cloudsso.getAccessConfigurations({
///     directoryId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const cloudSsoAccessConfigurationId1 = ids.then(ids => ids.configurations?.[0]?.id);
/// const nameRegex = alicloud.cloudsso.getAccessConfigurations({
///     directoryId: "example_value",
///     nameRegex: "^my-AccessConfiguration",
/// });
/// export const cloudSsoAccessConfigurationId2 = nameRegex.then(nameRegex => nameRegex.configurations?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cloudsso.get_access_configurations(directory_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("cloudSsoAccessConfigurationId1", ids.configurations[0].id)
/// name_regex = alicloud.cloudsso.get_access_configurations(directory_id="example_value",
///     name_regex="^my-AccessConfiguration")
/// pulumi.export("cloudSsoAccessConfigurationId2", name_regex.configurations[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.CloudSso.GetAccessConfigurations.Invoke(new()
///     {
///         DirectoryId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var nameRegex = AliCloud.CloudSso.GetAccessConfigurations.Invoke(new()
///     {
///         DirectoryId = "example_value",
///         NameRegex = "^my-AccessConfiguration",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cloudSsoAccessConfigurationId1"] = ids.Apply(getAccessConfigurationsResult => getAccessConfigurationsResult.Configurations[0]?.Id),
///         ["cloudSsoAccessConfigurationId2"] = nameRegex.Apply(getAccessConfigurationsResult => getAccessConfigurationsResult.Configurations[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudsso"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cloudsso.GetAccessConfigurations(ctx, &cloudsso.GetAccessConfigurationsArgs{
/// 			DirectoryId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudSsoAccessConfigurationId1", ids.Configurations[0].Id)
/// 		nameRegex, err := cloudsso.GetAccessConfigurations(ctx, &cloudsso.GetAccessConfigurationsArgs{
/// 			DirectoryId: "example_value",
/// 			NameRegex:   pulumi.StringRef("^my-AccessConfiguration"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudSsoAccessConfigurationId2", nameRegex.Configurations[0].Id)
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
/// import com.pulumi.alicloud.cloudsso.CloudssoFunctions;
/// import com.pulumi.alicloud.cloudsso.inputs.GetAccessConfigurationsArgs;
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
///         final var ids = CloudssoFunctions.getAccessConfigurations(GetAccessConfigurationsArgs.builder()
///             .directoryId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("cloudSsoAccessConfigurationId1", ids.configurations()[0].id());
///         final var nameRegex = CloudssoFunctions.getAccessConfigurations(GetAccessConfigurationsArgs.builder()
///             .directoryId("example_value")
///             .nameRegex("^my-AccessConfiguration")
///             .build());
///
///         ctx.export("cloudSsoAccessConfigurationId2", nameRegex.configurations()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cloudsso:getAccessConfigurations
///       arguments:
///         directoryId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:cloudsso:getAccessConfigurations
///       arguments:
///         directoryId: example_value
///         nameRegex: ^my-AccessConfiguration
/// outputs:
///   cloudSsoAccessConfigurationId1: ${ids.configurations[0].id}
///   cloudSsoAccessConfigurationId2: ${nameRegex.configurations[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudsso_get_access_configurations_get_access_configurations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessConfigurationsResult> getAccessConfigurations(
  GetAccessConfigurationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudsso/getAccessConfigurations:getAccessConfigurations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessConfigurationsResult.fromMap(result);
}

/// This data source provides the Cloud Sso Directories of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.135.0+.
///
/// &gt; **NOTE:** Cloud SSO Only Support `cn-shanghai` And `us-west-1` Region
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cloudsso.getDirectories({
///     ids: ["example_id"],
/// });
/// export const cloudSsoDirectoryId1 = ids.then(ids => ids.directories?.[0]?.id);
/// const nameRegex = alicloud.cloudsso.getDirectories({
///     nameRegex: "^my-Directory",
/// });
/// export const cloudSsoDirectoryId2 = nameRegex.then(nameRegex => nameRegex.directories?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cloudsso.get_directories(ids=["example_id"])
/// pulumi.export("cloudSsoDirectoryId1", ids.directories[0].id)
/// name_regex = alicloud.cloudsso.get_directories(name_regex="^my-Directory")
/// pulumi.export("cloudSsoDirectoryId2", name_regex.directories[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.CloudSso.GetDirectories.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.CloudSso.GetDirectories.Invoke(new()
///     {
///         NameRegex = "^my-Directory",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cloudSsoDirectoryId1"] = ids.Apply(getDirectoriesResult => getDirectoriesResult.Directories[0]?.Id),
///         ["cloudSsoDirectoryId2"] = nameRegex.Apply(getDirectoriesResult => getDirectoriesResult.Directories[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudsso"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cloudsso.GetDirectories(ctx, &cloudsso.GetDirectoriesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudSsoDirectoryId1", ids.Directories[0].Id)
/// 		nameRegex, err := cloudsso.GetDirectories(ctx, &cloudsso.GetDirectoriesArgs{
/// 			NameRegex: pulumi.StringRef("^my-Directory"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudSsoDirectoryId2", nameRegex.Directories[0].Id)
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
/// import com.pulumi.alicloud.cloudsso.CloudssoFunctions;
/// import com.pulumi.alicloud.cloudsso.inputs.GetDirectoriesArgs;
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
///         final var ids = CloudssoFunctions.getDirectories(GetDirectoriesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("cloudSsoDirectoryId1", ids.directories()[0].id());
///         final var nameRegex = CloudssoFunctions.getDirectories(GetDirectoriesArgs.builder()
///             .nameRegex("^my-Directory")
///             .build());
///
///         ctx.export("cloudSsoDirectoryId2", nameRegex.directories()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cloudsso:getDirectories
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:cloudsso:getDirectories
///       arguments:
///         nameRegex: ^my-Directory
/// outputs:
///   cloudSsoDirectoryId1: ${ids.directories[0].id}
///   cloudSsoDirectoryId2: ${nameRegex.directories[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudsso_get_directories_get_directories_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDirectoriesResult> getDirectories(
  GetDirectoriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudsso/getDirectories:getDirectories',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDirectoriesResult.fromMap(result);
}

/// This data source provides the Cloud Sso Groups of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.138.0+.
///
/// &gt; **NOTE:** Cloud SSO Only Support `cn-shanghai` And `us-west-1` Region
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cloudsso.getGroups({
///     directoryId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const cloudSsoGroupId1 = ids.then(ids => ids.groups?.[0]?.id);
/// const nameRegex = alicloud.cloudsso.getGroups({
///     directoryId: "example_value",
///     nameRegex: "^my-Group",
/// });
/// export const cloudSsoGroupId2 = nameRegex.then(nameRegex => nameRegex.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cloudsso.get_groups(directory_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("cloudSsoGroupId1", ids.groups[0].id)
/// name_regex = alicloud.cloudsso.get_groups(directory_id="example_value",
///     name_regex="^my-Group")
/// pulumi.export("cloudSsoGroupId2", name_regex.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.CloudSso.GetGroups.Invoke(new()
///     {
///         DirectoryId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var nameRegex = AliCloud.CloudSso.GetGroups.Invoke(new()
///     {
///         DirectoryId = "example_value",
///         NameRegex = "^my-Group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cloudSsoGroupId1"] = ids.Apply(getGroupsResult => getGroupsResult.Groups[0]?.Id),
///         ["cloudSsoGroupId2"] = nameRegex.Apply(getGroupsResult => getGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudsso"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cloudsso.GetGroups(ctx, &cloudsso.GetGroupsArgs{
/// 			DirectoryId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudSsoGroupId1", ids.Groups[0].Id)
/// 		nameRegex, err := cloudsso.GetGroups(ctx, &cloudsso.GetGroupsArgs{
/// 			DirectoryId: "example_value",
/// 			NameRegex:   pulumi.StringRef("^my-Group"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudSsoGroupId2", nameRegex.Groups[0].Id)
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
/// import com.pulumi.alicloud.cloudsso.CloudssoFunctions;
/// import com.pulumi.alicloud.cloudsso.inputs.GetGroupsArgs;
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
///         final var ids = CloudssoFunctions.getGroups(GetGroupsArgs.builder()
///             .directoryId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("cloudSsoGroupId1", ids.groups()[0].id());
///         final var nameRegex = CloudssoFunctions.getGroups(GetGroupsArgs.builder()
///             .directoryId("example_value")
///             .nameRegex("^my-Group")
///             .build());
///
///         ctx.export("cloudSsoGroupId2", nameRegex.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cloudsso:getGroups
///       arguments:
///         directoryId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:cloudsso:getGroups
///       arguments:
///         directoryId: example_value
///         nameRegex: ^my-Group
/// outputs:
///   cloudSsoGroupId1: ${ids.groups[0].id}
///   cloudSsoGroupId2: ${nameRegex.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudsso_get_groups_get_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupsResult> getGroups(
  GetGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudsso/getGroups:getGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupsResult.fromMap(result);
}

/// This data source provides the Cloud Sso Scim Server Credentials of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.138.0+.
///
/// &gt; **NOTE:** Cloud SSO Only Support `cn-shanghai` And `us-west-1` Region
///
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cloudsso.getScimServerCredentials({
///     directoryId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const cloudSsoScimServerCredentialId1 = ids.then(ids => ids.credentials?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cloudsso.get_scim_server_credentials(directory_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("cloudSsoScimServerCredentialId1", ids.credentials[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.CloudSso.GetScimServerCredentials.Invoke(new()
///     {
///         DirectoryId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cloudSsoScimServerCredentialId1"] = ids.Apply(getScimServerCredentialsResult => getScimServerCredentialsResult.Credentials[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudsso"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cloudsso.GetScimServerCredentials(ctx, &cloudsso.GetScimServerCredentialsArgs{
/// 			DirectoryId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudSsoScimServerCredentialId1", ids.Credentials[0].Id)
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
/// import com.pulumi.alicloud.cloudsso.CloudssoFunctions;
/// import com.pulumi.alicloud.cloudsso.inputs.GetScimServerCredentialsArgs;
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
///         final var ids = CloudssoFunctions.getScimServerCredentials(GetScimServerCredentialsArgs.builder()
///             .directoryId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("cloudSsoScimServerCredentialId1", ids.credentials()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cloudsso:getScimServerCredentials
///       arguments:
///         directoryId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
/// outputs:
///   cloudSsoScimServerCredentialId1: ${ids.credentials[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudsso_get_scim_server_credentials_get_scim_server_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScimServerCredentialsResult> getScimServerCredentials(
  GetScimServerCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudsso/getScimServerCredentials:getScimServerCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScimServerCredentialsResult.fromMap(result);
}

/// Using this data source can open Cloud Sso Service automatically.
///
/// For information about Cloud SSO and how to use it, see [What is Cloud SSO](https://www.alibabacloud.com/help/en/doc-detail/262819.html).
///
/// &gt; **NOTE:** Available in v1.148.0+.
///
/// &gt; **NOTE:** Cloud SSO Only Support `cn-shanghai` And `us-west-1` Region.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.cloudsso.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.cloudsso.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.CloudSso.GetService.Invoke(new()
///     {
///         Enable = "On",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudsso"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudsso.GetService(ctx, &cloudsso.GetServiceArgs{
/// 			Enable: "On",
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
/// import com.pulumi.alicloud.cloudsso.CloudssoFunctions;
/// import com.pulumi.alicloud.cloudsso.inputs.GetServiceArgs;
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
///         final var open = CloudssoFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:cloudsso:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudsso_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudsso/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// This data source provides Cloud Sso User Provisioning Event available to the user.[What is User Provisioning Event](https://next.api.alibabacloud.com/document/cloudsso/2021-05-15/GetUserProvisioningEvent)
///
/// &gt; **NOTE:** Available since v1.261.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const defaultQSrGmc = new alicloud.cloudsso.Directory("defaultQSrGmc", {
///     directoryGlobalAccessStatus: "Disabled",
///     passwordPolicy: {
///         minPasswordLength: 8,
///         minPasswordDifferentChars: 8,
///         maxPasswordAge: 90,
///         passwordReusePrevention: 1,
///         maxLoginAttempts: 5,
///     },
///     mfaAuthenticationSettingInfo: {
///         mfaAuthenticationAdvanceSettings: "OnlyRiskyLogin",
///         operationForRiskLogin: "EnforceVerify",
///     },
///     directoryName: "tfexample",
/// });
/// const _default = alicloud.cloudsso.getUserProvisioningEventsOutput({
///     directoryId: defaultQSrGmc.id,
/// });
/// export const alicloudCloudSsoUserProvisioningEventExampleId = _default.apply(_default => _default.events?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default_q_sr_gmc = alicloud.cloudsso.Directory("defaultQSrGmc",
///     directory_global_access_status="Disabled",
///     password_policy={
///         "min_password_length": 8,
///         "min_password_different_chars": 8,
///         "max_password_age": 90,
///         "password_reuse_prevention": 1,
///         "max_login_attempts": 5,
///     },
///     mfa_authentication_setting_info={
///         "mfa_authentication_advance_settings": "OnlyRiskyLogin",
///         "operation_for_risk_login": "EnforceVerify",
///     },
///     directory_name="tfexample")
/// default = alicloud.cloudsso.get_user_provisioning_events_output(directory_id=default_q_sr_gmc.id)
/// pulumi.export("alicloudCloudSsoUserProvisioningEventExampleId", default.events[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var defaultQSrGmc = new AliCloud.CloudSso.Directory("defaultQSrGmc", new()
///     {
///         DirectoryGlobalAccessStatus = "Disabled",
///         PasswordPolicy = new AliCloud.CloudSso.Inputs.DirectoryPasswordPolicyArgs
///         {
///             MinPasswordLength = 8,
///             MinPasswordDifferentChars = 8,
///             MaxPasswordAge = 90,
///             PasswordReusePrevention = 1,
///             MaxLoginAttempts = 5,
///         },
///         MfaAuthenticationSettingInfo = new AliCloud.CloudSso.Inputs.DirectoryMfaAuthenticationSettingInfoArgs
///         {
///             MfaAuthenticationAdvanceSettings = "OnlyRiskyLogin",
///             OperationForRiskLogin = "EnforceVerify",
///         },
///         DirectoryName = "tfexample",
///     });
///
///     var @default = AliCloud.CloudSso.GetUserProvisioningEvents.Invoke(new()
///     {
///         DirectoryId = defaultQSrGmc.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCloudSsoUserProvisioningEventExampleId"] = @default.Apply(@default => @default.Apply(getUserProvisioningEventsResult => getUserProvisioningEventsResult.Events[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudsso"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaultQSrGmc, err := cloudsso.NewDirectory(ctx, "defaultQSrGmc", &cloudsso.DirectoryArgs{
/// DirectoryGlobalAccessStatus: pulumi.String("Disabled"),
/// PasswordPolicy: &cloudsso.DirectoryPasswordPolicyArgs{
/// MinPasswordLength: pulumi.Int(8),
/// MinPasswordDifferentChars: pulumi.Int(8),
/// MaxPasswordAge: pulumi.Int(90),
/// PasswordReusePrevention: pulumi.Int(1),
/// MaxLoginAttempts: pulumi.Int(5),
/// },
/// MfaAuthenticationSettingInfo: &cloudsso.DirectoryMfaAuthenticationSettingInfoArgs{
/// MfaAuthenticationAdvanceSettings: pulumi.String("OnlyRiskyLogin"),
/// OperationForRiskLogin: pulumi.String("EnforceVerify"),
/// },
/// DirectoryName: pulumi.String("tfexample"),
/// })
/// if err != nil {
/// return err
/// }
/// _default := cloudsso.GetUserProvisioningEventsOutput(ctx, cloudsso.GetUserProvisioningEventsOutputArgs{
/// DirectoryId: defaultQSrGmc.ID(),
/// }, nil);
/// ctx.Export("alicloudCloudSsoUserProvisioningEventExampleId", _default.ApplyT(func(_default cloudsso.GetUserProvisioningEventsResult) (*string, error) {
/// return &default.Events[0].Id, nil
/// }).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.cloudsso.Directory;
/// import com.pulumi.alicloud.cloudsso.DirectoryArgs;
/// import com.pulumi.alicloud.cloudsso.inputs.DirectoryPasswordPolicyArgs;
/// import com.pulumi.alicloud.cloudsso.inputs.DirectoryMfaAuthenticationSettingInfoArgs;
/// import com.pulumi.alicloud.cloudsso.CloudssoFunctions;
/// import com.pulumi.alicloud.cloudsso.inputs.GetUserProvisioningEventsArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var defaultQSrGmc = new Directory("defaultQSrGmc", DirectoryArgs.builder()
///             .directoryGlobalAccessStatus("Disabled")
///             .passwordPolicy(DirectoryPasswordPolicyArgs.builder()
///                 .minPasswordLength(8)
///                 .minPasswordDifferentChars(8)
///                 .maxPasswordAge(90)
///                 .passwordReusePrevention(1)
///                 .maxLoginAttempts(5)
///                 .build())
///             .mfaAuthenticationSettingInfo(DirectoryMfaAuthenticationSettingInfoArgs.builder()
///                 .mfaAuthenticationAdvanceSettings("OnlyRiskyLogin")
///                 .operationForRiskLogin("EnforceVerify")
///                 .build())
///             .directoryName("tfexample")
///             .build());
///
///         final var default = CloudssoFunctions.getUserProvisioningEvents(GetUserProvisioningEventsArgs.builder()
///             .directoryId(defaultQSrGmc.id())
///             .build());
///
///         ctx.export("alicloudCloudSsoUserProvisioningEventExampleId", default_.applyValue(_default_ -> _default_.events()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultQSrGmc:
///     type: alicloud:cloudsso:Directory
///     properties:
///       directoryGlobalAccessStatus: Disabled
///       passwordPolicy:
///         minPasswordLength: '8'
///         minPasswordDifferentChars: '8'
///         maxPasswordAge: '90'
///         passwordReusePrevention: '1'
///         maxLoginAttempts: '5'
///       mfaAuthenticationSettingInfo:
///         mfaAuthenticationAdvanceSettings: OnlyRiskyLogin
///         operationForRiskLogin: EnforceVerify
///       directoryName: tfexample
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cloudsso:getUserProvisioningEvents
///       arguments:
///         directoryId: ${defaultQSrGmc.id}
/// outputs:
///   alicloudCloudSsoUserProvisioningEventExampleId: ${default.events[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudsso_get_user_provisioning_events_get_user_provisioning_events_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserProvisioningEventsResult> getUserProvisioningEvents(
  GetUserProvisioningEventsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudsso/getUserProvisioningEvents:getUserProvisioningEvents',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserProvisioningEventsResult.fromMap(result);
}

/// This data source provides the Cloud Sso Users of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.140.0+.
///
/// &gt; **NOTE:** Cloud SSO Only Support `cn-shanghai` And `us-west-1` Region
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cloudsso.getUsers({
///     directoryId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const cloudSsoUserId1 = ids.then(ids => ids.users?.[0]?.id);
/// const nameRegex = alicloud.cloudsso.getUsers({
///     directoryId: "example_value",
///     nameRegex: "^my-User",
/// });
/// export const cloudSsoUserId2 = nameRegex.then(nameRegex => nameRegex.users?.[0]?.id);
/// const provisionType = alicloud.cloudsso.getUsers({
///     directoryId: "example_value",
///     ids: ["example_value-1"],
///     provisionType: "Manual",
/// });
/// export const cloudSsoUserId3 = provisionType.then(provisionType => provisionType.users?.[0]?.id);
/// const status = alicloud.cloudsso.getUsers({
///     directoryId: "example_value",
///     ids: ["example_value-1"],
///     status: "Enabled",
/// });
/// export const cloudSsoUserId4 = status.then(status => status.users?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cloudsso.get_users(directory_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("cloudSsoUserId1", ids.users[0].id)
/// name_regex = alicloud.cloudsso.get_users(directory_id="example_value",
///     name_regex="^my-User")
/// pulumi.export("cloudSsoUserId2", name_regex.users[0].id)
/// provision_type = alicloud.cloudsso.get_users(directory_id="example_value",
///     ids=["example_value-1"],
///     provision_type="Manual")
/// pulumi.export("cloudSsoUserId3", provision_type.users[0].id)
/// status = alicloud.cloudsso.get_users(directory_id="example_value",
///     ids=["example_value-1"],
///     status="Enabled")
/// pulumi.export("cloudSsoUserId4", status.users[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.CloudSso.GetUsers.Invoke(new()
///     {
///         DirectoryId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var nameRegex = AliCloud.CloudSso.GetUsers.Invoke(new()
///     {
///         DirectoryId = "example_value",
///         NameRegex = "^my-User",
///     });
///
///     var provisionType = AliCloud.CloudSso.GetUsers.Invoke(new()
///     {
///         DirectoryId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///         },
///         ProvisionType = "Manual",
///     });
///
///     var status = AliCloud.CloudSso.GetUsers.Invoke(new()
///     {
///         DirectoryId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///         },
///         Status = "Enabled",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cloudSsoUserId1"] = ids.Apply(getUsersResult => getUsersResult.Users[0]?.Id),
///         ["cloudSsoUserId2"] = nameRegex.Apply(getUsersResult => getUsersResult.Users[0]?.Id),
///         ["cloudSsoUserId3"] = provisionType.Apply(getUsersResult => getUsersResult.Users[0]?.Id),
///         ["cloudSsoUserId4"] = status.Apply(getUsersResult => getUsersResult.Users[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudsso"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cloudsso.GetUsers(ctx, &cloudsso.GetUsersArgs{
/// 			DirectoryId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudSsoUserId1", ids.Users[0].Id)
/// 		nameRegex, err := cloudsso.GetUsers(ctx, &cloudsso.GetUsersArgs{
/// 			DirectoryId: "example_value",
/// 			NameRegex:   pulumi.StringRef("^my-User"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudSsoUserId2", nameRegex.Users[0].Id)
/// 		provisionType, err := cloudsso.GetUsers(ctx, &cloudsso.GetUsersArgs{
/// 			DirectoryId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 			},
/// 			ProvisionType: pulumi.StringRef("Manual"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudSsoUserId3", provisionType.Users[0].Id)
/// 		status, err := cloudsso.GetUsers(ctx, &cloudsso.GetUsersArgs{
/// 			DirectoryId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 			},
/// 			Status: pulumi.StringRef("Enabled"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cloudSsoUserId4", status.Users[0].Id)
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
/// import com.pulumi.alicloud.cloudsso.CloudssoFunctions;
/// import com.pulumi.alicloud.cloudsso.inputs.GetUsersArgs;
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
///         final var ids = CloudssoFunctions.getUsers(GetUsersArgs.builder()
///             .directoryId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("cloudSsoUserId1", ids.users()[0].id());
///         final var nameRegex = CloudssoFunctions.getUsers(GetUsersArgs.builder()
///             .directoryId("example_value")
///             .nameRegex("^my-User")
///             .build());
///
///         ctx.export("cloudSsoUserId2", nameRegex.users()[0].id());
///         final var provisionType = CloudssoFunctions.getUsers(GetUsersArgs.builder()
///             .directoryId("example_value")
///             .ids("example_value-1")
///             .provisionType("Manual")
///             .build());
///
///         ctx.export("cloudSsoUserId3", provisionType.users()[0].id());
///         final var status = CloudssoFunctions.getUsers(GetUsersArgs.builder()
///             .directoryId("example_value")
///             .ids("example_value-1")
///             .status("Enabled")
///             .build());
///
///         ctx.export("cloudSsoUserId4", status.users()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cloudsso:getUsers
///       arguments:
///         directoryId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:cloudsso:getUsers
///       arguments:
///         directoryId: example_value
///         nameRegex: ^my-User
///   provisionType:
///     fn::invoke:
///       function: alicloud:cloudsso:getUsers
///       arguments:
///         directoryId: example_value
///         ids:
///           - example_value-1
///         provisionType: Manual
///   status:
///     fn::invoke:
///       function: alicloud:cloudsso:getUsers
///       arguments:
///         directoryId: example_value
///         ids:
///           - example_value-1
///         status: Enabled
/// outputs:
///   cloudSsoUserId1: ${ids.users[0].id}
///   cloudSsoUserId2: ${nameRegex.users[0].id}
///   cloudSsoUserId3: ${provisionType.users[0].id}
///   cloudSsoUserId4: ${status.users[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudsso_get_users_get_users_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUsersResult> getUsers(
  GetUsersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudsso/getUsers:getUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUsersResult.fromMap(result);
}
