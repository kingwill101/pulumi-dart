import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accelerator_spare_ip_attachments_args.dart';
import 'get_accelerator_spare_ip_attachments_result.dart';
import 'get_accelerators_args.dart';
import 'get_accelerators_result.dart';
import 'get_acls_args.dart';
import 'get_acls_result.dart';
import 'get_additional_certificates_args.dart';
import 'get_additional_certificates_result.dart';
import 'get_bandwidth_packages_args.dart';
import 'get_bandwidth_packages_result.dart';
import 'get_basic_accelerate_ip_endpoint_relations_args.dart';
import 'get_basic_accelerate_ip_endpoint_relations_result.dart';
import 'get_basic_accelerate_ips_args.dart';
import 'get_basic_accelerate_ips_result.dart';
import 'get_basic_accelerators_args.dart';
import 'get_basic_accelerators_result.dart';
import 'get_basic_endpoints_args.dart';
import 'get_basic_endpoints_result.dart';
import 'get_custom_routing_endpoint_group_destinations_args.dart';
import 'get_custom_routing_endpoint_group_destinations_result.dart';
import 'get_custom_routing_endpoint_groups_args.dart';
import 'get_custom_routing_endpoint_groups_result.dart';
import 'get_custom_routing_endpoint_traffic_policies_args.dart';
import 'get_custom_routing_endpoint_traffic_policies_result.dart';
import 'get_custom_routing_endpoints_args.dart';
import 'get_custom_routing_endpoints_result.dart';
import 'get_custom_routing_port_mappings_args.dart';
import 'get_custom_routing_port_mappings_result.dart';
import 'get_domains_args.dart';
import 'get_domains_result.dart';
import 'get_endpoint_group_ip_address_cidr_blocks_args.dart';
import 'get_endpoint_group_ip_address_cidr_blocks_result.dart';
import 'get_endpoint_groups_args.dart';
import 'get_endpoint_groups_result.dart';
import 'get_forwarding_rules_args.dart';
import 'get_forwarding_rules_result.dart';
import 'get_ip_sets_args.dart';
import 'get_ip_sets_result.dart';
import 'get_listeners_args.dart';
import 'get_listeners_result.dart';

/// This data source provides the Ga Accelerator Spare Ip Attachments of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.167.0.
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
/// const ids = alicloud.ga.getAcceleratorSpareIpAttachments({
///     acceleratorId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const gaAcceleratorSpareIpAttachmentId1 = ids.then(ids => ids.attachments?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ga.get_accelerator_spare_ip_attachments(accelerator_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("gaAcceleratorSpareIpAttachmentId1", ids.attachments[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ga.GetAcceleratorSpareIpAttachments.Invoke(new()
///     {
///         AcceleratorId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gaAcceleratorSpareIpAttachmentId1"] = ids.Apply(getAcceleratorSpareIpAttachmentsResult => getAcceleratorSpareIpAttachmentsResult.Attachments[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ga.GetAcceleratorSpareIpAttachments(ctx, &ga.GetAcceleratorSpareIpAttachmentsArgs{
/// 			AcceleratorId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gaAcceleratorSpareIpAttachmentId1", ids.Attachments[0].Id)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetAcceleratorSpareIpAttachmentsArgs;
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
///         final var ids = GaFunctions.getAcceleratorSpareIpAttachments(GetAcceleratorSpareIpAttachmentsArgs.builder()
///             .acceleratorId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("gaAcceleratorSpareIpAttachmentId1", ids.attachments()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ga:getAcceleratorSpareIpAttachments
///       arguments:
///         acceleratorId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
/// outputs:
///   gaAcceleratorSpareIpAttachmentId1: ${ids.attachments[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_accelerator_spare_ip_attachments_get_accelerator_spare_ip_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAcceleratorSpareIpAttachmentsResult> getAcceleratorSpareIpAttachments(
  GetAcceleratorSpareIpAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getAcceleratorSpareIpAttachments:getAcceleratorSpareIpAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAcceleratorSpareIpAttachmentsResult.fromMap(result);
}

/// This data source provides the Global Accelerator (GA) Accelerators of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.111.0.
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
/// const example = alicloud.ga.getAccelerators({
///     nameRegex: "tf",
/// });
/// export const firstGaAcceleratorId = example.then(example => example.accelerators?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ga.get_accelerators(name_regex="tf")
/// pulumi.export("firstGaAcceleratorId", example.accelerators[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ga.GetAccelerators.Invoke(new()
///     {
///         NameRegex = "tf",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstGaAcceleratorId"] = example.Apply(getAcceleratorsResult => getAcceleratorsResult.Accelerators[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ga.GetAccelerators(ctx, &ga.GetAcceleratorsArgs{
/// 			NameRegex: pulumi.StringRef("tf"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstGaAcceleratorId", example.Accelerators[0].Id)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetAcceleratorsArgs;
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
///         final var example = GaFunctions.getAccelerators(GetAcceleratorsArgs.builder()
///             .nameRegex("tf")
///             .build());
///
///         ctx.export("firstGaAcceleratorId", example.accelerators()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ga:getAccelerators
///       arguments:
///         nameRegex: tf
/// outputs:
///   firstGaAcceleratorId: ${example.accelerators[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_accelerators_get_accelerators_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAcceleratorsResult> getAccelerators(
  GetAcceleratorsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getAccelerators:getAccelerators',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAcceleratorsResult.fromMap(result);
}

/// This data source provides the Ga Acls of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.150.0.
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
/// const ids = alicloud.ga.getAcls({});
/// export const gaAclId1 = ids.then(ids => ids.acls?.[0]?.id);
/// const nameRegex = alicloud.ga.getAcls({
///     nameRegex: "^my-Acl",
/// });
/// export const gaAclId2 = nameRegex.then(nameRegex => nameRegex.acls?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ga.get_acls()
/// pulumi.export("gaAclId1", ids.acls[0].id)
/// name_regex = alicloud.ga.get_acls(name_regex="^my-Acl")
/// pulumi.export("gaAclId2", name_regex.acls[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ga.GetAcls.Invoke();
///
///     var nameRegex = AliCloud.Ga.GetAcls.Invoke(new()
///     {
///         NameRegex = "^my-Acl",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gaAclId1"] = ids.Apply(getAclsResult => getAclsResult.Acls[0]?.Id),
///         ["gaAclId2"] = nameRegex.Apply(getAclsResult => getAclsResult.Acls[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ga.GetAcls(ctx, &ga.GetAclsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gaAclId1", ids.Acls[0].Id)
/// 		nameRegex, err := ga.GetAcls(ctx, &ga.GetAclsArgs{
/// 			NameRegex: pulumi.StringRef("^my-Acl"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gaAclId2", nameRegex.Acls[0].Id)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetAclsArgs;
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
///         final var ids = GaFunctions.getAcls(GetAclsArgs.builder()
///             .build());
///
///         ctx.export("gaAclId1", ids.acls()[0].id());
///         final var nameRegex = GaFunctions.getAcls(GetAclsArgs.builder()
///             .nameRegex("^my-Acl")
///             .build());
///
///         ctx.export("gaAclId2", nameRegex.acls()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ga:getAcls
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:ga:getAcls
///       arguments:
///         nameRegex: ^my-Acl
/// outputs:
///   gaAclId1: ${ids.acls[0].id}
///   gaAclId2: ${nameRegex.acls[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_acls_get_acls_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAclsResult> getAcls(
  GetAclsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getAcls:getAcls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAclsResult.fromMap(result);
}

/// This data source provides the Ga Additional Certificates of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.150.0.
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
/// const ids = alicloud.ga.getAdditionalCertificates({
///     acceleratorId: "example_value",
///     listenerId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const gaAdditionalCertificateId1 = ids.then(ids => ids.certificates?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ga.get_additional_certificates(accelerator_id="example_value",
///     listener_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("gaAdditionalCertificateId1", ids.certificates[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ga.GetAdditionalCertificates.Invoke(new()
///     {
///         AcceleratorId = "example_value",
///         ListenerId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gaAdditionalCertificateId1"] = ids.Apply(getAdditionalCertificatesResult => getAdditionalCertificatesResult.Certificates[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ga.GetAdditionalCertificates(ctx, &ga.GetAdditionalCertificatesArgs{
/// 			AcceleratorId: "example_value",
/// 			ListenerId:    "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gaAdditionalCertificateId1", ids.Certificates[0].Id)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetAdditionalCertificatesArgs;
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
///         final var ids = GaFunctions.getAdditionalCertificates(GetAdditionalCertificatesArgs.builder()
///             .acceleratorId("example_value")
///             .listenerId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("gaAdditionalCertificateId1", ids.certificates()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ga:getAdditionalCertificates
///       arguments:
///         acceleratorId: example_value
///         listenerId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
/// outputs:
///   gaAdditionalCertificateId1: ${ids.certificates[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_additional_certificates_get_additional_certificates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAdditionalCertificatesResult> getAdditionalCertificates(
  GetAdditionalCertificatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getAdditionalCertificates:getAdditionalCertificates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAdditionalCertificatesResult.fromMap(result);
}

/// This data source provides the Global Accelerator (GA) Bandwidth Packages of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.112.0.
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
/// const example = alicloud.ga.getBandwidthPackages({
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstGaBandwidthPackageId = example.then(example => example.packages?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ga.get_bandwidth_packages(ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstGaBandwidthPackageId", example.packages[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ga.GetBandwidthPackages.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstGaBandwidthPackageId"] = example.Apply(getBandwidthPackagesResult => getBandwidthPackagesResult.Packages[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ga.GetBandwidthPackages(ctx, &ga.GetBandwidthPackagesArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstGaBandwidthPackageId", example.Packages[0].Id)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetBandwidthPackagesArgs;
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
///         final var example = GaFunctions.getBandwidthPackages(GetBandwidthPackagesArgs.builder()
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstGaBandwidthPackageId", example.packages()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ga:getBandwidthPackages
///       arguments:
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstGaBandwidthPackageId: ${example.packages[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_bandwidth_packages_get_bandwidth_packages_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBandwidthPackagesResult> getBandwidthPackages(
  GetBandwidthPackagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getBandwidthPackages:getBandwidthPackages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBandwidthPackagesResult.fromMap(result);
}

/// This data source provides the Global Accelerator (GA) Basic Accelerate Ip Endpoint Relations of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.194.0.
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
/// const ids = alicloud.ga.getBasicAccelerateIpEndpointRelations({
///     ids: ["example_id"],
///     acceleratorId: "example_id",
/// });
/// export const gaBasicAccelerateIpEndpointRelationsId1 = ids.then(ids => ids.relations?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ga.get_basic_accelerate_ip_endpoint_relations(ids=["example_id"],
///     accelerator_id="example_id")
/// pulumi.export("gaBasicAccelerateIpEndpointRelationsId1", ids.relations[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ga.GetBasicAccelerateIpEndpointRelations.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         AcceleratorId = "example_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gaBasicAccelerateIpEndpointRelationsId1"] = ids.Apply(getBasicAccelerateIpEndpointRelationsResult => getBasicAccelerateIpEndpointRelationsResult.Relations[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ga.GetBasicAccelerateIpEndpointRelations(ctx, &ga.GetBasicAccelerateIpEndpointRelationsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			AcceleratorId: "example_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gaBasicAccelerateIpEndpointRelationsId1", ids.Relations[0].Id)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetBasicAccelerateIpEndpointRelationsArgs;
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
///         final var ids = GaFunctions.getBasicAccelerateIpEndpointRelations(GetBasicAccelerateIpEndpointRelationsArgs.builder()
///             .ids("example_id")
///             .acceleratorId("example_id")
///             .build());
///
///         ctx.export("gaBasicAccelerateIpEndpointRelationsId1", ids.relations()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ga:getBasicAccelerateIpEndpointRelations
///       arguments:
///         ids:
///           - example_id
///         acceleratorId: example_id
/// outputs:
///   gaBasicAccelerateIpEndpointRelationsId1: ${ids.relations[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_basic_accelerate_ip_endpoint_relations_get_basic_accelerate_ip_endpoint_relations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBasicAccelerateIpEndpointRelationsResult>
getBasicAccelerateIpEndpointRelations(
  GetBasicAccelerateIpEndpointRelationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getBasicAccelerateIpEndpointRelations:getBasicAccelerateIpEndpointRelations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBasicAccelerateIpEndpointRelationsResult.fromMap(result);
}

/// This data source provides the Global Accelerator (GA) Basic Accelerate IPs of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.194.0.
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
/// const ids = alicloud.ga.getBasicAccelerateIps({
///     ids: ["example_id"],
///     ipSetId: "example_ip_set_id",
/// });
/// export const gaBasicAccelerateIpId1 = ids.then(ids => ids.ips?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ga.get_basic_accelerate_ips(ids=["example_id"],
///     ip_set_id="example_ip_set_id")
/// pulumi.export("gaBasicAccelerateIpId1", ids.ips[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ga.GetBasicAccelerateIps.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         IpSetId = "example_ip_set_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gaBasicAccelerateIpId1"] = ids.Apply(getBasicAccelerateIpsResult => getBasicAccelerateIpsResult.Ips[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ga.GetBasicAccelerateIps(ctx, &ga.GetBasicAccelerateIpsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			IpSetId: "example_ip_set_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gaBasicAccelerateIpId1", ids.Ips[0].Id)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetBasicAccelerateIpsArgs;
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
///         final var ids = GaFunctions.getBasicAccelerateIps(GetBasicAccelerateIpsArgs.builder()
///             .ids("example_id")
///             .ipSetId("example_ip_set_id")
///             .build());
///
///         ctx.export("gaBasicAccelerateIpId1", ids.ips()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ga:getBasicAccelerateIps
///       arguments:
///         ids:
///           - example_id
///         ipSetId: example_ip_set_id
/// outputs:
///   gaBasicAccelerateIpId1: ${ids.ips[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_basic_accelerate_ips_get_basic_accelerate_ips_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBasicAccelerateIpsResult> getBasicAccelerateIps(
  GetBasicAccelerateIpsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getBasicAccelerateIps:getBasicAccelerateIps',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBasicAccelerateIpsResult.fromMap(result);
}

/// This data source provides the Global Accelerator (GA) Basic Accelerators of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.194.0.
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
/// const _default = alicloud.ga.getBasicAccelerators({
///     status: "active",
/// });
/// export const gaBasicAcceleratorId1 = _default.then(_default => _default.accelerators?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ga.get_basic_accelerators(status="active")
/// pulumi.export("gaBasicAcceleratorId1", default.accelerators[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ga.GetBasicAccelerators.Invoke(new()
///     {
///         Status = "active",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gaBasicAcceleratorId1"] = @default.Apply(@default => @default.Apply(getBasicAcceleratorsResult => getBasicAcceleratorsResult.Accelerators[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ga.GetBasicAccelerators(ctx, &ga.GetBasicAcceleratorsArgs{
/// 			Status: pulumi.StringRef("active"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gaBasicAcceleratorId1", _default.Accelerators[0].Id)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetBasicAcceleratorsArgs;
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
///         final var default = GaFunctions.getBasicAccelerators(GetBasicAcceleratorsArgs.builder()
///             .status("active")
///             .build());
///
///         ctx.export("gaBasicAcceleratorId1", default_.accelerators()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ga:getBasicAccelerators
///       arguments:
///         status: active
/// outputs:
///   gaBasicAcceleratorId1: ${default.accelerators[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_basic_accelerators_get_basic_accelerators_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBasicAcceleratorsResult> getBasicAccelerators(
  GetBasicAcceleratorsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getBasicAccelerators:getBasicAccelerators',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBasicAcceleratorsResult.fromMap(result);
}

/// This data source provides the Global Accelerator (GA) Basic Endpoints of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.194.0.
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
/// const ids = alicloud.ga.getBasicEndpoints({
///     ids: ["example_id"],
///     endpointGroupId: "example_id",
/// });
/// export const gaBasicEndpointsId1 = ids.then(ids => ids.endpoints?.[0]?.id);
/// const nameRegex = alicloud.ga.getBasicEndpoints({
///     nameRegex: "tf-example",
///     endpointGroupId: "example_id",
/// });
/// export const gaBasicEndpointsId2 = nameRegex.then(nameRegex => nameRegex.endpoints?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ga.get_basic_endpoints(ids=["example_id"],
///     endpoint_group_id="example_id")
/// pulumi.export("gaBasicEndpointsId1", ids.endpoints[0].id)
/// name_regex = alicloud.ga.get_basic_endpoints(name_regex="tf-example",
///     endpoint_group_id="example_id")
/// pulumi.export("gaBasicEndpointsId2", name_regex.endpoints[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ga.GetBasicEndpoints.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         EndpointGroupId = "example_id",
///     });
///
///     var nameRegex = AliCloud.Ga.GetBasicEndpoints.Invoke(new()
///     {
///         NameRegex = "tf-example",
///         EndpointGroupId = "example_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gaBasicEndpointsId1"] = ids.Apply(getBasicEndpointsResult => getBasicEndpointsResult.Endpoints[0]?.Id),
///         ["gaBasicEndpointsId2"] = nameRegex.Apply(getBasicEndpointsResult => getBasicEndpointsResult.Endpoints[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ga.GetBasicEndpoints(ctx, &ga.GetBasicEndpointsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			EndpointGroupId: "example_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gaBasicEndpointsId1", ids.Endpoints[0].Id)
/// 		nameRegex, err := ga.GetBasicEndpoints(ctx, &ga.GetBasicEndpointsArgs{
/// 			NameRegex:       pulumi.StringRef("tf-example"),
/// 			EndpointGroupId: "example_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gaBasicEndpointsId2", nameRegex.Endpoints[0].Id)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetBasicEndpointsArgs;
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
///         final var ids = GaFunctions.getBasicEndpoints(GetBasicEndpointsArgs.builder()
///             .ids("example_id")
///             .endpointGroupId("example_id")
///             .build());
///
///         ctx.export("gaBasicEndpointsId1", ids.endpoints()[0].id());
///         final var nameRegex = GaFunctions.getBasicEndpoints(GetBasicEndpointsArgs.builder()
///             .nameRegex("tf-example")
///             .endpointGroupId("example_id")
///             .build());
///
///         ctx.export("gaBasicEndpointsId2", nameRegex.endpoints()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ga:getBasicEndpoints
///       arguments:
///         ids:
///           - example_id
///         endpointGroupId: example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:ga:getBasicEndpoints
///       arguments:
///         nameRegex: tf-example
///         endpointGroupId: example_id
/// outputs:
///   gaBasicEndpointsId1: ${ids.endpoints[0].id}
///   gaBasicEndpointsId2: ${nameRegex.endpoints[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_basic_endpoints_get_basic_endpoints_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBasicEndpointsResult> getBasicEndpoints(
  GetBasicEndpointsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getBasicEndpoints:getBasicEndpoints',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBasicEndpointsResult.fromMap(result);
}

/// This data source provides the Global Accelerator (GA) Custom Routing Endpoint Group Destinations of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.197.0.
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
/// const ids = alicloud.ga.getCustomRoutingEndpointGroupDestinations({
///     ids: ["example_id"],
///     acceleratorId: "your_accelerator_id",
/// });
/// export const gaCustomRoutingEndpointGroupDestinationsId1 = ids.then(ids => ids.customRoutingEndpointGroupDestinations?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ga.get_custom_routing_endpoint_group_destinations(ids=["example_id"],
///     accelerator_id="your_accelerator_id")
/// pulumi.export("gaCustomRoutingEndpointGroupDestinationsId1", ids.custom_routing_endpoint_group_destinations[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ga.GetCustomRoutingEndpointGroupDestinations.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         AcceleratorId = "your_accelerator_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gaCustomRoutingEndpointGroupDestinationsId1"] = ids.Apply(getCustomRoutingEndpointGroupDestinationsResult => getCustomRoutingEndpointGroupDestinationsResult.CustomRoutingEndpointGroupDestinations[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ga.GetCustomRoutingEndpointGroupDestinations(ctx, &ga.GetCustomRoutingEndpointGroupDestinationsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			AcceleratorId: "your_accelerator_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gaCustomRoutingEndpointGroupDestinationsId1", ids.CustomRoutingEndpointGroupDestinations[0].Id)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetCustomRoutingEndpointGroupDestinationsArgs;
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
///         final var ids = GaFunctions.getCustomRoutingEndpointGroupDestinations(GetCustomRoutingEndpointGroupDestinationsArgs.builder()
///             .ids("example_id")
///             .acceleratorId("your_accelerator_id")
///             .build());
///
///         ctx.export("gaCustomRoutingEndpointGroupDestinationsId1", ids.customRoutingEndpointGroupDestinations()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ga:getCustomRoutingEndpointGroupDestinations
///       arguments:
///         ids:
///           - example_id
///         acceleratorId: your_accelerator_id
/// outputs:
///   gaCustomRoutingEndpointGroupDestinationsId1: ${ids.customRoutingEndpointGroupDestinations[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_custom_routing_endpoint_group_destinations_get_custom_routing_endpoint_group_destinations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomRoutingEndpointGroupDestinationsResult>
getCustomRoutingEndpointGroupDestinations(
  GetCustomRoutingEndpointGroupDestinationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getCustomRoutingEndpointGroupDestinations:getCustomRoutingEndpointGroupDestinations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomRoutingEndpointGroupDestinationsResult.fromMap(result);
}

/// This data source provides the Global Accelerator (GA) Custom Routing Endpoint Groups of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.197.0.
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
/// const ids = alicloud.ga.getCustomRoutingEndpointGroups({
///     ids: ["example_id"],
///     acceleratorId: "your_accelerator_id",
/// });
/// export const gaCustomRoutingEndpointGroupsId1 = ids.then(ids => ids.groups?.[0]?.id);
/// const nameRegex = alicloud.ga.getCustomRoutingEndpointGroups({
///     nameRegex: "tf-example",
///     acceleratorId: "your_accelerator_id",
/// });
/// export const gaCustomRoutingEndpointGroupsId2 = nameRegex.then(nameRegex => nameRegex.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ga.get_custom_routing_endpoint_groups(ids=["example_id"],
///     accelerator_id="your_accelerator_id")
/// pulumi.export("gaCustomRoutingEndpointGroupsId1", ids.groups[0].id)
/// name_regex = alicloud.ga.get_custom_routing_endpoint_groups(name_regex="tf-example",
///     accelerator_id="your_accelerator_id")
/// pulumi.export("gaCustomRoutingEndpointGroupsId2", name_regex.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ga.GetCustomRoutingEndpointGroups.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         AcceleratorId = "your_accelerator_id",
///     });
///
///     var nameRegex = AliCloud.Ga.GetCustomRoutingEndpointGroups.Invoke(new()
///     {
///         NameRegex = "tf-example",
///         AcceleratorId = "your_accelerator_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gaCustomRoutingEndpointGroupsId1"] = ids.Apply(getCustomRoutingEndpointGroupsResult => getCustomRoutingEndpointGroupsResult.Groups[0]?.Id),
///         ["gaCustomRoutingEndpointGroupsId2"] = nameRegex.Apply(getCustomRoutingEndpointGroupsResult => getCustomRoutingEndpointGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ga.GetCustomRoutingEndpointGroups(ctx, &ga.GetCustomRoutingEndpointGroupsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			AcceleratorId: "your_accelerator_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gaCustomRoutingEndpointGroupsId1", ids.Groups[0].Id)
/// 		nameRegex, err := ga.GetCustomRoutingEndpointGroups(ctx, &ga.GetCustomRoutingEndpointGroupsArgs{
/// 			NameRegex:     pulumi.StringRef("tf-example"),
/// 			AcceleratorId: "your_accelerator_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gaCustomRoutingEndpointGroupsId2", nameRegex.Groups[0].Id)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetCustomRoutingEndpointGroupsArgs;
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
///         final var ids = GaFunctions.getCustomRoutingEndpointGroups(GetCustomRoutingEndpointGroupsArgs.builder()
///             .ids("example_id")
///             .acceleratorId("your_accelerator_id")
///             .build());
///
///         ctx.export("gaCustomRoutingEndpointGroupsId1", ids.groups()[0].id());
///         final var nameRegex = GaFunctions.getCustomRoutingEndpointGroups(GetCustomRoutingEndpointGroupsArgs.builder()
///             .nameRegex("tf-example")
///             .acceleratorId("your_accelerator_id")
///             .build());
///
///         ctx.export("gaCustomRoutingEndpointGroupsId2", nameRegex.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ga:getCustomRoutingEndpointGroups
///       arguments:
///         ids:
///           - example_id
///         acceleratorId: your_accelerator_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:ga:getCustomRoutingEndpointGroups
///       arguments:
///         nameRegex: tf-example
///         acceleratorId: your_accelerator_id
/// outputs:
///   gaCustomRoutingEndpointGroupsId1: ${ids.groups[0].id}
///   gaCustomRoutingEndpointGroupsId2: ${nameRegex.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_custom_routing_endpoint_groups_get_custom_routing_endpoint_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomRoutingEndpointGroupsResult> getCustomRoutingEndpointGroups(
  GetCustomRoutingEndpointGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getCustomRoutingEndpointGroups:getCustomRoutingEndpointGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomRoutingEndpointGroupsResult.fromMap(result);
}

/// This data source provides the Global Accelerator (GA) Custom Routing Endpoint Traffic Policies of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.197.0.
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
/// const ids = alicloud.ga.getCustomRoutingEndpointTrafficPolicies({
///     ids: ["example_id"],
///     acceleratorId: "your_accelerator_id",
/// });
/// export const gaCustomRoutingEndpointTrafficPoliciesId1 = ids.then(ids => ids.customRoutingEndpointTrafficPolicies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ga.get_custom_routing_endpoint_traffic_policies(ids=["example_id"],
///     accelerator_id="your_accelerator_id")
/// pulumi.export("gaCustomRoutingEndpointTrafficPoliciesId1", ids.custom_routing_endpoint_traffic_policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ga.GetCustomRoutingEndpointTrafficPolicies.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         AcceleratorId = "your_accelerator_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gaCustomRoutingEndpointTrafficPoliciesId1"] = ids.Apply(getCustomRoutingEndpointTrafficPoliciesResult => getCustomRoutingEndpointTrafficPoliciesResult.CustomRoutingEndpointTrafficPolicies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ga.GetCustomRoutingEndpointTrafficPolicies(ctx, &ga.GetCustomRoutingEndpointTrafficPoliciesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			AcceleratorId: "your_accelerator_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gaCustomRoutingEndpointTrafficPoliciesId1", ids.CustomRoutingEndpointTrafficPolicies[0].Id)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetCustomRoutingEndpointTrafficPoliciesArgs;
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
///         final var ids = GaFunctions.getCustomRoutingEndpointTrafficPolicies(GetCustomRoutingEndpointTrafficPoliciesArgs.builder()
///             .ids("example_id")
///             .acceleratorId("your_accelerator_id")
///             .build());
///
///         ctx.export("gaCustomRoutingEndpointTrafficPoliciesId1", ids.customRoutingEndpointTrafficPolicies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ga:getCustomRoutingEndpointTrafficPolicies
///       arguments:
///         ids:
///           - example_id
///         acceleratorId: your_accelerator_id
/// outputs:
///   gaCustomRoutingEndpointTrafficPoliciesId1: ${ids.customRoutingEndpointTrafficPolicies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_custom_routing_endpoint_traffic_policies_get_custom_routing_endpoint_traffic_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomRoutingEndpointTrafficPoliciesResult>
getCustomRoutingEndpointTrafficPolicies(
  GetCustomRoutingEndpointTrafficPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getCustomRoutingEndpointTrafficPolicies:getCustomRoutingEndpointTrafficPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomRoutingEndpointTrafficPoliciesResult.fromMap(result);
}

/// This data source provides the Global Accelerator (GA) Custom Routing Endpoints of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.197.0.
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
/// const ids = alicloud.ga.getCustomRoutingEndpoints({
///     ids: ["example_id"],
///     acceleratorId: "your_accelerator_id",
/// });
/// export const gaCustomRoutingEndpointsId1 = ids.then(ids => ids.customRoutingEndpoints?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ga.get_custom_routing_endpoints(ids=["example_id"],
///     accelerator_id="your_accelerator_id")
/// pulumi.export("gaCustomRoutingEndpointsId1", ids.custom_routing_endpoints[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ga.GetCustomRoutingEndpoints.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         AcceleratorId = "your_accelerator_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gaCustomRoutingEndpointsId1"] = ids.Apply(getCustomRoutingEndpointsResult => getCustomRoutingEndpointsResult.CustomRoutingEndpoints[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ga.GetCustomRoutingEndpoints(ctx, &ga.GetCustomRoutingEndpointsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			AcceleratorId: "your_accelerator_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gaCustomRoutingEndpointsId1", ids.CustomRoutingEndpoints[0].Id)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetCustomRoutingEndpointsArgs;
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
///         final var ids = GaFunctions.getCustomRoutingEndpoints(GetCustomRoutingEndpointsArgs.builder()
///             .ids("example_id")
///             .acceleratorId("your_accelerator_id")
///             .build());
///
///         ctx.export("gaCustomRoutingEndpointsId1", ids.customRoutingEndpoints()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ga:getCustomRoutingEndpoints
///       arguments:
///         ids:
///           - example_id
///         acceleratorId: your_accelerator_id
/// outputs:
///   gaCustomRoutingEndpointsId1: ${ids.customRoutingEndpoints[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_custom_routing_endpoints_get_custom_routing_endpoints_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomRoutingEndpointsResult> getCustomRoutingEndpoints(
  GetCustomRoutingEndpointsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getCustomRoutingEndpoints:getCustomRoutingEndpoints',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomRoutingEndpointsResult.fromMap(result);
}

/// This data source provides the Global Accelerator (GA) Custom Routing Port Mappings of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.197.0.
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
/// const _default = alicloud.ga.getCustomRoutingPortMappings({
///     acceleratorId: "your_accelerator_id",
/// });
/// export const gaCustomRoutingPortMappingsAcceleratorId1 = _default.then(_default => _default.customRoutingPortMappings?.[0]?.acceleratorId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ga.get_custom_routing_port_mappings(accelerator_id="your_accelerator_id")
/// pulumi.export("gaCustomRoutingPortMappingsAcceleratorId1", default.custom_routing_port_mappings[0].accelerator_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ga.GetCustomRoutingPortMappings.Invoke(new()
///     {
///         AcceleratorId = "your_accelerator_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gaCustomRoutingPortMappingsAcceleratorId1"] = @default.Apply(@default => @default.Apply(getCustomRoutingPortMappingsResult => getCustomRoutingPortMappingsResult.CustomRoutingPortMappings[0]?.AcceleratorId)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ga.GetCustomRoutingPortMappings(ctx, &ga.GetCustomRoutingPortMappingsArgs{
/// 			AcceleratorId: "your_accelerator_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gaCustomRoutingPortMappingsAcceleratorId1", _default.CustomRoutingPortMappings[0].AcceleratorId)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetCustomRoutingPortMappingsArgs;
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
///         final var default = GaFunctions.getCustomRoutingPortMappings(GetCustomRoutingPortMappingsArgs.builder()
///             .acceleratorId("your_accelerator_id")
///             .build());
///
///         ctx.export("gaCustomRoutingPortMappingsAcceleratorId1", default_.customRoutingPortMappings()[0].acceleratorId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ga:getCustomRoutingPortMappings
///       arguments:
///         acceleratorId: your_accelerator_id
/// outputs:
///   gaCustomRoutingPortMappingsAcceleratorId1: ${default.customRoutingPortMappings[0].acceleratorId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_custom_routing_port_mappings_get_custom_routing_port_mappings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomRoutingPortMappingsResult> getCustomRoutingPortMappings(
  GetCustomRoutingPortMappingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getCustomRoutingPortMappings:getCustomRoutingPortMappings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomRoutingPortMappingsResult.fromMap(result);
}

/// This data source provides Ga Domain available to the user.[What is Domain](https://www.alibabacloud.com/help/en/global-accelerator/latest/createdomain)
///
/// &gt; **NOTE:** Available since v1.197.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.ga.getAccelerators({
///     status: "active",
/// });
/// const defaultAccelerator: alicloud.ga.Accelerator[] = [];
/// _default.then(_default => _default.accelerators).length.apply(length => {
///     for (const range = {value: 0}; range.value < (length > 0 ? 0 : 1); range.value++) {
///         defaultAccelerator.push(new alicloud.ga.Accelerator(`default-${range.value}`, {
///             duration: 1,
///             autoUseCoupon: true,
///             spec: "1",
///         }));
///     }
/// });
/// const acceleratorId = pulumi.all([_default.then(_default => _default.accelerators).length, _default, defaultAccelerator[0].id]).apply(([length, _default, id]) => length > 0 ? _default.accelerators?.[0]?.id : id);
/// const defaultGetDomains = alicloud.ga.getDomains({
///     acceleratorId: acceleratorIdLocals,
///     domain: "your_domain",
/// });
/// export const alicloudGaDomainExampleId = defaultGetDomains.then(defaultGetDomains => defaultGetDomains.domains?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ga.get_accelerators(status="active")
/// default_accelerator = []
/// def create_default(range_body):
///     for range in [{"value": i} for i in range(0, range_body)]:
///         default_accelerator.append(alicloud.ga.Accelerator(f"default-{range['value']}",
///             duration=1,
///             auto_use_coupon=True,
///             spec="1"))
///
/// len(default.accelerators).apply(lambda resolved_outputs: create_default(0 if resolved_outputs['length'] > 0 else 1))
/// accelerator_id = pulumi.Output.all(
///     length=len(default.accelerators),
///     id=default_accelerator[0].id
/// ).apply(lambda resolved_outputs: default.accelerators[0].id if resolved_outputs['length'] > 0 else resolved_outputs['id'])
///
/// default_get_domains = alicloud.ga.get_domains(accelerator_id=accelerator_id_locals,
///     domain="your_domain")
/// pulumi.export("alicloudGaDomainExampleId", default_get_domains.domains[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ga.GetAccelerators.Invoke(new()
///     {
///         Status = "active",
///     });
///
///     var defaultAccelerator = new List<AliCloud.Ga.Accelerator>();
///     for (var rangeIndex = 0; rangeIndex < @default.Apply(@default => @default.Apply(getAcceleratorsResult => getAcceleratorsResult.Accelerators)).Length.Apply(length => length > 0 ? 0 : 1); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultAccelerator.Add(new AliCloud.Ga.Accelerator($"default-{range.Value}", new()
///         {
///             Duration = 1,
///             AutoUseCoupon = true,
///             Spec = "1",
///         }));
///     }
///     var acceleratorId = Output.Tuple(@default.Apply(@default => @default.Apply(getAcceleratorsResult => getAcceleratorsResult.Accelerators)).Length, @default, defaultAccelerator[0].Id).Apply(values =>
///     {
///         var length = values.Item1;
///         var @default = values.Item2;
///         var id = values.Item3;
///         return length > 0 ? @default.Apply(getAcceleratorsResult => getAcceleratorsResult.Accelerators[0]?.Id) : id;
///     });
///
///     var defaultGetDomains = AliCloud.Ga.GetDomains.Invoke(new()
///     {
///         AcceleratorId = acceleratorIdLocals,
///         Domain = "your_domain",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudGaDomainExampleId"] = defaultGetDomains.Apply(getDomainsResult => getDomainsResult.Domains[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ga.GetAccelerators(ctx, &ga.GetAcceleratorsArgs{
/// 			Status: pulumi.StringRef("active"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var tmp0 float64
/// 		if length > 0 {
/// 			tmp0 = 0
/// 		} else {
/// 			tmp0 = 1
/// 		}
/// 		var defaultAccelerator []*ga.Accelerator
/// 		for index := 0; index < float64(len(_default.Accelerators).ApplyT(func(length int) (float64, error) {
/// 			return tmp0, nil
/// 		}).(pulumi.Float64Output)); index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := ga.NewAccelerator(ctx, fmt.Sprintf("default-%v", key0), &ga.AcceleratorArgs{
/// 				Duration:      pulumi.Int(1),
/// 				AutoUseCoupon: pulumi.Bool(true),
/// 				Spec:          pulumi.String("1"),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultAccelerator = append(defaultAccelerator, __res)
/// 		}
/// 		var tmp1 *string
/// 		if length > 0 {
/// 			tmp1 = _default.Accelerators[0].Id
/// 		} else {
/// 			tmp1 = id
/// 		}
/// 		_ = pulumi.All(len(_default.Accelerators), defaultAccelerator[0].ID()).ApplyT(func(_args []interface{}) (*string, error) {
/// 			length := _args[0].(int)
/// 			id := _args[1].(string)
/// 			return &tmp1, nil
/// 		}).(pulumi.StringPtrOutput)
/// 		defaultGetDomains, err := ga.GetDomains(ctx, &ga.GetDomainsArgs{
/// 			AcceleratorId: pulumi.StringRef(acceleratorIdLocals),
/// 			Domain:        pulumi.StringRef("your_domain"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudGaDomainExampleId", defaultGetDomains.Domains[0].Id)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetAcceleratorsArgs;
/// import com.pulumi.alicloud.ga.Accelerator;
/// import com.pulumi.alicloud.ga.AcceleratorArgs;
/// import com.pulumi.alicloud.ga.inputs.GetDomainsArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var default = GaFunctions.getAccelerators(GetAcceleratorsArgs.builder()
///             .status("active")
///             .build());
///
///         for (var i = 0; i < default_.accelerators().length().applyValue(_length -> _length > 0 ? 0 : 1); i++) {
///             new Accelerator("defaultAccelerator-" + i, AcceleratorArgs.builder()
///                 .duration(1)
///                 .autoUseCoupon(true)
///                 .spec("1")
///                 .build());
///
///
/// }
///         final var acceleratorId = Output.tuple(default_.accelerators().length(), defaultAccelerator[0].id()).applyValue(values -> {
///             var length = values.t1;
///             var id = values.t2;
///             return length > 0 ? default_.accelerators()[0].id() : id;
///         });
///
///         final var defaultGetDomains = GaFunctions.getDomains(GetDomainsArgs.builder()
///             .acceleratorId(acceleratorIdLocals)
///             .domain("your_domain")
///             .build());
///
///         ctx.export("alicloudGaDomainExampleId", defaultGetDomains.domains()[0].id());
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_domains_get_domains_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainsResult> getDomains(
  GetDomainsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getDomains:getDomains',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainsResult.fromMap(result);
}

/// This data source provides the Global Accelerator (GA) Endpoint Group Ip Address Cidr Blocks of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.213.0.
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
/// const _default = alicloud.ga.getEndpointGroupIpAddressCidrBlocks({
///     endpointGroupRegion: "cn-hangzhou",
/// });
/// export const gaEndpointGroupIpAddressCidrBlocksEndpointGroupRegion = _default.then(_default => _default.endpointGroupIpAddressCidrBlocks?.[0]?.endpointGroupRegion);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ga.get_endpoint_group_ip_address_cidr_blocks(endpoint_group_region="cn-hangzhou")
/// pulumi.export("gaEndpointGroupIpAddressCidrBlocksEndpointGroupRegion", default.endpoint_group_ip_address_cidr_blocks[0].endpoint_group_region)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ga.GetEndpointGroupIpAddressCidrBlocks.Invoke(new()
///     {
///         EndpointGroupRegion = "cn-hangzhou",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gaEndpointGroupIpAddressCidrBlocksEndpointGroupRegion"] = @default.Apply(@default => @default.Apply(getEndpointGroupIpAddressCidrBlocksResult => getEndpointGroupIpAddressCidrBlocksResult.EndpointGroupIpAddressCidrBlocks[0]?.EndpointGroupRegion)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ga.GetEndpointGroupIpAddressCidrBlocks(ctx, &ga.GetEndpointGroupIpAddressCidrBlocksArgs{
/// 			EndpointGroupRegion: "cn-hangzhou",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gaEndpointGroupIpAddressCidrBlocksEndpointGroupRegion", _default.EndpointGroupIpAddressCidrBlocks[0].EndpointGroupRegion)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetEndpointGroupIpAddressCidrBlocksArgs;
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
///         final var default = GaFunctions.getEndpointGroupIpAddressCidrBlocks(GetEndpointGroupIpAddressCidrBlocksArgs.builder()
///             .endpointGroupRegion("cn-hangzhou")
///             .build());
///
///         ctx.export("gaEndpointGroupIpAddressCidrBlocksEndpointGroupRegion", default_.endpointGroupIpAddressCidrBlocks()[0].endpointGroupRegion());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ga:getEndpointGroupIpAddressCidrBlocks
///       arguments:
///         endpointGroupRegion: cn-hangzhou
/// outputs:
///   gaEndpointGroupIpAddressCidrBlocksEndpointGroupRegion: ${default.endpointGroupIpAddressCidrBlocks[0].endpointGroupRegion}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_endpoint_group_ip_address_cidr_blocks_get_endpoint_group_ip_address_cidr_blocks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointGroupIpAddressCidrBlocksResult>
getEndpointGroupIpAddressCidrBlocks(
  GetEndpointGroupIpAddressCidrBlocksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getEndpointGroupIpAddressCidrBlocks:getEndpointGroupIpAddressCidrBlocks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointGroupIpAddressCidrBlocksResult.fromMap(result);
}

/// This data source provides the Global Accelerator (GA) Endpoint Groups of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.113.0.
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
/// const config = new pulumi.Config();
/// const region = config.get("region") || "cn-hangzhou";
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.ga.getAccelerators({
///     status: "active",
/// });
/// const defaultBandwidthPackage = new alicloud.ga.BandwidthPackage("default", {
///     bandwidth: 100,
///     type: "Basic",
///     bandwidthType: "Basic",
///     paymentType: "PayAsYouGo",
///     billingType: "PayBy95",
///     ratio: 30,
///     bandwidthPackageName: name,
///     autoPay: true,
///     autoUseCoupon: true,
/// });
/// const defaultBandwidthPackageAttachment = new alicloud.ga.BandwidthPackageAttachment("default", {
///     acceleratorId: _default.then(_default => _default.ids?.[0]),
///     bandwidthPackageId: defaultBandwidthPackage.id,
/// });
/// const defaultListener = new alicloud.ga.Listener("default", {
///     acceleratorId: defaultBandwidthPackageAttachment.acceleratorId,
///     clientAffinity: "SOURCE_IP",
///     protocol: "UDP",
///     name: name,
///     portRanges: [{
///         fromPort: 60,
///         toPort: 70,
///     }],
/// });
/// const defaultEipAddress = new alicloud.ecs.EipAddress("default", {
///     bandwidth: "10",
///     internetChargeType: "PayByBandwidth",
///     addressName: name,
/// });
/// const defaultEndpointGroup = new alicloud.ga.EndpointGroup("default", {
///     acceleratorId: defaultListener.acceleratorId,
///     listenerId: defaultListener.id,
///     description: name,
///     name: name,
///     thresholdCount: 4,
///     trafficPercentage: 20,
///     endpointGroupRegion: "cn-hangzhou",
///     healthCheckIntervalSeconds: 3,
///     healthCheckPath: "/healthcheck",
///     healthCheckPort: 9999,
///     healthCheckProtocol: "http",
///     portOverrides: {
///         endpointPort: 10,
///         listenerPort: 60,
///     },
///     endpointConfigurations: [{
///         endpoint: defaultEipAddress.ipAddress,
///         type: "PublicIp",
///         weight: 20,
///     }],
/// });
/// const defaultGetEndpointGroups = alicloud.ga.getEndpointGroupsOutput({
///     acceleratorId: defaultEndpointGroup.acceleratorId,
///     ids: [defaultEndpointGroup.id],
/// });
/// export const firstGaEndpointGroupId = defaultGetEndpointGroups.apply(defaultGetEndpointGroups => defaultGetEndpointGroups.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// region = config.get("region")
/// if region is None:
///     region = "cn-hangzhou"
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.ga.get_accelerators(status="active")
/// default_bandwidth_package = alicloud.ga.BandwidthPackage("default",
///     bandwidth=100,
///     type="Basic",
///     bandwidth_type="Basic",
///     payment_type="PayAsYouGo",
///     billing_type="PayBy95",
///     ratio=30,
///     bandwidth_package_name=name,
///     auto_pay=True,
///     auto_use_coupon=True)
/// default_bandwidth_package_attachment = alicloud.ga.BandwidthPackageAttachment("default",
///     accelerator_id=default.ids[0],
///     bandwidth_package_id=default_bandwidth_package.id)
/// default_listener = alicloud.ga.Listener("default",
///     accelerator_id=default_bandwidth_package_attachment.accelerator_id,
///     client_affinity="SOURCE_IP",
///     protocol="UDP",
///     name=name,
///     port_ranges=[{
///         "from_port": 60,
///         "to_port": 70,
///     }])
/// default_eip_address = alicloud.ecs.EipAddress("default",
///     bandwidth="10",
///     internet_charge_type="PayByBandwidth",
///     address_name=name)
/// default_endpoint_group = alicloud.ga.EndpointGroup("default",
///     accelerator_id=default_listener.accelerator_id,
///     listener_id=default_listener.id,
///     description=name,
///     name=name,
///     threshold_count=4,
///     traffic_percentage=20,
///     endpoint_group_region="cn-hangzhou",
///     health_check_interval_seconds=3,
///     health_check_path="/healthcheck",
///     health_check_port=9999,
///     health_check_protocol="http",
///     port_overrides={
///         "endpoint_port": 10,
///         "listener_port": 60,
///     },
///     endpoint_configurations=[{
///         "endpoint": default_eip_address.ip_address,
///         "type": "PublicIp",
///         "weight": 20,
///     }])
/// default_get_endpoint_groups = alicloud.ga.get_endpoint_groups_output(accelerator_id=default_endpoint_group.accelerator_id,
///     ids=[default_endpoint_group.id])
/// pulumi.export("firstGaEndpointGroupId", default_get_endpoint_groups.groups[0].id)
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
///     var region = config.Get("region") ?? "cn-hangzhou";
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.Ga.GetAccelerators.Invoke(new()
///     {
///         Status = "active",
///     });
///
///     var defaultBandwidthPackage = new AliCloud.Ga.BandwidthPackage("default", new()
///     {
///         Bandwidth = 100,
///         Type = "Basic",
///         BandwidthType = "Basic",
///         PaymentType = "PayAsYouGo",
///         BillingType = "PayBy95",
///         Ratio = 30,
///         BandwidthPackageName = name,
///         AutoPay = true,
///         AutoUseCoupon = true,
///     });
///
///     var defaultBandwidthPackageAttachment = new AliCloud.Ga.BandwidthPackageAttachment("default", new()
///     {
///         AcceleratorId = @default.Apply(@default => @default.Apply(getAcceleratorsResult => getAcceleratorsResult.Ids[0])),
///         BandwidthPackageId = defaultBandwidthPackage.Id,
///     });
///
///     var defaultListener = new AliCloud.Ga.Listener("default", new()
///     {
///         AcceleratorId = defaultBandwidthPackageAttachment.AcceleratorId,
///         ClientAffinity = "SOURCE_IP",
///         Protocol = "UDP",
///         Name = name,
///         PortRanges = new[]
///         {
///             new AliCloud.Ga.Inputs.ListenerPortRangeArgs
///             {
///                 FromPort = 60,
///                 ToPort = 70,
///             },
///         },
///     });
///
///     var defaultEipAddress = new AliCloud.Ecs.EipAddress("default", new()
///     {
///         Bandwidth = "10",
///         InternetChargeType = "PayByBandwidth",
///         AddressName = name,
///     });
///
///     var defaultEndpointGroup = new AliCloud.Ga.EndpointGroup("default", new()
///     {
///         AcceleratorId = defaultListener.AcceleratorId,
///         ListenerId = defaultListener.Id,
///         Description = name,
///         Name = name,
///         ThresholdCount = 4,
///         TrafficPercentage = 20,
///         EndpointGroupRegion = "cn-hangzhou",
///         HealthCheckIntervalSeconds = 3,
///         HealthCheckPath = "/healthcheck",
///         HealthCheckPort = 9999,
///         HealthCheckProtocol = "http",
///         PortOverrides = new AliCloud.Ga.Inputs.EndpointGroupPortOverridesArgs
///         {
///             EndpointPort = 10,
///             ListenerPort = 60,
///         },
///         EndpointConfigurations = new[]
///         {
///             new AliCloud.Ga.Inputs.EndpointGroupEndpointConfigurationArgs
///             {
///                 Endpoint = defaultEipAddress.IpAddress,
///                 Type = "PublicIp",
///                 Weight = 20,
///             },
///         },
///     });
///
///     var defaultGetEndpointGroups = AliCloud.Ga.GetEndpointGroups.Invoke(new()
///     {
///         AcceleratorId = defaultEndpointGroup.AcceleratorId,
///         Ids = new[]
///         {
///             defaultEndpointGroup.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstGaEndpointGroupId"] = defaultGetEndpointGroups.Apply(getEndpointGroupsResult => getEndpointGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		region := "cn-hangzhou"
/// 		if param := cfg.Get("region"); param != "" {
/// 			region = param
/// 		}
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := ga.GetAccelerators(ctx, &ga.GetAcceleratorsArgs{
/// 			Status: pulumi.StringRef("active"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBandwidthPackage, err := ga.NewBandwidthPackage(ctx, "default", &ga.BandwidthPackageArgs{
/// 			Bandwidth:            pulumi.Int(100),
/// 			Type:                 pulumi.String("Basic"),
/// 			BandwidthType:        pulumi.String("Basic"),
/// 			PaymentType:          pulumi.String("PayAsYouGo"),
/// 			BillingType:          pulumi.String("PayBy95"),
/// 			Ratio:                pulumi.Int(30),
/// 			BandwidthPackageName: pulumi.String(name),
/// 			AutoPay:              pulumi.Bool(true),
/// 			AutoUseCoupon:        pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBandwidthPackageAttachment, err := ga.NewBandwidthPackageAttachment(ctx, "default", &ga.BandwidthPackageAttachmentArgs{
/// 			AcceleratorId:      pulumi.String(_default.Ids[0]),
/// 			BandwidthPackageId: defaultBandwidthPackage.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultListener, err := ga.NewListener(ctx, "default", &ga.ListenerArgs{
/// 			AcceleratorId:  defaultBandwidthPackageAttachment.AcceleratorId,
/// 			ClientAffinity: pulumi.String("SOURCE_IP"),
/// 			Protocol:       pulumi.String("UDP"),
/// 			Name:           pulumi.String(name),
/// 			PortRanges: ga.ListenerPortRangeArray{
/// 				&ga.ListenerPortRangeArgs{
/// 					FromPort: pulumi.Int(60),
/// 					ToPort:   pulumi.Int(70),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEipAddress, err := ecs.NewEipAddress(ctx, "default", &ecs.EipAddressArgs{
/// 			Bandwidth:          pulumi.String("10"),
/// 			InternetChargeType: pulumi.String("PayByBandwidth"),
/// 			AddressName:        pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEndpointGroup, err := ga.NewEndpointGroup(ctx, "default", &ga.EndpointGroupArgs{
/// 			AcceleratorId:              defaultListener.AcceleratorId,
/// 			ListenerId:                 defaultListener.ID(),
/// 			Description:                pulumi.String(name),
/// 			Name:                       pulumi.String(name),
/// 			ThresholdCount:             pulumi.Int(4),
/// 			TrafficPercentage:          pulumi.Int(20),
/// 			EndpointGroupRegion:        pulumi.String("cn-hangzhou"),
/// 			HealthCheckIntervalSeconds: pulumi.Int(3),
/// 			HealthCheckPath:            pulumi.String("/healthcheck"),
/// 			HealthCheckPort:            pulumi.Int(9999),
/// 			HealthCheckProtocol:        pulumi.String("http"),
/// 			PortOverrides: &ga.EndpointGroupPortOverridesArgs{
/// 				EndpointPort: pulumi.Int(10),
/// 				ListenerPort: pulumi.Int(60),
/// 			},
/// 			EndpointConfigurations: ga.EndpointGroupEndpointConfigurationArray{
/// 				&ga.EndpointGroupEndpointConfigurationArgs{
/// 					Endpoint: defaultEipAddress.IpAddress,
/// 					Type:     pulumi.String("PublicIp"),
/// 					Weight:   pulumi.Int(20),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetEndpointGroups := ga.GetEndpointGroupsOutput(ctx, ga.GetEndpointGroupsOutputArgs{
/// 			AcceleratorId: defaultEndpointGroup.AcceleratorId,
/// 			Ids: pulumi.StringArray{
/// 				defaultEndpointGroup.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("firstGaEndpointGroupId", defaultGetEndpointGroups.ApplyT(func(defaultGetEndpointGroups ga.GetEndpointGroupsResult) (*string, error) {
/// 			return &defaultGetEndpointGroups.Groups[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetAcceleratorsArgs;
/// import com.pulumi.alicloud.ga.BandwidthPackage;
/// import com.pulumi.alicloud.ga.BandwidthPackageArgs;
/// import com.pulumi.alicloud.ga.BandwidthPackageAttachment;
/// import com.pulumi.alicloud.ga.BandwidthPackageAttachmentArgs;
/// import com.pulumi.alicloud.ga.Listener;
/// import com.pulumi.alicloud.ga.ListenerArgs;
/// import com.pulumi.alicloud.ga.inputs.ListenerPortRangeArgs;
/// import com.pulumi.alicloud.ecs.EipAddress;
/// import com.pulumi.alicloud.ecs.EipAddressArgs;
/// import com.pulumi.alicloud.ga.EndpointGroup;
/// import com.pulumi.alicloud.ga.EndpointGroupArgs;
/// import com.pulumi.alicloud.ga.inputs.EndpointGroupPortOverridesArgs;
/// import com.pulumi.alicloud.ga.inputs.EndpointGroupEndpointConfigurationArgs;
/// import com.pulumi.alicloud.ga.inputs.GetEndpointGroupsArgs;
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
///         final var region = config.get("region").orElse("cn-hangzhou");
///         final var name = config.get("name").orElse("tf-example");
///         final var default = GaFunctions.getAccelerators(GetAcceleratorsArgs.builder()
///             .status("active")
///             .build());
///
///         var defaultBandwidthPackage = new BandwidthPackage("defaultBandwidthPackage", BandwidthPackageArgs.builder()
///             .bandwidth(100)
///             .type("Basic")
///             .bandwidthType("Basic")
///             .paymentType("PayAsYouGo")
///             .billingType("PayBy95")
///             .ratio(30)
///             .bandwidthPackageName(name)
///             .autoPay(true)
///             .autoUseCoupon(true)
///             .build());
///
///         var defaultBandwidthPackageAttachment = new BandwidthPackageAttachment("defaultBandwidthPackageAttachment", BandwidthPackageAttachmentArgs.builder()
///             .acceleratorId(default_.ids()[0])
///             .bandwidthPackageId(defaultBandwidthPackage.id())
///             .build());
///
///         var defaultListener = new Listener("defaultListener", ListenerArgs.builder()
///             .acceleratorId(defaultBandwidthPackageAttachment.acceleratorId())
///             .clientAffinity("SOURCE_IP")
///             .protocol("UDP")
///             .name(name)
///             .portRanges(ListenerPortRangeArgs.builder()
///                 .fromPort(60)
///                 .toPort(70)
///                 .build())
///             .build());
///
///         var defaultEipAddress = new EipAddress("defaultEipAddress", EipAddressArgs.builder()
///             .bandwidth("10")
///             .internetChargeType("PayByBandwidth")
///             .addressName(name)
///             .build());
///
///         var defaultEndpointGroup = new EndpointGroup("defaultEndpointGroup", EndpointGroupArgs.builder()
///             .acceleratorId(defaultListener.acceleratorId())
///             .listenerId(defaultListener.id())
///             .description(name)
///             .name(name)
///             .thresholdCount(4)
///             .trafficPercentage(20)
///             .endpointGroupRegion("cn-hangzhou")
///             .healthCheckIntervalSeconds(3)
///             .healthCheckPath("/healthcheck")
///             .healthCheckPort(9999)
///             .healthCheckProtocol("http")
///             .portOverrides(EndpointGroupPortOverridesArgs.builder()
///                 .endpointPort(10)
///                 .listenerPort(60)
///                 .build())
///             .endpointConfigurations(EndpointGroupEndpointConfigurationArgs.builder()
///                 .endpoint(defaultEipAddress.ipAddress())
///                 .type("PublicIp")
///                 .weight(20)
///                 .build())
///             .build());
///
///         final var defaultGetEndpointGroups = GaFunctions.getEndpointGroups(GetEndpointGroupsArgs.builder()
///             .acceleratorId(defaultEndpointGroup.acceleratorId())
///             .ids(defaultEndpointGroup.id())
///             .build());
///
///         ctx.export("firstGaEndpointGroupId", defaultGetEndpointGroups.applyValue(_defaultGetEndpointGroups -> _defaultGetEndpointGroups.groups()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   region:
///     type: string
///     default: cn-hangzhou
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultBandwidthPackage:
///     type: alicloud:ga:BandwidthPackage
///     name: default
///     properties:
///       bandwidth: 100
///       type: Basic
///       bandwidthType: Basic
///       paymentType: PayAsYouGo
///       billingType: PayBy95
///       ratio: 30
///       bandwidthPackageName: ${name}
///       autoPay: true
///       autoUseCoupon: true
///   defaultBandwidthPackageAttachment:
///     type: alicloud:ga:BandwidthPackageAttachment
///     name: default
///     properties:
///       acceleratorId: ${default.ids[0]}
///       bandwidthPackageId: ${defaultBandwidthPackage.id}
///   defaultListener:
///     type: alicloud:ga:Listener
///     name: default
///     properties:
///       acceleratorId: ${defaultBandwidthPackageAttachment.acceleratorId}
///       clientAffinity: SOURCE_IP
///       protocol: UDP
///       name: ${name}
///       portRanges:
///         - fromPort: '60'
///           toPort: '70'
///   defaultEipAddress:
///     type: alicloud:ecs:EipAddress
///     name: default
///     properties:
///       bandwidth: '10'
///       internetChargeType: PayByBandwidth
///       addressName: ${name}
///   defaultEndpointGroup:
///     type: alicloud:ga:EndpointGroup
///     name: default
///     properties:
///       acceleratorId: ${defaultListener.acceleratorId}
///       listenerId: ${defaultListener.id}
///       description: ${name}
///       name: ${name}
///       thresholdCount: 4
///       trafficPercentage: 20
///       endpointGroupRegion: cn-hangzhou
///       healthCheckIntervalSeconds: '3'
///       healthCheckPath: /healthcheck
///       healthCheckPort: '9999'
///       healthCheckProtocol: http
///       portOverrides:
///         endpointPort: '10'
///         listenerPort: '60'
///       endpointConfigurations:
///         - endpoint: ${defaultEipAddress.ipAddress}
///           type: PublicIp
///           weight: '20'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ga:getAccelerators
///       arguments:
///         status: active
///   defaultGetEndpointGroups:
///     fn::invoke:
///       function: alicloud:ga:getEndpointGroups
///       arguments:
///         acceleratorId: ${defaultEndpointGroup.acceleratorId}
///         ids:
///           - ${defaultEndpointGroup.id}
/// outputs:
///   firstGaEndpointGroupId: ${defaultGetEndpointGroups.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_endpoint_groups_get_endpoint_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointGroupsResult> getEndpointGroups(
  GetEndpointGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getEndpointGroups:getEndpointGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointGroupsResult.fromMap(result);
}

/// This data source provides the Global Accelerator (GA) Forwarding Rules of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.120.0.
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
/// const example = alicloud.ga.getForwardingRules({
///     acceleratorId: "example_value",
///     listenerId: "example_value",
///     ids: ["example_value"],
/// });
/// export const firstGaForwardingRuleId = example.then(example => example.forwardingRules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ga.get_forwarding_rules(accelerator_id="example_value",
///     listener_id="example_value",
///     ids=["example_value"])
/// pulumi.export("firstGaForwardingRuleId", example.forwarding_rules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ga.GetForwardingRules.Invoke(new()
///     {
///         AcceleratorId = "example_value",
///         ListenerId = "example_value",
///         Ids = new[]
///         {
///             "example_value",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstGaForwardingRuleId"] = example.Apply(getForwardingRulesResult => getForwardingRulesResult.ForwardingRules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ga.GetForwardingRules(ctx, &ga.GetForwardingRulesArgs{
/// 			AcceleratorId: "example_value",
/// 			ListenerId:    "example_value",
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstGaForwardingRuleId", example.ForwardingRules[0].Id)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetForwardingRulesArgs;
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
///         final var example = GaFunctions.getForwardingRules(GetForwardingRulesArgs.builder()
///             .acceleratorId("example_value")
///             .listenerId("example_value")
///             .ids("example_value")
///             .build());
///
///         ctx.export("firstGaForwardingRuleId", example.forwardingRules()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ga:getForwardingRules
///       arguments:
///         acceleratorId: example_value
///         listenerId: example_value
///         ids:
///           - example_value
/// outputs:
///   firstGaForwardingRuleId: ${example.forwardingRules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_forwarding_rules_get_forwarding_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetForwardingRulesResult> getForwardingRules(
  GetForwardingRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getForwardingRules:getForwardingRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetForwardingRulesResult.fromMap(result);
}

/// This data source provides the Global Accelerator (GA) Ip Sets of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.113.0.
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
/// const example = alicloud.ga.getIpSets({
///     acceleratorId: "example_value",
///     ids: ["example_value"],
/// });
/// export const firstGaIpSetId = example.then(example => example.sets?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ga.get_ip_sets(accelerator_id="example_value",
///     ids=["example_value"])
/// pulumi.export("firstGaIpSetId", example.sets[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ga.GetIpSets.Invoke(new()
///     {
///         AcceleratorId = "example_value",
///         Ids = new[]
///         {
///             "example_value",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstGaIpSetId"] = example.Apply(getIpSetsResult => getIpSetsResult.Sets[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ga.GetIpSets(ctx, &ga.GetIpSetsArgs{
/// 			AcceleratorId: "example_value",
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstGaIpSetId", example.Sets[0].Id)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetIpSetsArgs;
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
///         final var example = GaFunctions.getIpSets(GetIpSetsArgs.builder()
///             .acceleratorId("example_value")
///             .ids("example_value")
///             .build());
///
///         ctx.export("firstGaIpSetId", example.sets()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ga:getIpSets
///       arguments:
///         acceleratorId: example_value
///         ids:
///           - example_value
/// outputs:
///   firstGaIpSetId: ${example.sets[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_ip_sets_get_ip_sets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpSetsResult> getIpSets(
  GetIpSetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getIpSets:getIpSets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpSetsResult.fromMap(result);
}

/// This data source provides the Global Accelerator (GA) Listeners of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.111.0.
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
/// const example = alicloud.ga.getListeners({
///     acceleratorId: "example_value",
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstGaListenerId = example.then(example => example.listeners?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ga.get_listeners(accelerator_id="example_value",
///     ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstGaListenerId", example.listeners[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ga.GetListeners.Invoke(new()
///     {
///         AcceleratorId = "example_value",
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstGaListenerId"] = example.Apply(getListenersResult => getListenersResult.Listeners[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ga.GetListeners(ctx, &ga.GetListenersArgs{
/// 			AcceleratorId: "example_value",
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstGaListenerId", example.Listeners[0].Id)
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
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetListenersArgs;
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
///         final var example = GaFunctions.getListeners(GetListenersArgs.builder()
///             .acceleratorId("example_value")
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstGaListenerId", example.listeners()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ga:getListeners
///       arguments:
///         acceleratorId: example_value
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstGaListenerId: ${example.listeners[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ga_get_listeners_get_listeners_args_doc}
/// [options] Invoke options controlling this call.
Future<GetListenersResult> getListeners(
  GetListenersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ga/getListeners:getListeners',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetListenersResult.fromMap(result);
}
