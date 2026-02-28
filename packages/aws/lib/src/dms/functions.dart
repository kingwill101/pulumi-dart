import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';
import 'get_endpoint_args.dart';
import 'get_endpoint_result.dart';
import 'get_replication_instance_args.dart';
import 'get_replication_instance_result.dart';
import 'get_replication_subnet_group_args.dart';
import 'get_replication_subnet_group_result.dart';
import 'get_replication_task_args.dart';
import 'get_replication_task_result.dart';

/// Data source for managing an AWS DMS (Database Migration) Certificate.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.dms.getCertificate({
///     certificateId: test.certificateId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dms.get_certificate(certificate_id=test["certificateId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Dms.GetCertificate.Invoke(new()
///     {
///         CertificateId = test.CertificateId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dms.LookupCertificate(ctx, &dms.LookupCertificateArgs{
/// 			CertificateId: test.CertificateId,
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
/// import com.pulumi.aws.dms.DmsFunctions;
/// import com.pulumi.aws.dms.inputs.GetCertificateArgs;
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
///         final var example = DmsFunctions.getCertificate(GetCertificateArgs.builder()
///             .certificateId(test.certificateId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:dms:getCertificate
///       arguments:
///         certificateId: ${test.certificateId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dms_get_certificate_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dms/getCertificate:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

/// Data source for managing an AWS DMS (Database Migration) Endpoint.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.dms.getEndpoint({
///     endpointId: "test_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.dms.get_endpoint(endpoint_id="test_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Dms.GetEndpoint.Invoke(new()
///     {
///         EndpointId = "test_id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dms.LookupEndpoint(ctx, &dms.LookupEndpointArgs{
/// 			EndpointId: "test_id",
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
/// import com.pulumi.aws.dms.DmsFunctions;
/// import com.pulumi.aws.dms.inputs.GetEndpointArgs;
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
///         final var test = DmsFunctions.getEndpoint(GetEndpointArgs.builder()
///             .endpointId("test_id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:dms:getEndpoint
///       arguments:
///         endpointId: test_id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dms_get_endpoint_get_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointResult> getEndpoint(
  GetEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dms/getEndpoint:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult.fromMap(result);
}

/// Data source for managing an AWS DMS (Database Migration) Replication Instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.dms.getReplicationInstance({
///     replicationInstanceId: testAwsDmsReplicationInstance.replicationInstanceId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.dms.get_replication_instance(replication_instance_id=test_aws_dms_replication_instance["replicationInstanceId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Dms.GetReplicationInstance.Invoke(new()
///     {
///         ReplicationInstanceId = testAwsDmsReplicationInstance.ReplicationInstanceId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dms.LookupReplicationInstance(ctx, &dms.LookupReplicationInstanceArgs{
/// 			ReplicationInstanceId: testAwsDmsReplicationInstance.ReplicationInstanceId,
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
/// import com.pulumi.aws.dms.DmsFunctions;
/// import com.pulumi.aws.dms.inputs.GetReplicationInstanceArgs;
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
///         final var test = DmsFunctions.getReplicationInstance(GetReplicationInstanceArgs.builder()
///             .replicationInstanceId(testAwsDmsReplicationInstance.replicationInstanceId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:dms:getReplicationInstance
///       arguments:
///         replicationInstanceId: ${testAwsDmsReplicationInstance.replicationInstanceId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dms_get_replication_instance_get_replication_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationInstanceResult> getReplicationInstance(
  GetReplicationInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dms/getReplicationInstance:getReplicationInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationInstanceResult.fromMap(result);
}

/// Data source for managing an AWS DMS (Database Migration) Replication Subnet Group.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.dms.getReplicationSubnetGroup({
///     replicationSubnetGroupId: testAwsDmsReplicationSubnetGroup.replicationSubnetGroupId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.dms.get_replication_subnet_group(replication_subnet_group_id=test_aws_dms_replication_subnet_group["replicationSubnetGroupId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Dms.GetReplicationSubnetGroup.Invoke(new()
///     {
///         ReplicationSubnetGroupId = testAwsDmsReplicationSubnetGroup.ReplicationSubnetGroupId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dms.LookupReplicationSubnetGroup(ctx, &dms.LookupReplicationSubnetGroupArgs{
/// 			ReplicationSubnetGroupId: testAwsDmsReplicationSubnetGroup.ReplicationSubnetGroupId,
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
/// import com.pulumi.aws.dms.DmsFunctions;
/// import com.pulumi.aws.dms.inputs.GetReplicationSubnetGroupArgs;
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
///         final var test = DmsFunctions.getReplicationSubnetGroup(GetReplicationSubnetGroupArgs.builder()
///             .replicationSubnetGroupId(testAwsDmsReplicationSubnetGroup.replicationSubnetGroupId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:dms:getReplicationSubnetGroup
///       arguments:
///         replicationSubnetGroupId: ${testAwsDmsReplicationSubnetGroup.replicationSubnetGroupId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dms_get_replication_subnet_group_get_replication_subnet_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationSubnetGroupResult> getReplicationSubnetGroup(
  GetReplicationSubnetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dms/getReplicationSubnetGroup:getReplicationSubnetGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationSubnetGroupResult.fromMap(result);
}

/// Data source for managing an AWS DMS (Database Migration) Replication Task.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.dms.getReplicationTask({
///     replicationTaskId: testAwsDmsReplicationTask.replicationTaskId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.dms.get_replication_task(replication_task_id=test_aws_dms_replication_task["replicationTaskId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Dms.GetReplicationTask.Invoke(new()
///     {
///         ReplicationTaskId = testAwsDmsReplicationTask.ReplicationTaskId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dms.LookupReplicationTask(ctx, &dms.LookupReplicationTaskArgs{
/// 			ReplicationTaskId: testAwsDmsReplicationTask.ReplicationTaskId,
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
/// import com.pulumi.aws.dms.DmsFunctions;
/// import com.pulumi.aws.dms.inputs.GetReplicationTaskArgs;
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
///         final var test = DmsFunctions.getReplicationTask(GetReplicationTaskArgs.builder()
///             .replicationTaskId(testAwsDmsReplicationTask.replicationTaskId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:dms:getReplicationTask
///       arguments:
///         replicationTaskId: ${testAwsDmsReplicationTask.replicationTaskId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dms_get_replication_task_get_replication_task_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationTaskResult> getReplicationTask(
  GetReplicationTaskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dms/getReplicationTask:getReplicationTask',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationTaskResult.fromMap(result);
}
