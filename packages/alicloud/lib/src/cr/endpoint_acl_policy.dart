import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_acl_policy_args.dart';

/// Provides a CR Endpoint Acl Policy resource.
///
/// For information about CR Endpoint Acl Policy and how to use it, see [What is Endpoint Acl Policy](https://www.alibabacloud.com/help/doc-detail/145275.htm).
///
/// > **NOTE:** Available since v1.139.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000000,
///     max: 99999999,
/// });
/// const defaultRegistryEnterpriseInstance = new alicloud.cr.RegistryEnterpriseInstance("default", {
///     paymentType: "Subscription",
///     period: 1,
///     renewalStatus: "ManualRenewal",
///     instanceType: "Advanced",
///     instanceName: `${name}-${defaultInteger.result}`,
/// });
/// const _default = alicloud.cr.getEndpointAclServiceOutput({
///     endpointType: "internet",
///     enable: true,
///     instanceId: defaultRegistryEnterpriseInstance.id,
///     moduleName: "Registry",
/// });
/// const defaultEndpointAclPolicy = new alicloud.cr.EndpointAclPolicy("default", {
///     instanceId: _default.apply(_default => _default.instanceId),
///     entry: "192.168.1.0/24",
///     description: name,
///     moduleName: "Registry",
///     endpointType: "internet",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default_integer = random.index.Integer("default",
///     min=10000000,
///     max=99999999)
/// default_registry_enterprise_instance = alicloud.cr.RegistryEnterpriseInstance("default",
///     payment_type="Subscription",
///     period=1,
///     renewal_status="ManualRenewal",
///     instance_type="Advanced",
///     instance_name=f"{name}-{default_integer['result']}")
/// default = alicloud.cr.get_endpoint_acl_service_output(endpoint_type="internet",
///     enable=True,
///     instance_id=default_registry_enterprise_instance.id,
///     module_name="Registry")
/// default_endpoint_acl_policy = alicloud.cr.EndpointAclPolicy("default",
///     instance_id=default.instance_id,
///     entry="192.168.1.0/24",
///     description=name,
///     module_name="Registry",
///     endpoint_type="internet")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000000,
///         Max = 99999999,
///     });
///
///     var defaultRegistryEnterpriseInstance = new AliCloud.CR.RegistryEnterpriseInstance("default", new()
///     {
///         PaymentType = "Subscription",
///         Period = 1,
///         RenewalStatus = "ManualRenewal",
///         InstanceType = "Advanced",
///         InstanceName = $"{name}-{defaultInteger.Result}",
///     });
///
///     var @default = AliCloud.CR.GetEndpointAclService.Invoke(new()
///     {
///         EndpointType = "internet",
///         Enable = true,
///         InstanceId = defaultRegistryEnterpriseInstance.Id,
///         ModuleName = "Registry",
///     });
///
///     var defaultEndpointAclPolicy = new AliCloud.CR.EndpointAclPolicy("default", new()
///     {
///         InstanceId = @default.Apply(@default => @default.Apply(getEndpointAclServiceResult => getEndpointAclServiceResult.InstanceId)),
///         Entry = "192.168.1.0/24",
///         Description = name,
///         ModuleName = "Registry",
///         EndpointType = "internet",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cr"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "tf-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// Min: 10000000,
/// Max: 99999999,
/// })
/// if err != nil {
/// return err
/// }
/// defaultRegistryEnterpriseInstance, err := cr.NewRegistryEnterpriseInstance(ctx, "default", &cr.RegistryEnterpriseInstanceArgs{
/// PaymentType: pulumi.String("Subscription"),
/// Period: pulumi.Int(1),
/// RenewalStatus: pulumi.String("ManualRenewal"),
/// InstanceType: pulumi.String("Advanced"),
/// InstanceName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// })
/// if err != nil {
/// return err
/// }
/// _default := cr.GetEndpointAclServiceOutput(ctx, cr.GetEndpointAclServiceOutputArgs{
/// EndpointType: pulumi.String("internet"),
/// Enable: pulumi.Bool(true),
/// InstanceId: defaultRegistryEnterpriseInstance.ID(),
/// ModuleName: pulumi.String("Registry"),
/// }, nil);
/// _, err = cr.NewEndpointAclPolicy(ctx, "default", &cr.EndpointAclPolicyArgs{
/// InstanceId: pulumi.String(_default.ApplyT(func(_default cr.GetEndpointAclServiceResult) (*string, error) {
/// return &default.InstanceId, nil
/// }).(pulumi.StringPtrOutput)),
/// Entry: pulumi.String("192.168.1.0/24"),
/// Description: pulumi.String(name),
/// ModuleName: pulumi.String("Registry"),
/// EndpointType: pulumi.String("internet"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.cr.RegistryEnterpriseInstance;
/// import com.pulumi.alicloud.cr.RegistryEnterpriseInstanceArgs;
/// import com.pulumi.alicloud.cr.CrFunctions;
/// import com.pulumi.alicloud.cr.inputs.GetEndpointAclServiceArgs;
/// import com.pulumi.alicloud.cr.EndpointAclPolicy;
/// import com.pulumi.alicloud.cr.EndpointAclPolicyArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000000)
///             .max(99999999)
///             .build());
///
///         var defaultRegistryEnterpriseInstance = new RegistryEnterpriseInstance("defaultRegistryEnterpriseInstance", RegistryEnterpriseInstanceArgs.builder()
///             .paymentType("Subscription")
///             .period(1)
///             .renewalStatus("ManualRenewal")
///             .instanceType("Advanced")
///             .instanceName(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         final var default = CrFunctions.getEndpointAclService(GetEndpointAclServiceArgs.builder()
///             .endpointType("internet")
///             .enable(true)
///             .instanceId(defaultRegistryEnterpriseInstance.id())
///             .moduleName("Registry")
///             .build());
///
///         var defaultEndpointAclPolicy = new EndpointAclPolicy("defaultEndpointAclPolicy", EndpointAclPolicyArgs.builder()
///             .instanceId(default_.applyValue(_default_ -> _default_.instanceId()))
///             .entry("192.168.1.0/24")
///             .description(name)
///             .moduleName("Registry")
///             .endpointType("internet")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 1e+07
///       max: 9.9999999e+07
///   defaultRegistryEnterpriseInstance:
///     type: alicloud:cr:RegistryEnterpriseInstance
///     name: default
///     properties:
///       paymentType: Subscription
///       period: 1
///       renewalStatus: ManualRenewal
///       instanceType: Advanced
///       instanceName: ${name}-${defaultInteger.result}
///   defaultEndpointAclPolicy:
///     type: alicloud:cr:EndpointAclPolicy
///     name: default
///     properties:
///       instanceId: ${default.instanceId}
///       entry: 192.168.1.0/24
///       description: ${name}
///       moduleName: Registry
///       endpointType: internet
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cr:getEndpointAclService
///       arguments:
///         endpointType: internet
///         enable: true
///         instanceId: ${defaultRegistryEnterpriseInstance.id}
///         moduleName: Registry
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CR Endpoint Acl Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cr/endpointAclPolicy:EndpointAclPolicy example <instance_id>:<endpoint_type>:<entry>
/// ```
class EndpointAclPolicy extends pulumi.CustomResource {
  /// The description of the entry.
  late final pulumi.Output<String?> description;
  /// The type of endpoint. Valid values: `internet`.
  late final pulumi.Output<String> endpointType;
  /// The IP segment that allowed to access.
  late final pulumi.Output<String> entry;
  /// The ID of the CR Instance.
  late final pulumi.Output<String> instanceId;
  /// The module that needs to set the access policy. Valid values: `Registry`.
  late final pulumi.Output<String?> moduleName;

  /// Creates a new [EndpointAclPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointAclPolicy]. {@macro pulumi_cr_endpoint_acl_policy_endpoint_acl_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointAclPolicy(
    String name, {
    EndpointAclPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cr/endpointAclPolicy:EndpointAclPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.endpointType = registerOutput<String>('endpointType');
    this.entry = registerOutput<String>('entry');
    this.instanceId = registerOutput<String>('instanceId');
    this.moduleName = registerOutput<String?>('moduleName');
  }
}
