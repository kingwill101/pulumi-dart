import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificates_args.dart';
import 'get_certificates_result.dart';
import 'get_domains_args.dart';
import 'get_domains_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';

/// This data source provides the Waf Certificates of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.135.0.
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
/// const _default = alicloud.waf.getCertificates({
///     ids: ["your_certificate_id"],
///     instanceId: "your_instance_id",
///     domain: "your_domain_name",
/// });
/// export const wafCertificate = _default.then(_default => _default.certificates?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.waf.get_certificates(ids=["your_certificate_id"],
///     instance_id="your_instance_id",
///     domain="your_domain_name")
/// pulumi.export("wafCertificate", default.certificates[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Waf.GetCertificates.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "your_certificate_id",
///         },
///         InstanceId = "your_instance_id",
///         Domain = "your_domain_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["wafCertificate"] = @default.Apply(@default => @default.Apply(getCertificatesResult => getCertificatesResult.Certificates[0])),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := waf.GetCertificates(ctx, &waf.GetCertificatesArgs{
/// 			Ids: []string{
/// 				"your_certificate_id",
/// 			},
/// 			InstanceId: "your_instance_id",
/// 			Domain:     pulumi.StringRef("your_domain_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("wafCertificate", _default.Certificates[0])
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
/// import com.pulumi.alicloud.waf.WafFunctions;
/// import com.pulumi.alicloud.waf.inputs.GetCertificatesArgs;
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
///         final var default = WafFunctions.getCertificates(GetCertificatesArgs.builder()
///             .ids("your_certificate_id")
///             .instanceId("your_instance_id")
///             .domain("your_domain_name")
///             .build());
///
///         ctx.export("wafCertificate", default_.certificates()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:waf:getCertificates
///       arguments:
///         ids:
///           - your_certificate_id
///         instanceId: your_instance_id
///         domain: your_domain_name
/// outputs:
///   wafCertificate: ${default.certificates[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_waf_get_certificates_get_certificates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificatesResult> getCertificates(
  GetCertificatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:waf/getCertificates:getCertificates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificatesResult.fromMap(result);
}

/// Provides a WAF datasource to retrieve domains.
///
/// For information about WAF and how to use it, see [What is Alibaba Cloud WAF](https://www.alibabacloud.com/help/doc-detail/28517.htm).
///
/// > **NOTE:** Available since v1.86.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.waf.getInstances({});
/// const defaultGetDomains = _default.then(_default => alicloud.waf.getDomains({
///     instanceId: _default.ids?.[0],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.waf.get_instances()
/// default_get_domains = alicloud.waf.get_domains(instance_id=default.ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Waf.GetInstances.Invoke();
///
///     var defaultGetDomains = AliCloud.Waf.GetDomains.Invoke(new()
///     {
///         InstanceId = @default.Apply(getInstancesResult => getInstancesResult.Ids[0]),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := waf.GetInstances(ctx, &waf.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = waf.GetDomains(ctx, &waf.GetDomainsArgs{
/// 			InstanceId: _default.Ids[0],
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
/// import com.pulumi.alicloud.waf.WafFunctions;
/// import com.pulumi.alicloud.waf.inputs.GetInstancesArgs;
/// import com.pulumi.alicloud.waf.inputs.GetDomainsArgs;
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
///         final var default = WafFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         final var defaultGetDomains = WafFunctions.getDomains(GetDomainsArgs.builder()
///             .instanceId(default_.ids()[0])
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:waf:getInstances
///       arguments: {}
///   defaultGetDomains:
///     fn::invoke:
///       function: alicloud:waf:getDomains
///       arguments:
///         instanceId: ${default.ids[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_waf_get_domains_get_domains_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainsResult> getDomains(
  GetDomainsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:waf/getDomains:getDomains',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainsResult.fromMap(result);
}

/// Provides a WAF datasource to retrieve instances.
///
/// For information about WAF and how to use it, see [What is Alibaba Cloud WAF](https://www.alibabacloud.com/help/doc-detail/28517.htm).
///
/// > **NOTE:** Available since v1.90.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.waf.getInstances({
///     ids: ["waf-cn-09k********"],
///     status: 1,
///     resourceGroupId: "rg-acfmwvv********",
///     instanceSource: "waf-cloud",
/// });
/// export const theFirstWafInstanceId = _default.then(_default => _default.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.waf.get_instances(ids=["waf-cn-09k********"],
///     status=1,
///     resource_group_id="rg-acfmwvv********",
///     instance_source="waf-cloud")
/// pulumi.export("theFirstWafInstanceId", default.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Waf.GetInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "waf-cn-09k********",
///         },
///         Status = 1,
///         ResourceGroupId = "rg-acfmwvv********",
///         InstanceSource = "waf-cloud",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["theFirstWafInstanceId"] = @default.Apply(@default => @default.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := waf.GetInstances(ctx, &waf.GetInstancesArgs{
/// 			Ids: []string{
/// 				"waf-cn-09k********",
/// 			},
/// 			Status:          pulumi.IntRef(1),
/// 			ResourceGroupId: pulumi.StringRef("rg-acfmwvv********"),
/// 			InstanceSource:  pulumi.StringRef("waf-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("theFirstWafInstanceId", _default.Instances[0].Id)
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
/// import com.pulumi.alicloud.waf.WafFunctions;
/// import com.pulumi.alicloud.waf.inputs.GetInstancesArgs;
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
///         final var default = WafFunctions.getInstances(GetInstancesArgs.builder()
///             .ids("waf-cn-09k********")
///             .status(1)
///             .resourceGroupId("rg-acfmwvv********")
///             .instanceSource("waf-cloud")
///             .build());
///
///         ctx.export("theFirstWafInstanceId", default_.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:waf:getInstances
///       arguments:
///         ids:
///           - waf-cn-09k********
///         status: '1'
///         resourceGroupId: rg-acfmwvv********
///         instanceSource: waf-cloud
/// outputs:
///   theFirstWafInstanceId: ${default.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_waf_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:waf/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}
