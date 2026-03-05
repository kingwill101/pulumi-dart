import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_args.dart';
import 'record_auth_conf.dart';
import 'record_data.dart';
import 'record_state.dart';

/// Provides a ESA Record resource.
///
///
///
/// For information about ESA Record and how to use it, see [What is Record](https://www.alibabacloud.com/help/en/edge-security-acceleration/esa/user-guide/add-parsing-record/).
///
/// &gt; **NOTE:** Available since v1.240.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.esa.RatePlanInstance("default", {
///     type: "NS",
///     autoRenew: false,
///     period: 1,
///     paymentType: "Subscription",
///     coverage: "overseas",
///     autoPay: true,
///     planName: "high",
/// });
/// const defaultSite = new alicloud.esa.Site("default", {
///     siteName: "idlexamplerecord.com",
///     instanceId: _default.id,
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultRecord = new alicloud.esa.Record("default", {
///     data: {
///         value: "www.eerrraaa.com",
///         weight: 1,
///         priority: 1,
///         port: 80,
///     },
///     ttl: 100,
///     recordName: "_udp._sip.idlexamplerecord.com",
///     comment: "This is a remark",
///     siteId: defaultSite.id,
///     recordType: "SRV",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.esa.RatePlanInstance("default",
///     type="NS",
///     auto_renew=False,
///     period=1,
///     payment_type="Subscription",
///     coverage="overseas",
///     auto_pay=True,
///     plan_name="high")
/// default_site = alicloud.esa.Site("default",
///     site_name="idlexamplerecord.com",
///     instance_id=default.id,
///     coverage="overseas",
///     access_type="NS")
/// default_record = alicloud.esa.Record("default",
///     data={
///         "value": "www.eerrraaa.com",
///         "weight": 1,
///         "priority": 1,
///         "port": 80,
///     },
///     ttl=100,
///     record_name="_udp._sip.idlexamplerecord.com",
///     comment="This is a remark",
///     site_id=default_site.id,
///     record_type="SRV")
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
///     var @default = new AliCloud.Esa.RatePlanInstance("default", new()
///     {
///         Type = "NS",
///         AutoRenew = false,
///         Period = 1,
///         PaymentType = "Subscription",
///         Coverage = "overseas",
///         AutoPay = true,
///         PlanName = "high",
///     });
///
///     var defaultSite = new AliCloud.Esa.Site("default", new()
///     {
///         SiteName = "idlexamplerecord.com",
///         InstanceId = @default.Id,
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultRecord = new AliCloud.Esa.Record("default", new()
///     {
///         Data = new AliCloud.Esa.Inputs.RecordDataArgs
///         {
///             Value = "www.eerrraaa.com",
///             Weight = 1,
///             Priority = 1,
///             Port = 80,
///         },
///         Ttl = 100,
///         RecordName = "_udp._sip.idlexamplerecord.com",
///         Comment = "This is a remark",
///         SiteId = defaultSite.Id,
///         RecordType = "SRV",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := esa.NewRatePlanInstance(ctx, "default", &esa.RatePlanInstanceArgs{
/// 			Type:        pulumi.String("NS"),
/// 			AutoRenew:   pulumi.Bool(false),
/// 			Period:      pulumi.Int(1),
/// 			PaymentType: pulumi.String("Subscription"),
/// 			Coverage:    pulumi.String("overseas"),
/// 			AutoPay:     pulumi.Bool(true),
/// 			PlanName:    pulumi.String("high"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSite, err := esa.NewSite(ctx, "default", &esa.SiteArgs{
/// 			SiteName:   pulumi.String("idlexamplerecord.com"),
/// 			InstanceId: _default.ID(),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewRecord(ctx, "default", &esa.RecordArgs{
/// 			Data: &esa.RecordDataArgs{
/// 				Value:    pulumi.String("www.eerrraaa.com"),
/// 				Weight:   pulumi.Int(1),
/// 				Priority: pulumi.Int(1),
/// 				Port:     pulumi.Int(80),
/// 			},
/// 			Ttl:        pulumi.Int(100),
/// 			RecordName: pulumi.String("_udp._sip.idlexamplerecord.com"),
/// 			Comment:    pulumi.String("This is a remark"),
/// 			SiteId:     defaultSite.ID(),
/// 			RecordType: pulumi.String("SRV"),
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
/// import com.pulumi.alicloud.esa.RatePlanInstance;
/// import com.pulumi.alicloud.esa.RatePlanInstanceArgs;
/// import com.pulumi.alicloud.esa.Site;
/// import com.pulumi.alicloud.esa.SiteArgs;
/// import com.pulumi.alicloud.esa.Record;
/// import com.pulumi.alicloud.esa.RecordArgs;
/// import com.pulumi.alicloud.esa.inputs.RecordDataArgs;
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
///         var default_ = new RatePlanInstance("default", RatePlanInstanceArgs.builder()
///             .type("NS")
///             .autoRenew(false)
///             .period(1)
///             .paymentType("Subscription")
///             .coverage("overseas")
///             .autoPay(true)
///             .planName("high")
///             .build());
///
///         var defaultSite = new Site("defaultSite", SiteArgs.builder()
///             .siteName("idlexamplerecord.com")
///             .instanceId(default_.id())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultRecord = new Record("defaultRecord", RecordArgs.builder()
///             .data(RecordDataArgs.builder()
///                 .value("www.eerrraaa.com")
///                 .weight(1)
///                 .priority(1)
///                 .port(80)
///                 .build())
///             .ttl(100)
///             .recordName("_udp._sip.idlexamplerecord.com")
///             .comment("This is a remark")
///             .siteId(defaultSite.id())
///             .recordType("SRV")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:esa:RatePlanInstance
///     properties:
///       type: NS
///       autoRenew: 'false'
///       period: '1'
///       paymentType: Subscription
///       coverage: overseas
///       autoPay: 'true'
///       planName: high
///   defaultSite:
///     type: alicloud:esa:Site
///     name: default
///     properties:
///       siteName: idlexamplerecord.com
///       instanceId: ${default.id}
///       coverage: overseas
///       accessType: NS
///   defaultRecord:
///     type: alicloud:esa:Record
///     name: default
///     properties:
///       data:
///         value: www.eerrraaa.com
///         weight: '1'
///         priority: '1'
///         port: '80'
///       ttl: '100'
///       recordName: _udp._sip.idlexamplerecord.com
///       comment: This is a remark
///       siteId: ${defaultSite.id}
///       recordType: SRV
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Record can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/record:Record example <id>
/// ```
class Record extends pulumi.CustomResource {
  /// The origin authentication information of the CNAME record. See `auth_conf` below.
  late final pulumi.Output<RecordAuthConf?> authConf;
  /// The business scenario of the record for acceleration. Leave the parameter empty if your record is not proxied. Valid values:
  late final pulumi.Output<String?> bizName;
  /// The comment of the record. The maximum length is 100 characters.
  late final pulumi.Output<String?> comment;
  /// The time when the record was created. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  late final pulumi.Output<String> createTime;
  /// The DNS record information. The format of this field varies based on the record type. For more information, see [References](https://www.alibabacloud.com/help/doc-detail/2708761.html?spm=openapi-amp.newDocPublishment.0.0.6a0f281feoeVWr). See `data` below.
  late final pulumi.Output<RecordData> data;
  /// The origin host policy. This policy takes effect when the record type is CNAME. You can set the policy in two modes:
  late final pulumi.Output<String?> hostPolicy;
  /// Specifies whether to proxy the record. Only CNAME and A/AAAA records can be proxied. Valid values:
  late final pulumi.Output<bool?> proxied;
  /// The record name. This parameter specifies a filter condition for the query.
  late final pulumi.Output<String> recordName;
  /// The type of the DNS record, such as A/AAAA, CNAME, and TXT.
  late final pulumi.Output<String> recordType;
  /// The website ID.
  late final pulumi.Output<String> siteId;
  /// The origin type for the CNAME record. This parameter is required when you add a CNAME record. Valid values:
  /// - `OSS`: OSS bucket.
  /// - `S3`: S3 bucket.
  /// - `LB`: load balancer.
  /// - `OP`: origin pool.
  /// - `Domain`: domain name.
  /// - If you do not pass this parameter or if you leave its value empty, Domain is used by default.
  late final pulumi.Output<String?> sourceType;
  /// The TTL of the record. Unit: seconds. If the value is 1, the TTL of the record is determined by the system.
  late final pulumi.Output<int?> ttl;

  /// Creates a new [Record].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Record]. {@macro pulumi_esa_record_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Record(
    String name, {
    RecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/record:Record',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authConf = registerOutput<RecordAuthConf?>('authConf', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecordAuthConf.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bizName = registerOutput<String?>('bizName');
    comment = registerOutput<String?>('comment');
    createTime = registerOutput<String>('createTime');
    data = registerOutput<RecordData>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecordData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hostPolicy = registerOutput<String?>('hostPolicy');
    proxied = registerOutput<bool?>('proxied');
    recordName = registerOutput<String>('recordName');
    recordType = registerOutput<String>('recordType');
    siteId = registerOutput<String>('siteId');
    sourceType = registerOutput<String?>('sourceType');
    ttl = registerOutput<int?>('ttl');
  }

  /// Gets an existing [Record] resource's state with the given [name] and [id].
  static Record get(
    String name,
    pulumi.Input<String> id, {
    RecordState? state,
  }) {
    return Record._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Record._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/record:Record',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authConf = registerOutput<RecordAuthConf?>('authConf', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecordAuthConf.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bizName = registerOutput<String?>('bizName');
    comment = registerOutput<String?>('comment');
    createTime = registerOutput<String>('createTime');
    data = registerOutput<RecordData>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecordData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    hostPolicy = registerOutput<String?>('hostPolicy');
    proxied = registerOutput<bool?>('proxied');
    recordName = registerOutput<String>('recordName');
    recordType = registerOutput<String>('recordType');
    siteId = registerOutput<String>('siteId');
    sourceType = registerOutput<String?>('sourceType');
    ttl = registerOutput<int?>('ttl');
  }
}
