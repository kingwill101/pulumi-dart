import 'package:pulumi/pulumi.dart' as pulumi;
import 'category_response.dart';
import 'destination_addr_response.dart';
import 'local_rule_args.dart';
import 'source_addr_response.dart';
import 'system_data_response.dart';
import 'tag_info_response.dart';

/// LocalRulestack rule list
///
/// Uses Azure REST API version 2025-05-23. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08, 2026-01-26-preview, 2026-05-11-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LocalRules_CreateOrUpdate_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var localRule = new AzureNative.Cloudngfw.LocalRule("localRule", new()
///     {
///         ActionType = AzureNative.Cloudngfw.ActionEnum.Allow,
///         Applications = new[]
///         {
///             "app1",
///         },
///         AuditComment = "example comment",
///         Category = new AzureNative.Cloudngfw.Inputs.CategoryArgs
///         {
///             Feeds = new[]
///             {
///                 "feed",
///             },
///             UrlCustom = new[]
///             {
///                 "https://microsoft.com",
///             },
///         },
///         DecryptionRuleType = AzureNative.Cloudngfw.DecryptionRuleTypeEnum.SSLOutboundInspection,
///         Description = "description of local rule",
///         Destination = new AzureNative.Cloudngfw.Inputs.DestinationAddrArgs
///         {
///             Cidrs = new[]
///             {
///                 "1.0.0.1/10",
///             },
///             Countries = new[]
///             {
///                 "India",
///             },
///             Feeds = new[]
///             {
///                 "feed",
///             },
///             FqdnLists = new[]
///             {
///                 "FQDN1",
///             },
///             PrefixLists = new[]
///             {
///                 "PL1",
///             },
///         },
///         EnableLogging = AzureNative.Cloudngfw.StateEnum.DISABLED,
///         InboundInspectionCertificate = "cert1",
///         LocalRulestackName = "lrs1",
///         NegateDestination = AzureNative.Cloudngfw.BooleanEnum.TRUE,
///         NegateSource = AzureNative.Cloudngfw.BooleanEnum.TRUE,
///         Priority = "1",
///         Protocol = "HTTP",
///         ProtocolPortList = new[]
///         {
///             "80",
///         },
///         ResourceGroupName = "firewall-rg",
///         RuleName = "localRule1",
///         RuleState = AzureNative.Cloudngfw.StateEnum.DISABLED,
///         Source = new AzureNative.Cloudngfw.Inputs.SourceAddrArgs
///         {
///             Cidrs = new[]
///             {
///                 "1.0.0.1/10",
///             },
///             Countries = new[]
///             {
///                 "India",
///             },
///             Feeds = new[]
///             {
///                 "feed",
///             },
///             PrefixLists = new[]
///             {
///                 "PL1",
///             },
///         },
///         Tags = new[]
///         {
///             new AzureNative.Cloudngfw.Inputs.TagInfoArgs
///             {
///                 Key = "keyName",
///                 Value = "value",
///             },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	cloudngfw "github.com/pulumi/pulumi-azure-native-sdk/cloudngfw/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudngfw.NewLocalRule(ctx, "localRule", &cloudngfw.LocalRuleArgs{
/// 			ActionType: pulumi.String(cloudngfw.ActionEnumAllow),
/// 			Applications: pulumi.StringArray{
/// 				pulumi.String("app1"),
/// 			},
/// 			AuditComment: pulumi.String("example comment"),
/// 			Category: &cloudngfw.CategoryArgs{
/// 				Feeds: pulumi.StringArray{
/// 					pulumi.String("feed"),
/// 				},
/// 				UrlCustom: pulumi.StringArray{
/// 					pulumi.String("https://microsoft.com"),
/// 				},
/// 			},
/// 			DecryptionRuleType: pulumi.String(cloudngfw.DecryptionRuleTypeEnumSSLOutboundInspection),
/// 			Description:        pulumi.String("description of local rule"),
/// 			Destination: &cloudngfw.DestinationAddrArgs{
/// 				Cidrs: pulumi.StringArray{
/// 					pulumi.String("1.0.0.1/10"),
/// 				},
/// 				Countries: pulumi.StringArray{
/// 					pulumi.String("India"),
/// 				},
/// 				Feeds: pulumi.StringArray{
/// 					pulumi.String("feed"),
/// 				},
/// 				FqdnLists: pulumi.StringArray{
/// 					pulumi.String("FQDN1"),
/// 				},
/// 				PrefixLists: pulumi.StringArray{
/// 					pulumi.String("PL1"),
/// 				},
/// 			},
/// 			EnableLogging:                pulumi.String(cloudngfw.StateEnumDISABLED),
/// 			InboundInspectionCertificate: pulumi.String("cert1"),
/// 			LocalRulestackName:           pulumi.String("lrs1"),
/// 			NegateDestination:            pulumi.String(cloudngfw.BooleanEnumTRUE),
/// 			NegateSource:                 pulumi.String(cloudngfw.BooleanEnumTRUE),
/// 			Priority:                     pulumi.String("1"),
/// 			Protocol:                     pulumi.String("HTTP"),
/// 			ProtocolPortList: pulumi.StringArray{
/// 				pulumi.String("80"),
/// 			},
/// 			ResourceGroupName: pulumi.String("firewall-rg"),
/// 			RuleName:          pulumi.String("localRule1"),
/// 			RuleState:         pulumi.String(cloudngfw.StateEnumDISABLED),
/// 			Source: &cloudngfw.SourceAddrArgs{
/// 				Cidrs: pulumi.StringArray{
/// 					pulumi.String("1.0.0.1/10"),
/// 				},
/// 				Countries: pulumi.StringArray{
/// 					pulumi.String("India"),
/// 				},
/// 				Feeds: pulumi.StringArray{
/// 					pulumi.String("feed"),
/// 				},
/// 				PrefixLists: pulumi.StringArray{
/// 					pulumi.String("PL1"),
/// 				},
/// 			},
/// 			Tags: cloudngfw.TagInfoArray{
/// 				&cloudngfw.TagInfoArgs{
/// 					Key:   pulumi.String("keyName"),
/// 					Value: pulumi.String("value"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_cloudngfw_localrule" "localRule" {
///   action_type   = "Allow"
///   applications  = ["app1"]
///   audit_comment = "example comment"
///   category = {
///     feeds      = ["feed"]
///     url_custom = ["https://microsoft.com"]
///   }
///   decryption_rule_type = "SSLOutboundInspection"
///   description          = "description of local rule"
///   destination = {
///     cidrs        = ["1.0.0.1/10"]
///     countries    = ["India"]
///     feeds        = ["feed"]
///     fqdn_lists   = ["FQDN1"]
///     prefix_lists = ["PL1"]
///   }
///   enable_logging                 = "DISABLED"
///   inbound_inspection_certificate = "cert1"
///   local_rulestack_name           = "lrs1"
///   negate_destination             = "TRUE"
///   negate_source                  = "TRUE"
///   priority                       = "1"
///   protocol                       = "HTTP"
///   protocol_port_list             = ["80"]
///   resource_group_name            = "firewall-rg"
///   rule_name                      = "localRule1"
///   rule_state                     = "DISABLED"
///   source = {
///     cidrs        = ["1.0.0.1/10"]
///     countries    = ["India"]
///     feeds        = ["feed"]
///     prefix_lists = ["PL1"]
///   }
///   tags {
///     key   = "keyName"
///     value = "value"
///   }
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.cloudngfw.LocalRule;
/// import com.pulumi.azurenative.cloudngfw.LocalRuleArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.CategoryArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.DestinationAddrArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.SourceAddrArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.TagInfoArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var localRule = new LocalRule("localRule", LocalRuleArgs.builder()
///             .actionType("Allow")
///             .applications("app1")
///             .auditComment("example comment")
///             .category(CategoryArgs.builder()
///                 .feeds("feed")
///                 .urlCustom("https://microsoft.com")
///                 .build())
///             .decryptionRuleType("SSLOutboundInspection")
///             .description("description of local rule")
///             .destination(DestinationAddrArgs.builder()
///                 .cidrs("1.0.0.1/10")
///                 .countries("India")
///                 .feeds("feed")
///                 .fqdnLists("FQDN1")
///                 .prefixLists("PL1")
///                 .build())
///             .enableLogging("DISABLED")
///             .inboundInspectionCertificate("cert1")
///             .localRulestackName("lrs1")
///             .negateDestination("TRUE")
///             .negateSource("TRUE")
///             .priority("1")
///             .protocol("HTTP")
///             .protocolPortList("80")
///             .resourceGroupName("firewall-rg")
///             .ruleName("localRule1")
///             .ruleState("DISABLED")
///             .source(SourceAddrArgs.builder()
///                 .cidrs("1.0.0.1/10")
///                 .countries("India")
///                 .feeds("feed")
///                 .prefixLists("PL1")
///                 .build())
///             .tags(TagInfoArgs.builder()
///                 .key("keyName")
///                 .value("value")
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const localRule = new azure_native.cloudngfw.LocalRule("localRule", {
///     actionType: azure_native.cloudngfw.ActionEnum.Allow,
///     applications: ["app1"],
///     auditComment: "example comment",
///     category: {
///         feeds: ["feed"],
///         urlCustom: ["https://microsoft.com"],
///     },
///     decryptionRuleType: azure_native.cloudngfw.DecryptionRuleTypeEnum.SSLOutboundInspection,
///     description: "description of local rule",
///     destination: {
///         cidrs: ["1.0.0.1/10"],
///         countries: ["India"],
///         feeds: ["feed"],
///         fqdnLists: ["FQDN1"],
///         prefixLists: ["PL1"],
///     },
///     enableLogging: azure_native.cloudngfw.StateEnum.DISABLED,
///     inboundInspectionCertificate: "cert1",
///     localRulestackName: "lrs1",
///     negateDestination: azure_native.cloudngfw.BooleanEnum.TRUE,
///     negateSource: azure_native.cloudngfw.BooleanEnum.TRUE,
///     priority: "1",
///     protocol: "HTTP",
///     protocolPortList: ["80"],
///     resourceGroupName: "firewall-rg",
///     ruleName: "localRule1",
///     ruleState: azure_native.cloudngfw.StateEnum.DISABLED,
///     source: {
///         cidrs: ["1.0.0.1/10"],
///         countries: ["India"],
///         feeds: ["feed"],
///         prefixLists: ["PL1"],
///     },
///     tags: [{
///         key: "keyName",
///         value: "value",
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// local_rule = azure_native.cloudngfw.LocalRule("localRule",
///     action_type=azure_native.cloudngfw.ActionEnum.ALLOW,
///     applications=["app1"],
///     audit_comment="example comment",
///     category={
///         "feeds": ["feed"],
///         "url_custom": ["https://microsoft.com"],
///     },
///     decryption_rule_type=azure_native.cloudngfw.DecryptionRuleTypeEnum.SSL_OUTBOUND_INSPECTION,
///     description="description of local rule",
///     destination={
///         "cidrs": ["1.0.0.1/10"],
///         "countries": ["India"],
///         "feeds": ["feed"],
///         "fqdn_lists": ["FQDN1"],
///         "prefix_lists": ["PL1"],
///     },
///     enable_logging=azure_native.cloudngfw.StateEnum.DISABLED,
///     inbound_inspection_certificate="cert1",
///     local_rulestack_name="lrs1",
///     negate_destination=azure_native.cloudngfw.BooleanEnum.TRUE,
///     negate_source=azure_native.cloudngfw.BooleanEnum.TRUE,
///     priority="1",
///     protocol="HTTP",
///     protocol_port_list=["80"],
///     resource_group_name="firewall-rg",
///     rule_name="localRule1",
///     rule_state=azure_native.cloudngfw.StateEnum.DISABLED,
///     source={
///         "cidrs": ["1.0.0.1/10"],
///         "countries": ["India"],
///         "feeds": ["feed"],
///         "prefix_lists": ["PL1"],
///     },
///     tags=[{
///         "key": "keyName",
///         "value": "value",
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   localRule:
///     type: azure-native:cloudngfw:LocalRule
///     properties:
///       actionType: Allow
///       applications:
///         - app1
///       auditComment: example comment
///       category:
///         feeds:
///           - feed
///         urlCustom:
///           - https://microsoft.com
///       decryptionRuleType: SSLOutboundInspection
///       description: description of local rule
///       destination:
///         cidrs:
///           - 1.0.0.1/10
///         countries:
///           - India
///         feeds:
///           - feed
///         fqdnLists:
///           - FQDN1
///         prefixLists:
///           - PL1
///       enableLogging: DISABLED
///       inboundInspectionCertificate: cert1
///       localRulestackName: lrs1
///       negateDestination: TRUE
///       negateSource: TRUE
///       priority: '1'
///       protocol: HTTP
///       protocolPortList:
///         - '80'
///       resourceGroupName: firewall-rg
///       ruleName: localRule1
///       ruleState: DISABLED
///       source:
///         cidrs:
///           - 1.0.0.1/10
///         countries:
///           - India
///         feeds:
///           - feed
///         prefixLists:
///           - PL1
///       tags:
///         - key: keyName
///           value: value
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### LocalRules_CreateOrUpdate_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var localRule = new AzureNative.Cloudngfw.LocalRule("localRule", new()
///     {
///         LocalRulestackName = "lrs1",
///         Priority = "1",
///         ResourceGroupName = "firewall-rg",
///         RuleName = "localRule1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	cloudngfw "github.com/pulumi/pulumi-azure-native-sdk/cloudngfw/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudngfw.NewLocalRule(ctx, "localRule", &cloudngfw.LocalRuleArgs{
/// 			LocalRulestackName: pulumi.String("lrs1"),
/// 			Priority:           pulumi.String("1"),
/// 			ResourceGroupName:  pulumi.String("firewall-rg"),
/// 			RuleName:           pulumi.String("localRule1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_cloudngfw_localrule" "localRule" {
///   local_rulestack_name = "lrs1"
///   priority             = "1"
///   resource_group_name  = "firewall-rg"
///   rule_name            = "localRule1"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.cloudngfw.LocalRule;
/// import com.pulumi.azurenative.cloudngfw.LocalRuleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var localRule = new LocalRule("localRule", LocalRuleArgs.builder()
///             .localRulestackName("lrs1")
///             .priority("1")
///             .resourceGroupName("firewall-rg")
///             .ruleName("localRule1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const localRule = new azure_native.cloudngfw.LocalRule("localRule", {
///     localRulestackName: "lrs1",
///     priority: "1",
///     resourceGroupName: "firewall-rg",
///     ruleName: "localRule1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// local_rule = azure_native.cloudngfw.LocalRule("localRule",
///     local_rulestack_name="lrs1",
///     priority="1",
///     resource_group_name="firewall-rg",
///     rule_name="localRule1")
///
/// ```
///
/// ```yaml
/// resources:
///   localRule:
///     type: azure-native:cloudngfw:LocalRule
///     properties:
///       localRulestackName: lrs1
///       priority: '1'
///       resourceGroupName: firewall-rg
///       ruleName: localRule1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:cloudngfw:LocalRule aaaaaaaaa /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/PaloAltoNetworks.Cloudngfw/localRulestacks/{localRulestackName}/localRules/{priority}
/// ```
class LocalRule extends pulumi.CustomResource {
  /// rule action
  late final pulumi.Output<String?> actionType;
  /// array of rule applications
  late final pulumi.Output<List<String>?> applications;
  /// rule comment
  late final pulumi.Output<String?> auditComment;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// rule category
  late final pulumi.Output<CategoryResponse?> category;
  /// enable or disable decryption
  late final pulumi.Output<String?> decryptionRuleType;
  /// rule description
  late final pulumi.Output<String?> description;
  /// destination address
  late final pulumi.Output<DestinationAddrResponse?> destination;
  /// enable or disable logging
  late final pulumi.Output<String?> enableLogging;
  /// etag info
  late final pulumi.Output<String?> etag;
  /// inbound Inspection Certificate
  late final pulumi.Output<String?> inboundInspectionCertificate;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// cidr should not be 'any'
  late final pulumi.Output<String?> negateDestination;
  /// cidr should not be 'any'
  late final pulumi.Output<String?> negateSource;
  late final pulumi.Output<int> priority;
  /// any, application-default, TCP:number, UDP:number
  late final pulumi.Output<String?> protocol;
  /// prot port list
  late final pulumi.Output<List<String>?> protocolPortList;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// rule name
  late final pulumi.Output<String> ruleName;
  /// state of this rule
  late final pulumi.Output<String?> ruleState;
  /// source address
  late final pulumi.Output<SourceAddrResponse?> source;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// tag for rule
  late final pulumi.Output<List<TagInfoResponse>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LocalRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocalRule]. {@macro pulumi_cloudngfw_local_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocalRule(
    String name, {
    LocalRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cloudngfw:LocalRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actionType = registerOutput<String?>('actionType');
    applications = registerOutput<List<String>?>('applications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    auditComment = registerOutput<String?>('auditComment');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    category = registerOutput<CategoryResponse?>('category', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CategoryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    decryptionRuleType = registerOutput<String?>('decryptionRuleType');
    description = registerOutput<String?>('description');
    destination = registerOutput<DestinationAddrResponse?>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DestinationAddrResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enableLogging = registerOutput<String?>('enableLogging');
    etag = registerOutput<String?>('etag');
    inboundInspectionCertificate = registerOutput<String?>('inboundInspectionCertificate');
    this.name = registerOutput<String>('name');
    negateDestination = registerOutput<String?>('negateDestination');
    negateSource = registerOutput<String?>('negateSource');
    priority = registerOutput<int>('priority');
    protocol = registerOutput<String?>('protocol');
    protocolPortList = registerOutput<List<String>?>('protocolPortList', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    provisioningState = registerOutput<String>('provisioningState');
    ruleName = registerOutput<String>('ruleName');
    ruleState = registerOutput<String?>('ruleState');
    source = registerOutput<SourceAddrResponse?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SourceAddrResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<TagInfoResponse>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TagInfoResponse>(guardedValue, (value) => TagInfoResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [LocalRule] resource.
  LocalRule.reference(String urn)
    : super(
        'azure-native:cloudngfw:LocalRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    actionType = registerOutput<String?>('actionType');
    applications = registerOutput<List<String>?>('applications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    auditComment = registerOutput<String?>('auditComment');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    category = registerOutput<CategoryResponse?>('category', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CategoryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    decryptionRuleType = registerOutput<String?>('decryptionRuleType');
    description = registerOutput<String?>('description');
    destination = registerOutput<DestinationAddrResponse?>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DestinationAddrResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enableLogging = registerOutput<String?>('enableLogging');
    etag = registerOutput<String?>('etag');
    inboundInspectionCertificate = registerOutput<String?>('inboundInspectionCertificate');
    this.name = registerOutput<String>('name');
    negateDestination = registerOutput<String?>('negateDestination');
    negateSource = registerOutput<String?>('negateSource');
    priority = registerOutput<int>('priority');
    protocol = registerOutput<String?>('protocol');
    protocolPortList = registerOutput<List<String>?>('protocolPortList', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    provisioningState = registerOutput<String>('provisioningState');
    ruleName = registerOutput<String>('ruleName');
    ruleState = registerOutput<String?>('ruleState');
    source = registerOutput<SourceAddrResponse?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SourceAddrResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<TagInfoResponse>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TagInfoResponse>(guardedValue, (value) => TagInfoResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
  }
}
