import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_acl_args.dart';
import 'get_acl_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_parameter_group_args.dart';
import 'get_parameter_group_result.dart';
import 'get_snapshot_args.dart';
import 'get_snapshot_result.dart';
import 'get_subnet_group_args.dart';
import 'get_subnet_group_result.dart';
import 'get_user_args.dart';
import 'get_user_result.dart';

/// Provides information about a MemoryDB ACL.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.memorydb.getAcl({
///     name: "my-acl",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.memorydb.get_acl(name="my-acl")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.MemoryDb.GetAcl.Invoke(new()
///     {
///         Name = "my-acl",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/memorydb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := memorydb.LookupAcl(ctx, &memorydb.LookupAclArgs{
/// 			Name: "my-acl",
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
/// import com.pulumi.aws.memorydb.MemorydbFunctions;
/// import com.pulumi.aws.memorydb.inputs.GetAclArgs;
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
///         final var example = MemorydbFunctions.getAcl(GetAclArgs.builder()
///             .name("my-acl")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:memorydb:getAcl
///       arguments:
///         name: my-acl
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_memorydb_get_acl_get_acl_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAclResult> getAcl(
  GetAclArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getAcl:getAcl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAclResult.fromMap(result);
}

/// Provides information about a MemoryDB Cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.memorydb.getCluster({
///     name: "my-cluster",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.memorydb.get_cluster(name="my-cluster")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.MemoryDb.GetCluster.Invoke(new()
///     {
///         Name = "my-cluster",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/memorydb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := memorydb.LookupCluster(ctx, &memorydb.LookupClusterArgs{
/// 			Name: "my-cluster",
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
/// import com.pulumi.aws.memorydb.MemorydbFunctions;
/// import com.pulumi.aws.memorydb.inputs.GetClusterArgs;
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
///         final var example = MemorydbFunctions.getCluster(GetClusterArgs.builder()
///             .name("my-cluster")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:memorydb:getCluster
///       arguments:
///         name: my-cluster
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_memorydb_get_cluster_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

/// Provides information about a MemoryDB Parameter Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.memorydb.getParameterGroup({
///     name: "my-parameter-group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.memorydb.get_parameter_group(name="my-parameter-group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.MemoryDb.GetParameterGroup.Invoke(new()
///     {
///         Name = "my-parameter-group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/memorydb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := memorydb.LookupParameterGroup(ctx, &memorydb.LookupParameterGroupArgs{
/// 			Name: "my-parameter-group",
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
/// import com.pulumi.aws.memorydb.MemorydbFunctions;
/// import com.pulumi.aws.memorydb.inputs.GetParameterGroupArgs;
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
///         final var example = MemorydbFunctions.getParameterGroup(GetParameterGroupArgs.builder()
///             .name("my-parameter-group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:memorydb:getParameterGroup
///       arguments:
///         name: my-parameter-group
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_memorydb_get_parameter_group_get_parameter_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetParameterGroupResult> getParameterGroup(
  GetParameterGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getParameterGroup:getParameterGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParameterGroupResult.fromMap(result);
}

/// Provides information about a MemoryDB Snapshot.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.memorydb.getSnapshot({
///     name: "my-snapshot",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.memorydb.get_snapshot(name="my-snapshot")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.MemoryDb.GetSnapshot.Invoke(new()
///     {
///         Name = "my-snapshot",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/memorydb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := memorydb.LookupSnapshot(ctx, &memorydb.LookupSnapshotArgs{
/// 			Name: "my-snapshot",
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
/// import com.pulumi.aws.memorydb.MemorydbFunctions;
/// import com.pulumi.aws.memorydb.inputs.GetSnapshotArgs;
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
///         final var example = MemorydbFunctions.getSnapshot(GetSnapshotArgs.builder()
///             .name("my-snapshot")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:memorydb:getSnapshot
///       arguments:
///         name: my-snapshot
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_memorydb_get_snapshot_get_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getSnapshot:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}

/// Provides information about a MemoryDB Subnet Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.memorydb.getSubnetGroup({
///     name: "my-subnet-group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.memorydb.get_subnet_group(name="my-subnet-group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.MemoryDb.GetSubnetGroup.Invoke(new()
///     {
///         Name = "my-subnet-group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/memorydb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := memorydb.LookupSubnetGroup(ctx, &memorydb.LookupSubnetGroupArgs{
/// 			Name: "my-subnet-group",
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
/// import com.pulumi.aws.memorydb.MemorydbFunctions;
/// import com.pulumi.aws.memorydb.inputs.GetSubnetGroupArgs;
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
///         final var example = MemorydbFunctions.getSubnetGroup(GetSubnetGroupArgs.builder()
///             .name("my-subnet-group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:memorydb:getSubnetGroup
///       arguments:
///         name: my-subnet-group
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_memorydb_get_subnet_group_get_subnet_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetGroupResult> getSubnetGroup(
  GetSubnetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getSubnetGroup:getSubnetGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetGroupResult.fromMap(result);
}

/// Provides information about a MemoryDB User.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.memorydb.getUser({
///     userName: "my-user",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.memorydb.get_user(user_name="my-user")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.MemoryDb.GetUser.Invoke(new()
///     {
///         UserName = "my-user",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/memorydb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := memorydb.LookupUser(ctx, &memorydb.LookupUserArgs{
/// 			UserName: "my-user",
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
/// import com.pulumi.aws.memorydb.MemorydbFunctions;
/// import com.pulumi.aws.memorydb.inputs.GetUserArgs;
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
///         final var example = MemorydbFunctions.getUser(GetUserArgs.builder()
///             .userName("my-user")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:memorydb:getUser
///       arguments:
///         userName: my-user
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_memorydb_get_user_get_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getUser:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}
