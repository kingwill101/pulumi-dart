import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_args.dart';
import 'audit_state.dart';

/// SLS log audit exists in the form of log service app.
///
/// In addition to inheriting all SLS functions, it also enhances the real-time automatic centralized collection of audit related logs across multi cloud products under multi accounts, and provides support for storage, query and information summary required by audit. It covers actiontrail, OSS, NAS, SLB, API gateway, RDS, WAF, cloud firewall, cloud security center and other products.
///
/// &gt; **NOTE:** Available since v1.81.0
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
///
/// const _default = alicloud.getAccount({});
/// const example = new alicloud.log.Audit("example", {
///     displayName: "tf-audit-example",
///     aliuid: _default.then(_default => _default.id),
///     variableMap: {
///         actiontrail_enabled: "true",
///         actiontrail_ttl: "180",
///         oss_access_enabled: "true",
///         oss_access_ttl: "7",
///         oss_sync_enabled: "true",
///         oss_sync_ttl: "180",
///         oss_metering_enabled: "true",
///         oss_metering_ttl: "180",
///         rds_enabled: "true",
///         rds_audit_collection_policy: "",
///         rds_ttl: "180",
///         rds_slow_enabled: "false",
///         rds_slow_collection_policy: "",
///         rds_slow_ttl: "180",
///         rds_perf_enabled: "false",
///         rds_perf_collection_policy: "",
///         rds_perf_ttl: "180",
///         vpc_flow_enabled: "false",
///         vpc_flow_ttl: "7",
///         vpc_flow_collection_policy: "",
///         vpc_sync_enabled: "true",
///         vpc_sync_ttl: "180",
///         polardb_enabled: "true",
///         polardb_audit_collection_policy: "",
///         polardb_ttl: "180",
///         polardb_slow_enabled: "false",
///         polardb_slow_collection_policy: "",
///         polardb_slow_ttl: "180",
///         polardb_perf_enabled: "false",
///         polardb_perf_collection_policy: "",
///         polardb_perf_ttl: "180",
///         drds_audit_enabled: "true",
///         drds_audit_collection_policy: "",
///         drds_audit_ttl: "7",
///         drds_sync_enabled: "true",
///         drds_sync_ttl: "180",
///         slb_access_enabled: "true",
///         slb_access_collection_policy: "",
///         slb_access_ttl: "7",
///         slb_sync_enabled: "true",
///         slb_sync_ttl: "180",
///         bastion_enabled: "true",
///         bastion_ttl: "180",
///         waf_enabled: "true",
///         waf_ttl: "180",
///         cloudfirewall_enabled: "true",
///         cloudfirewall_ttl: "180",
///         ddos_coo_access_enabled: "false",
///         ddos_coo_access_ttl: "180",
///         ddos_bgp_access_enabled: "false",
///         ddos_bgp_access_ttl: "180",
///         ddos_dip_access_enabled: "false",
///         ddos_dip_access_ttl: "180",
///         sas_crack_enabled: "true",
///         sas_dns_enabled: "true",
///         sas_http_enabled: "true",
///         sas_local_dns_enabled: "true",
///         sas_login_enabled: "true",
///         sas_network_enabled: "true",
///         sas_process_enabled: "true",
///         sas_security_alert_enabled: "true",
///         sas_security_hc_enabled: "true",
///         sas_security_vul_enabled: "true",
///         sas_session_enabled: "true",
///         sas_snapshot_account_enabled: "true",
///         sas_snapshot_port_enabled: "true",
///         sas_snapshot_process_enabled: "true",
///         sas_ttl: "180",
///         apigateway_enabled: "true",
///         apigateway_ttl: "180",
///         nas_enabled: "true",
///         nas_ttl: "180",
///         appconnect_enabled: "false",
///         appconnect_ttl: "180",
///         cps_enabled: "true",
///         cps_ttl: "180",
///         k8s_audit_enabled: "true",
///         k8s_audit_collection_policy: "",
///         k8s_audit_ttl: "180",
///         k8s_event_enabled: "true",
///         k8s_event_collection_policy: "",
///         k8s_event_ttl: "180",
///         k8s_ingress_enabled: "true",
///         k8s_ingress_collection_policy: "",
///         k8s_ingress_ttl: "180",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_account()
/// example = alicloud.log.Audit("example",
///     display_name="tf-audit-example",
///     aliuid=default.id,
///     variable_map={
///         "actiontrail_enabled": "true",
///         "actiontrail_ttl": "180",
///         "oss_access_enabled": "true",
///         "oss_access_ttl": "7",
///         "oss_sync_enabled": "true",
///         "oss_sync_ttl": "180",
///         "oss_metering_enabled": "true",
///         "oss_metering_ttl": "180",
///         "rds_enabled": "true",
///         "rds_audit_collection_policy": "",
///         "rds_ttl": "180",
///         "rds_slow_enabled": "false",
///         "rds_slow_collection_policy": "",
///         "rds_slow_ttl": "180",
///         "rds_perf_enabled": "false",
///         "rds_perf_collection_policy": "",
///         "rds_perf_ttl": "180",
///         "vpc_flow_enabled": "false",
///         "vpc_flow_ttl": "7",
///         "vpc_flow_collection_policy": "",
///         "vpc_sync_enabled": "true",
///         "vpc_sync_ttl": "180",
///         "polardb_enabled": "true",
///         "polardb_audit_collection_policy": "",
///         "polardb_ttl": "180",
///         "polardb_slow_enabled": "false",
///         "polardb_slow_collection_policy": "",
///         "polardb_slow_ttl": "180",
///         "polardb_perf_enabled": "false",
///         "polardb_perf_collection_policy": "",
///         "polardb_perf_ttl": "180",
///         "drds_audit_enabled": "true",
///         "drds_audit_collection_policy": "",
///         "drds_audit_ttl": "7",
///         "drds_sync_enabled": "true",
///         "drds_sync_ttl": "180",
///         "slb_access_enabled": "true",
///         "slb_access_collection_policy": "",
///         "slb_access_ttl": "7",
///         "slb_sync_enabled": "true",
///         "slb_sync_ttl": "180",
///         "bastion_enabled": "true",
///         "bastion_ttl": "180",
///         "waf_enabled": "true",
///         "waf_ttl": "180",
///         "cloudfirewall_enabled": "true",
///         "cloudfirewall_ttl": "180",
///         "ddos_coo_access_enabled": "false",
///         "ddos_coo_access_ttl": "180",
///         "ddos_bgp_access_enabled": "false",
///         "ddos_bgp_access_ttl": "180",
///         "ddos_dip_access_enabled": "false",
///         "ddos_dip_access_ttl": "180",
///         "sas_crack_enabled": "true",
///         "sas_dns_enabled": "true",
///         "sas_http_enabled": "true",
///         "sas_local_dns_enabled": "true",
///         "sas_login_enabled": "true",
///         "sas_network_enabled": "true",
///         "sas_process_enabled": "true",
///         "sas_security_alert_enabled": "true",
///         "sas_security_hc_enabled": "true",
///         "sas_security_vul_enabled": "true",
///         "sas_session_enabled": "true",
///         "sas_snapshot_account_enabled": "true",
///         "sas_snapshot_port_enabled": "true",
///         "sas_snapshot_process_enabled": "true",
///         "sas_ttl": "180",
///         "apigateway_enabled": "true",
///         "apigateway_ttl": "180",
///         "nas_enabled": "true",
///         "nas_ttl": "180",
///         "appconnect_enabled": "false",
///         "appconnect_ttl": "180",
///         "cps_enabled": "true",
///         "cps_ttl": "180",
///         "k8s_audit_enabled": "true",
///         "k8s_audit_collection_policy": "",
///         "k8s_audit_ttl": "180",
///         "k8s_event_enabled": "true",
///         "k8s_event_collection_policy": "",
///         "k8s_event_ttl": "180",
///         "k8s_ingress_enabled": "true",
///         "k8s_ingress_collection_policy": "",
///         "k8s_ingress_ttl": "180",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var example = new AliCloud.Log.Audit("example", new()
///     {
///         DisplayName = "tf-audit-example",
///         Aliuid = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///         VariableMap =
///         {
///             { "actiontrail_enabled", "true" },
///             { "actiontrail_ttl", "180" },
///             { "oss_access_enabled", "true" },
///             { "oss_access_ttl", "7" },
///             { "oss_sync_enabled", "true" },
///             { "oss_sync_ttl", "180" },
///             { "oss_metering_enabled", "true" },
///             { "oss_metering_ttl", "180" },
///             { "rds_enabled", "true" },
///             { "rds_audit_collection_policy", "" },
///             { "rds_ttl", "180" },
///             { "rds_slow_enabled", "false" },
///             { "rds_slow_collection_policy", "" },
///             { "rds_slow_ttl", "180" },
///             { "rds_perf_enabled", "false" },
///             { "rds_perf_collection_policy", "" },
///             { "rds_perf_ttl", "180" },
///             { "vpc_flow_enabled", "false" },
///             { "vpc_flow_ttl", "7" },
///             { "vpc_flow_collection_policy", "" },
///             { "vpc_sync_enabled", "true" },
///             { "vpc_sync_ttl", "180" },
///             { "polardb_enabled", "true" },
///             { "polardb_audit_collection_policy", "" },
///             { "polardb_ttl", "180" },
///             { "polardb_slow_enabled", "false" },
///             { "polardb_slow_collection_policy", "" },
///             { "polardb_slow_ttl", "180" },
///             { "polardb_perf_enabled", "false" },
///             { "polardb_perf_collection_policy", "" },
///             { "polardb_perf_ttl", "180" },
///             { "drds_audit_enabled", "true" },
///             { "drds_audit_collection_policy", "" },
///             { "drds_audit_ttl", "7" },
///             { "drds_sync_enabled", "true" },
///             { "drds_sync_ttl", "180" },
///             { "slb_access_enabled", "true" },
///             { "slb_access_collection_policy", "" },
///             { "slb_access_ttl", "7" },
///             { "slb_sync_enabled", "true" },
///             { "slb_sync_ttl", "180" },
///             { "bastion_enabled", "true" },
///             { "bastion_ttl", "180" },
///             { "waf_enabled", "true" },
///             { "waf_ttl", "180" },
///             { "cloudfirewall_enabled", "true" },
///             { "cloudfirewall_ttl", "180" },
///             { "ddos_coo_access_enabled", "false" },
///             { "ddos_coo_access_ttl", "180" },
///             { "ddos_bgp_access_enabled", "false" },
///             { "ddos_bgp_access_ttl", "180" },
///             { "ddos_dip_access_enabled", "false" },
///             { "ddos_dip_access_ttl", "180" },
///             { "sas_crack_enabled", "true" },
///             { "sas_dns_enabled", "true" },
///             { "sas_http_enabled", "true" },
///             { "sas_local_dns_enabled", "true" },
///             { "sas_login_enabled", "true" },
///             { "sas_network_enabled", "true" },
///             { "sas_process_enabled", "true" },
///             { "sas_security_alert_enabled", "true" },
///             { "sas_security_hc_enabled", "true" },
///             { "sas_security_vul_enabled", "true" },
///             { "sas_session_enabled", "true" },
///             { "sas_snapshot_account_enabled", "true" },
///             { "sas_snapshot_port_enabled", "true" },
///             { "sas_snapshot_process_enabled", "true" },
///             { "sas_ttl", "180" },
///             { "apigateway_enabled", "true" },
///             { "apigateway_ttl", "180" },
///             { "nas_enabled", "true" },
///             { "nas_ttl", "180" },
///             { "appconnect_enabled", "false" },
///             { "appconnect_ttl", "180" },
///             { "cps_enabled", "true" },
///             { "cps_ttl", "180" },
///             { "k8s_audit_enabled", "true" },
///             { "k8s_audit_collection_policy", "" },
///             { "k8s_audit_ttl", "180" },
///             { "k8s_event_enabled", "true" },
///             { "k8s_event_collection_policy", "" },
///             { "k8s_event_ttl", "180" },
///             { "k8s_ingress_enabled", "true" },
///             { "k8s_ingress_collection_policy", "" },
///             { "k8s_ingress_ttl", "180" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewAudit(ctx, "example", &log.AuditArgs{
/// 			DisplayName: pulumi.String("tf-audit-example"),
/// 			Aliuid:      pulumi.String(_default.Id),
/// 			VariableMap: pulumi.StringMap{
/// 				"actiontrail_enabled":             pulumi.String("true"),
/// 				"actiontrail_ttl":                 pulumi.String("180"),
/// 				"oss_access_enabled":              pulumi.String("true"),
/// 				"oss_access_ttl":                  pulumi.String("7"),
/// 				"oss_sync_enabled":                pulumi.String("true"),
/// 				"oss_sync_ttl":                    pulumi.String("180"),
/// 				"oss_metering_enabled":            pulumi.String("true"),
/// 				"oss_metering_ttl":                pulumi.String("180"),
/// 				"rds_enabled":                     pulumi.String("true"),
/// 				"rds_audit_collection_policy":     pulumi.String(""),
/// 				"rds_ttl":                         pulumi.String("180"),
/// 				"rds_slow_enabled":                pulumi.String("false"),
/// 				"rds_slow_collection_policy":      pulumi.String(""),
/// 				"rds_slow_ttl":                    pulumi.String("180"),
/// 				"rds_perf_enabled":                pulumi.String("false"),
/// 				"rds_perf_collection_policy":      pulumi.String(""),
/// 				"rds_perf_ttl":                    pulumi.String("180"),
/// 				"vpc_flow_enabled":                pulumi.String("false"),
/// 				"vpc_flow_ttl":                    pulumi.String("7"),
/// 				"vpc_flow_collection_policy":      pulumi.String(""),
/// 				"vpc_sync_enabled":                pulumi.String("true"),
/// 				"vpc_sync_ttl":                    pulumi.String("180"),
/// 				"polardb_enabled":                 pulumi.String("true"),
/// 				"polardb_audit_collection_policy": pulumi.String(""),
/// 				"polardb_ttl":                     pulumi.String("180"),
/// 				"polardb_slow_enabled":            pulumi.String("false"),
/// 				"polardb_slow_collection_policy":  pulumi.String(""),
/// 				"polardb_slow_ttl":                pulumi.String("180"),
/// 				"polardb_perf_enabled":            pulumi.String("false"),
/// 				"polardb_perf_collection_policy":  pulumi.String(""),
/// 				"polardb_perf_ttl":                pulumi.String("180"),
/// 				"drds_audit_enabled":              pulumi.String("true"),
/// 				"drds_audit_collection_policy":    pulumi.String(""),
/// 				"drds_audit_ttl":                  pulumi.String("7"),
/// 				"drds_sync_enabled":               pulumi.String("true"),
/// 				"drds_sync_ttl":                   pulumi.String("180"),
/// 				"slb_access_enabled":              pulumi.String("true"),
/// 				"slb_access_collection_policy":    pulumi.String(""),
/// 				"slb_access_ttl":                  pulumi.String("7"),
/// 				"slb_sync_enabled":                pulumi.String("true"),
/// 				"slb_sync_ttl":                    pulumi.String("180"),
/// 				"bastion_enabled":                 pulumi.String("true"),
/// 				"bastion_ttl":                     pulumi.String("180"),
/// 				"waf_enabled":                     pulumi.String("true"),
/// 				"waf_ttl":                         pulumi.String("180"),
/// 				"cloudfirewall_enabled":           pulumi.String("true"),
/// 				"cloudfirewall_ttl":               pulumi.String("180"),
/// 				"ddos_coo_access_enabled":         pulumi.String("false"),
/// 				"ddos_coo_access_ttl":             pulumi.String("180"),
/// 				"ddos_bgp_access_enabled":         pulumi.String("false"),
/// 				"ddos_bgp_access_ttl":             pulumi.String("180"),
/// 				"ddos_dip_access_enabled":         pulumi.String("false"),
/// 				"ddos_dip_access_ttl":             pulumi.String("180"),
/// 				"sas_crack_enabled":               pulumi.String("true"),
/// 				"sas_dns_enabled":                 pulumi.String("true"),
/// 				"sas_http_enabled":                pulumi.String("true"),
/// 				"sas_local_dns_enabled":           pulumi.String("true"),
/// 				"sas_login_enabled":               pulumi.String("true"),
/// 				"sas_network_enabled":             pulumi.String("true"),
/// 				"sas_process_enabled":             pulumi.String("true"),
/// 				"sas_security_alert_enabled":      pulumi.String("true"),
/// 				"sas_security_hc_enabled":         pulumi.String("true"),
/// 				"sas_security_vul_enabled":        pulumi.String("true"),
/// 				"sas_session_enabled":             pulumi.String("true"),
/// 				"sas_snapshot_account_enabled":    pulumi.String("true"),
/// 				"sas_snapshot_port_enabled":       pulumi.String("true"),
/// 				"sas_snapshot_process_enabled":    pulumi.String("true"),
/// 				"sas_ttl":                         pulumi.String("180"),
/// 				"apigateway_enabled":              pulumi.String("true"),
/// 				"apigateway_ttl":                  pulumi.String("180"),
/// 				"nas_enabled":                     pulumi.String("true"),
/// 				"nas_ttl":                         pulumi.String("180"),
/// 				"appconnect_enabled":              pulumi.String("false"),
/// 				"appconnect_ttl":                  pulumi.String("180"),
/// 				"cps_enabled":                     pulumi.String("true"),
/// 				"cps_ttl":                         pulumi.String("180"),
/// 				"k8s_audit_enabled":               pulumi.String("true"),
/// 				"k8s_audit_collection_policy":     pulumi.String(""),
/// 				"k8s_audit_ttl":                   pulumi.String("180"),
/// 				"k8s_event_enabled":               pulumi.String("true"),
/// 				"k8s_event_collection_policy":     pulumi.String(""),
/// 				"k8s_event_ttl":                   pulumi.String("180"),
/// 				"k8s_ingress_enabled":             pulumi.String("true"),
/// 				"k8s_ingress_collection_policy":   pulumi.String(""),
/// 				"k8s_ingress_ttl":                 pulumi.String("180"),
/// 			},
/// 		})
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.log.Audit;
/// import com.pulumi.alicloud.log.AuditArgs;
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
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new Audit("example", AuditArgs.builder()
///             .displayName("tf-audit-example")
///             .aliuid(default_.id())
///             .variableMap(Map.ofEntries(
///                 Map.entry("actiontrail_enabled", "true"),
///                 Map.entry("actiontrail_ttl", "180"),
///                 Map.entry("oss_access_enabled", "true"),
///                 Map.entry("oss_access_ttl", "7"),
///                 Map.entry("oss_sync_enabled", "true"),
///                 Map.entry("oss_sync_ttl", "180"),
///                 Map.entry("oss_metering_enabled", "true"),
///                 Map.entry("oss_metering_ttl", "180"),
///                 Map.entry("rds_enabled", "true"),
///                 Map.entry("rds_audit_collection_policy", ""),
///                 Map.entry("rds_ttl", "180"),
///                 Map.entry("rds_slow_enabled", "false"),
///                 Map.entry("rds_slow_collection_policy", ""),
///                 Map.entry("rds_slow_ttl", "180"),
///                 Map.entry("rds_perf_enabled", "false"),
///                 Map.entry("rds_perf_collection_policy", ""),
///                 Map.entry("rds_perf_ttl", "180"),
///                 Map.entry("vpc_flow_enabled", "false"),
///                 Map.entry("vpc_flow_ttl", "7"),
///                 Map.entry("vpc_flow_collection_policy", ""),
///                 Map.entry("vpc_sync_enabled", "true"),
///                 Map.entry("vpc_sync_ttl", "180"),
///                 Map.entry("polardb_enabled", "true"),
///                 Map.entry("polardb_audit_collection_policy", ""),
///                 Map.entry("polardb_ttl", "180"),
///                 Map.entry("polardb_slow_enabled", "false"),
///                 Map.entry("polardb_slow_collection_policy", ""),
///                 Map.entry("polardb_slow_ttl", "180"),
///                 Map.entry("polardb_perf_enabled", "false"),
///                 Map.entry("polardb_perf_collection_policy", ""),
///                 Map.entry("polardb_perf_ttl", "180"),
///                 Map.entry("drds_audit_enabled", "true"),
///                 Map.entry("drds_audit_collection_policy", ""),
///                 Map.entry("drds_audit_ttl", "7"),
///                 Map.entry("drds_sync_enabled", "true"),
///                 Map.entry("drds_sync_ttl", "180"),
///                 Map.entry("slb_access_enabled", "true"),
///                 Map.entry("slb_access_collection_policy", ""),
///                 Map.entry("slb_access_ttl", "7"),
///                 Map.entry("slb_sync_enabled", "true"),
///                 Map.entry("slb_sync_ttl", "180"),
///                 Map.entry("bastion_enabled", "true"),
///                 Map.entry("bastion_ttl", "180"),
///                 Map.entry("waf_enabled", "true"),
///                 Map.entry("waf_ttl", "180"),
///                 Map.entry("cloudfirewall_enabled", "true"),
///                 Map.entry("cloudfirewall_ttl", "180"),
///                 Map.entry("ddos_coo_access_enabled", "false"),
///                 Map.entry("ddos_coo_access_ttl", "180"),
///                 Map.entry("ddos_bgp_access_enabled", "false"),
///                 Map.entry("ddos_bgp_access_ttl", "180"),
///                 Map.entry("ddos_dip_access_enabled", "false"),
///                 Map.entry("ddos_dip_access_ttl", "180"),
///                 Map.entry("sas_crack_enabled", "true"),
///                 Map.entry("sas_dns_enabled", "true"),
///                 Map.entry("sas_http_enabled", "true"),
///                 Map.entry("sas_local_dns_enabled", "true"),
///                 Map.entry("sas_login_enabled", "true"),
///                 Map.entry("sas_network_enabled", "true"),
///                 Map.entry("sas_process_enabled", "true"),
///                 Map.entry("sas_security_alert_enabled", "true"),
///                 Map.entry("sas_security_hc_enabled", "true"),
///                 Map.entry("sas_security_vul_enabled", "true"),
///                 Map.entry("sas_session_enabled", "true"),
///                 Map.entry("sas_snapshot_account_enabled", "true"),
///                 Map.entry("sas_snapshot_port_enabled", "true"),
///                 Map.entry("sas_snapshot_process_enabled", "true"),
///                 Map.entry("sas_ttl", "180"),
///                 Map.entry("apigateway_enabled", "true"),
///                 Map.entry("apigateway_ttl", "180"),
///                 Map.entry("nas_enabled", "true"),
///                 Map.entry("nas_ttl", "180"),
///                 Map.entry("appconnect_enabled", "false"),
///                 Map.entry("appconnect_ttl", "180"),
///                 Map.entry("cps_enabled", "true"),
///                 Map.entry("cps_ttl", "180"),
///                 Map.entry("k8s_audit_enabled", "true"),
///                 Map.entry("k8s_audit_collection_policy", ""),
///                 Map.entry("k8s_audit_ttl", "180"),
///                 Map.entry("k8s_event_enabled", "true"),
///                 Map.entry("k8s_event_collection_policy", ""),
///                 Map.entry("k8s_event_ttl", "180"),
///                 Map.entry("k8s_ingress_enabled", "true"),
///                 Map.entry("k8s_ingress_collection_policy", ""),
///                 Map.entry("k8s_ingress_ttl", "180")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:log:Audit
///     properties:
///       displayName: tf-audit-example
///       aliuid: ${default.id}
///       variableMap:
///         actiontrail_enabled: 'true'
///         actiontrail_ttl: '180'
///         oss_access_enabled: 'true'
///         oss_access_ttl: '7'
///         oss_sync_enabled: 'true'
///         oss_sync_ttl: '180'
///         oss_metering_enabled: 'true'
///         oss_metering_ttl: '180'
///         rds_enabled: 'true'
///         rds_audit_collection_policy: ""
///         rds_ttl: '180'
///         rds_slow_enabled: 'false'
///         rds_slow_collection_policy: ""
///         rds_slow_ttl: '180'
///         rds_perf_enabled: 'false'
///         rds_perf_collection_policy: ""
///         rds_perf_ttl: '180'
///         vpc_flow_enabled: 'false'
///         vpc_flow_ttl: '7'
///         vpc_flow_collection_policy: ""
///         vpc_sync_enabled: 'true'
///         vpc_sync_ttl: '180'
///         polardb_enabled: 'true'
///         polardb_audit_collection_policy: ""
///         polardb_ttl: '180'
///         polardb_slow_enabled: 'false'
///         polardb_slow_collection_policy: ""
///         polardb_slow_ttl: '180'
///         polardb_perf_enabled: 'false'
///         polardb_perf_collection_policy: ""
///         polardb_perf_ttl: '180'
///         drds_audit_enabled: 'true'
///         drds_audit_collection_policy: ""
///         drds_audit_ttl: '7'
///         drds_sync_enabled: 'true'
///         drds_sync_ttl: '180'
///         slb_access_enabled: 'true'
///         slb_access_collection_policy: ""
///         slb_access_ttl: '7'
///         slb_sync_enabled: 'true'
///         slb_sync_ttl: '180'
///         bastion_enabled: 'true'
///         bastion_ttl: '180'
///         waf_enabled: 'true'
///         waf_ttl: '180'
///         cloudfirewall_enabled: 'true'
///         cloudfirewall_ttl: '180'
///         ddos_coo_access_enabled: 'false'
///         ddos_coo_access_ttl: '180'
///         ddos_bgp_access_enabled: 'false'
///         ddos_bgp_access_ttl: '180'
///         ddos_dip_access_enabled: 'false'
///         ddos_dip_access_ttl: '180'
///         sas_crack_enabled: 'true'
///         sas_dns_enabled: 'true'
///         sas_http_enabled: 'true'
///         sas_local_dns_enabled: 'true'
///         sas_login_enabled: 'true'
///         sas_network_enabled: 'true'
///         sas_process_enabled: 'true'
///         sas_security_alert_enabled: 'true'
///         sas_security_hc_enabled: 'true'
///         sas_security_vul_enabled: 'true'
///         sas_session_enabled: 'true'
///         sas_snapshot_account_enabled: 'true'
///         sas_snapshot_port_enabled: 'true'
///         sas_snapshot_process_enabled: 'true'
///         sas_ttl: '180'
///         apigateway_enabled: 'true'
///         apigateway_ttl: '180'
///         nas_enabled: 'true'
///         nas_ttl: '180'
///         appconnect_enabled: 'false'
///         appconnect_ttl: '180'
///         cps_enabled: 'true'
///         cps_ttl: '180'
///         k8s_audit_enabled: 'true'
///         k8s_audit_collection_policy: ""
///         k8s_audit_ttl: '180'
///         k8s_event_enabled: 'true'
///         k8s_event_collection_policy: ""
///         k8s_event_ttl: '180'
///         k8s_ingress_enabled: 'true'
///         k8s_ingress_collection_policy: ""
///         k8s_ingress_ttl: '180'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
/// Multiple accounts Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.getAccount({});
/// const example = new alicloud.log.Audit("example", {
///     displayName: "tf-audit-example",
///     aliuid: _default.then(_default => _default.id),
///     variableMap: {
///         actiontrail_enabled: "true",
///         actiontrail_ttl: "180",
///         oss_access_enabled: "true",
///         oss_access_ttl: "180",
///     },
///     multiAccounts: [
///         "123456789123",
///         "12345678912300123",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_account()
/// example = alicloud.log.Audit("example",
///     display_name="tf-audit-example",
///     aliuid=default.id,
///     variable_map={
///         "actiontrail_enabled": "true",
///         "actiontrail_ttl": "180",
///         "oss_access_enabled": "true",
///         "oss_access_ttl": "180",
///     },
///     multi_accounts=[
///         "123456789123",
///         "12345678912300123",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var example = new AliCloud.Log.Audit("example", new()
///     {
///         DisplayName = "tf-audit-example",
///         Aliuid = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///         VariableMap =
///         {
///             { "actiontrail_enabled", "true" },
///             { "actiontrail_ttl", "180" },
///             { "oss_access_enabled", "true" },
///             { "oss_access_ttl", "180" },
///         },
///         MultiAccounts = new[]
///         {
///             "123456789123",
///             "12345678912300123",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewAudit(ctx, "example", &log.AuditArgs{
/// 			DisplayName: pulumi.String("tf-audit-example"),
/// 			Aliuid:      pulumi.String(_default.Id),
/// 			VariableMap: pulumi.StringMap{
/// 				"actiontrail_enabled": pulumi.String("true"),
/// 				"actiontrail_ttl":     pulumi.String("180"),
/// 				"oss_access_enabled":  pulumi.String("true"),
/// 				"oss_access_ttl":      pulumi.String("180"),
/// 			},
/// 			MultiAccounts: pulumi.StringArray{
/// 				pulumi.String("123456789123"),
/// 				pulumi.String("12345678912300123"),
/// 			},
/// 		})
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.log.Audit;
/// import com.pulumi.alicloud.log.AuditArgs;
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
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new Audit("example", AuditArgs.builder()
///             .displayName("tf-audit-example")
///             .aliuid(default_.id())
///             .variableMap(Map.ofEntries(
///                 Map.entry("actiontrail_enabled", "true"),
///                 Map.entry("actiontrail_ttl", "180"),
///                 Map.entry("oss_access_enabled", "true"),
///                 Map.entry("oss_access_ttl", "180")
///             ))
///             .multiAccounts(
///                 "123456789123",
///                 "12345678912300123")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:log:Audit
///     properties:
///       displayName: tf-audit-example
///       aliuid: ${default.id}
///       variableMap:
///         actiontrail_enabled: 'true'
///         actiontrail_ttl: '180'
///         oss_access_enabled: 'true'
///         oss_access_ttl: '180'
///       multiAccounts:
///         - '123456789123'
///         - '12345678912300123'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
/// Resource Directory Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.getAccount({});
/// const example = new alicloud.log.Audit("example", {
///     displayName: "tf-audit-example",
///     aliuid: _default.then(_default => _default.id),
///     variableMap: {
///         actiontrail_enabled: "true",
///         actiontrail_ttl: "180",
///         oss_access_enabled: "true",
///         oss_access_ttl: "180",
///     },
///     resourceDirectoryType: "all",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_account()
/// example = alicloud.log.Audit("example",
///     display_name="tf-audit-example",
///     aliuid=default.id,
///     variable_map={
///         "actiontrail_enabled": "true",
///         "actiontrail_ttl": "180",
///         "oss_access_enabled": "true",
///         "oss_access_ttl": "180",
///     },
///     resource_directory_type="all")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var example = new AliCloud.Log.Audit("example", new()
///     {
///         DisplayName = "tf-audit-example",
///         Aliuid = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///         VariableMap =
///         {
///             { "actiontrail_enabled", "true" },
///             { "actiontrail_ttl", "180" },
///             { "oss_access_enabled", "true" },
///             { "oss_access_ttl", "180" },
///         },
///         ResourceDirectoryType = "all",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewAudit(ctx, "example", &log.AuditArgs{
/// 			DisplayName: pulumi.String("tf-audit-example"),
/// 			Aliuid:      pulumi.String(_default.Id),
/// 			VariableMap: pulumi.StringMap{
/// 				"actiontrail_enabled": pulumi.String("true"),
/// 				"actiontrail_ttl":     pulumi.String("180"),
/// 				"oss_access_enabled":  pulumi.String("true"),
/// 				"oss_access_ttl":      pulumi.String("180"),
/// 			},
/// 			ResourceDirectoryType: pulumi.String("all"),
/// 		})
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.log.Audit;
/// import com.pulumi.alicloud.log.AuditArgs;
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
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new Audit("example", AuditArgs.builder()
///             .displayName("tf-audit-example")
///             .aliuid(default_.id())
///             .variableMap(Map.ofEntries(
///                 Map.entry("actiontrail_enabled", "true"),
///                 Map.entry("actiontrail_ttl", "180"),
///                 Map.entry("oss_access_enabled", "true"),
///                 Map.entry("oss_access_ttl", "180")
///             ))
///             .resourceDirectoryType("all")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:log:Audit
///     properties:
///       displayName: tf-audit-example
///       aliuid: ${default.id}
///       variableMap:
///         actiontrail_enabled: 'true'
///         actiontrail_ttl: '180'
///         oss_access_enabled: 'true'
///         oss_access_ttl: '180'
///       resourceDirectoryType: all
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.getAccount({});
/// const example = new alicloud.log.Audit("example", {
///     displayName: "tf-audit-example",
///     aliuid: _default.then(_default => _default.id),
///     variableMap: {
///         actiontrail_enabled: "true",
///         actiontrail_ttl: "180",
///         oss_access_enabled: "true",
///         oss_access_ttl: "180",
///     },
///     multiAccounts: [],
///     resourceDirectoryType: "custom",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_account()
/// example = alicloud.log.Audit("example",
///     display_name="tf-audit-example",
///     aliuid=default.id,
///     variable_map={
///         "actiontrail_enabled": "true",
///         "actiontrail_ttl": "180",
///         "oss_access_enabled": "true",
///         "oss_access_ttl": "180",
///     },
///     multi_accounts=[],
///     resource_directory_type="custom")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var example = new AliCloud.Log.Audit("example", new()
///     {
///         DisplayName = "tf-audit-example",
///         Aliuid = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///         VariableMap =
///         {
///             { "actiontrail_enabled", "true" },
///             { "actiontrail_ttl", "180" },
///             { "oss_access_enabled", "true" },
///             { "oss_access_ttl", "180" },
///         },
///         MultiAccounts = new[] {},
///         ResourceDirectoryType = "custom",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewAudit(ctx, "example", &log.AuditArgs{
/// 			DisplayName: pulumi.String("tf-audit-example"),
/// 			Aliuid:      pulumi.String(_default.Id),
/// 			VariableMap: pulumi.StringMap{
/// 				"actiontrail_enabled": pulumi.String("true"),
/// 				"actiontrail_ttl":     pulumi.String("180"),
/// 				"oss_access_enabled":  pulumi.String("true"),
/// 				"oss_access_ttl":      pulumi.String("180"),
/// 			},
/// 			MultiAccounts:         pulumi.StringArray{},
/// 			ResourceDirectoryType: pulumi.String("custom"),
/// 		})
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.log.Audit;
/// import com.pulumi.alicloud.log.AuditArgs;
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
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new Audit("example", AuditArgs.builder()
///             .displayName("tf-audit-example")
///             .aliuid(default_.id())
///             .variableMap(Map.ofEntries(
///                 Map.entry("actiontrail_enabled", "true"),
///                 Map.entry("actiontrail_ttl", "180"),
///                 Map.entry("oss_access_enabled", "true"),
///                 Map.entry("oss_access_ttl", "180")
///             ))
///             .multiAccounts()
///             .resourceDirectoryType("custom")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:log:Audit
///     properties:
///       displayName: tf-audit-example
///       aliuid: ${default.id}
///       variableMap:
///         actiontrail_enabled: 'true'
///         actiontrail_ttl: '180'
///         oss_access_enabled: 'true'
///         oss_access_ttl: '180'
///       multiAccounts: # Put your member accounts here, separated by ","
/// []
///       resourceDirectoryType: custom
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Log audit can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:log/audit:Audit example tf-audit-example
/// ```
class Audit extends pulumi.CustomResource {
  /// Aliuid value of your account.
  late final pulumi.Output<String> aliuid;
  /// Name of SLS log audit.
  late final pulumi.Output<String> displayName;
  /// Multi-account configuration, please fill in multiple aliuid.
  late final pulumi.Output<List<String>?> multiAccounts;
  /// Resource Directory type. Optional values are all or custom. If the value is custom, argument multi_account should be provided.
  late final pulumi.Output<String?> resourceDirectoryType;
  /// Log audit detailed configuration.
  late final pulumi.Output<Map<String, String>?> variableMap;

  /// Creates a new [Audit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Audit]. {@macro pulumi_log_audit_audit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Audit(
    String name, {
    AuditArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/audit:Audit',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aliuid = registerOutput<String>('aliuid');
    displayName = registerOutput<String>('displayName');
    multiAccounts = registerOutput<List<String>?>('multiAccounts');
    resourceDirectoryType = registerOutput<String?>('resourceDirectoryType');
    variableMap = registerOutput<Map<String, String>?>('variableMap');
  }

  /// Gets an existing [Audit] resource's state with the given [name] and [id].
  static Audit get(
    String name,
    pulumi.Input<String> id, {
    AuditState? state,
  }) {
    return Audit._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Audit._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/audit:Audit',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aliuid = registerOutput<String>('aliuid');
    displayName = registerOutput<String>('displayName');
    multiAccounts = registerOutput<List<String>?>('multiAccounts');
    resourceDirectoryType = registerOutput<String?>('resourceDirectoryType');
    variableMap = registerOutput<Map<String, String>?>('variableMap');
  }
}
