import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_pool_args.dart';
import 'origin_pool_origin.dart';
import 'origin_pool_state.dart';

/// Provides a ESA Origin Pool resource.
///
///
///
/// For information about ESA Origin Pool and how to use it, see [What is Origin Pool](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateOriginPool).
///
/// > **NOTE:** Available since v1.244.0.
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
/// const _default = alicloud.esa.getSites({
///     planSubscribeType: "enterpriseplan",
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultSite = new alicloud.esa.Site("default", {
///     siteName: `gositecdn-${defaultInteger.result}.cn`,
///     instanceId: _default.then(_default => _default.sites?.[0]?.instanceId),
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultOriginPool = new alicloud.esa.OriginPool("default", {
///     origins: [
///         {
///             type: "OSS",
///             address: "example.oss-cn-beijing.aliyuncs.com",
///             header: "{\"Host\":[\"example.oss-cn-beijing.aliyuncs.com\"]}",
///             enabled: true,
///             authConf: {
///                 secretKey: "<SecretKeyId>",
///                 authType: "private_cross_account",
///                 accessKey: "<AccessKeyId>",
///             },
///             weight: 50,
///             name: "origin1",
///         },
///         {
///             address: "example.s3.com",
///             header: "{\"Host\": [\"example1.com\"]}",
///             enabled: true,
///             authConf: {
///                 version: "v2",
///                 region: "us-east-1",
///                 authType: "private",
///                 accessKey: "<AccessKeyId>",
///                 secretKey: "<SecretKeyId>",
///             },
///             weight: 50,
///             name: "origin2",
///             type: "S3",
///         },
///         {
///             type: "S3",
///             address: "example1111.s3.com",
///             header: "{\"Host\":[\"example1111.com\"]}",
///             enabled: true,
///             authConf: {
///                 secretKey: "<SecretKeyId>",
///                 version: "v2",
///                 region: "us-east-1",
///                 authType: "private",
///                 accessKey: "<AccessKeyId>",
///             },
///             weight: 30,
///             name: "origin3",
///         },
///     ],
///     siteId: defaultSite.id,
///     originPoolName: "exampleoriginpool",
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_site = alicloud.esa.Site("default",
///     site_name=f"gositecdn-{default_integer['result']}.cn",
///     instance_id=default.sites[0].instance_id,
///     coverage="overseas",
///     access_type="NS")
/// default_origin_pool = alicloud.esa.OriginPool("default",
///     origins=[
///         {
///             "type": "OSS",
///             "address": "example.oss-cn-beijing.aliyuncs.com",
///             "header": "{\"Host\":[\"example.oss-cn-beijing.aliyuncs.com\"]}",
///             "enabled": True,
///             "auth_conf": {
///                 "secret_key": "<SecretKeyId>",
///                 "auth_type": "private_cross_account",
///                 "access_key": "<AccessKeyId>",
///             },
///             "weight": 50,
///             "name": "origin1",
///         },
///         {
///             "address": "example.s3.com",
///             "header": "{\"Host\": [\"example1.com\"]}",
///             "enabled": True,
///             "auth_conf": {
///                 "version": "v2",
///                 "region": "us-east-1",
///                 "auth_type": "private",
///                 "access_key": "<AccessKeyId>",
///                 "secret_key": "<SecretKeyId>",
///             },
///             "weight": 50,
///             "name": "origin2",
///             "type": "S3",
///         },
///         {
///             "type": "S3",
///             "address": "example1111.s3.com",
///             "header": "{\"Host\":[\"example1111.com\"]}",
///             "enabled": True,
///             "auth_conf": {
///                 "secret_key": "<SecretKeyId>",
///                 "version": "v2",
///                 "region": "us-east-1",
///                 "auth_type": "private",
///                 "access_key": "<AccessKeyId>",
///             },
///             "weight": 30,
///             "name": "origin3",
///         },
///     ],
///     site_id=default_site.id,
///     origin_pool_name="exampleoriginpool",
///     enabled=True)
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
///     var @default = AliCloud.Esa.GetSites.Invoke(new()
///     {
///         PlanSubscribeType = "enterpriseplan",
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultSite = new AliCloud.Esa.Site("default", new()
///     {
///         SiteName = $"gositecdn-{defaultInteger.Result}.cn",
///         InstanceId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.InstanceId)),
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultOriginPool = new AliCloud.Esa.OriginPool("default", new()
///     {
///         Origins = new[]
///         {
///             new AliCloud.Esa.Inputs.OriginPoolOriginArgs
///             {
///                 Type = "OSS",
///                 Address = "example.oss-cn-beijing.aliyuncs.com",
///                 Header = "{\"Host\":[\"example.oss-cn-beijing.aliyuncs.com\"]}",
///                 Enabled = true,
///                 AuthConf = new AliCloud.Esa.Inputs.OriginPoolOriginAuthConfArgs
///                 {
///                     SecretKey = "<SecretKeyId>",
///                     AuthType = "private_cross_account",
///                     AccessKey = "<AccessKeyId>",
///                 },
///                 Weight = 50,
///                 Name = "origin1",
///             },
///             new AliCloud.Esa.Inputs.OriginPoolOriginArgs
///             {
///                 Address = "example.s3.com",
///                 Header = "{\"Host\": [\"example1.com\"]}",
///                 Enabled = true,
///                 AuthConf = new AliCloud.Esa.Inputs.OriginPoolOriginAuthConfArgs
///                 {
///                     Version = "v2",
///                     Region = "us-east-1",
///                     AuthType = "private",
///                     AccessKey = "<AccessKeyId>",
///                     SecretKey = "<SecretKeyId>",
///                 },
///                 Weight = 50,
///                 Name = "origin2",
///                 Type = "S3",
///             },
///             new AliCloud.Esa.Inputs.OriginPoolOriginArgs
///             {
///                 Type = "S3",
///                 Address = "example1111.s3.com",
///                 Header = "{\"Host\":[\"example1111.com\"]}",
///                 Enabled = true,
///                 AuthConf = new AliCloud.Esa.Inputs.OriginPoolOriginAuthConfArgs
///                 {
///                     SecretKey = "<SecretKeyId>",
///                     Version = "v2",
///                     Region = "us-east-1",
///                     AuthType = "private",
///                     AccessKey = "<AccessKeyId>",
///                 },
///                 Weight = 30,
///                 Name = "origin3",
///             },
///         },
///         SiteId = defaultSite.Id,
///         OriginPoolName = "exampleoriginpool",
///         Enabled = true,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := esa.GetSites(ctx, &esa.GetSitesArgs{
/// 			PlanSubscribeType: pulumi.StringRef("enterpriseplan"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSite, err := esa.NewSite(ctx, "default", &esa.SiteArgs{
/// 			SiteName:   pulumi.Sprintf("gositecdn-%v.cn", defaultInteger.Result),
/// 			InstanceId: pulumi.String(_default.Sites[0].InstanceId),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewOriginPool(ctx, "default", &esa.OriginPoolArgs{
/// 			Origins: esa.OriginPoolOriginArray{
/// 				&esa.OriginPoolOriginArgs{
/// 					Type:    pulumi.String("OSS"),
/// 					Address: pulumi.String("example.oss-cn-beijing.aliyuncs.com"),
/// 					Header:  pulumi.String("{\"Host\":[\"example.oss-cn-beijing.aliyuncs.com\"]}"),
/// 					Enabled: pulumi.Bool(true),
/// 					AuthConf: &esa.OriginPoolOriginAuthConfArgs{
/// 						SecretKey: pulumi.String("<SecretKeyId>"),
/// 						AuthType:  pulumi.String("private_cross_account"),
/// 						AccessKey: pulumi.String("<AccessKeyId>"),
/// 					},
/// 					Weight: pulumi.Int(50),
/// 					Name:   pulumi.String("origin1"),
/// 				},
/// 				&esa.OriginPoolOriginArgs{
/// 					Address: pulumi.String("example.s3.com"),
/// 					Header:  pulumi.String("{\"Host\": [\"example1.com\"]}"),
/// 					Enabled: pulumi.Bool(true),
/// 					AuthConf: &esa.OriginPoolOriginAuthConfArgs{
/// 						Version:   pulumi.String("v2"),
/// 						Region:    pulumi.String("us-east-1"),
/// 						AuthType:  pulumi.String("private"),
/// 						AccessKey: pulumi.String("<AccessKeyId>"),
/// 						SecretKey: pulumi.String("<SecretKeyId>"),
/// 					},
/// 					Weight: pulumi.Int(50),
/// 					Name:   pulumi.String("origin2"),
/// 					Type:   pulumi.String("S3"),
/// 				},
/// 				&esa.OriginPoolOriginArgs{
/// 					Type:    pulumi.String("S3"),
/// 					Address: pulumi.String("example1111.s3.com"),
/// 					Header:  pulumi.String("{\"Host\":[\"example1111.com\"]}"),
/// 					Enabled: pulumi.Bool(true),
/// 					AuthConf: &esa.OriginPoolOriginAuthConfArgs{
/// 						SecretKey: pulumi.String("<SecretKeyId>"),
/// 						Version:   pulumi.String("v2"),
/// 						Region:    pulumi.String("us-east-1"),
/// 						AuthType:  pulumi.String("private"),
/// 						AccessKey: pulumi.String("<AccessKeyId>"),
/// 					},
/// 					Weight: pulumi.Int(30),
/// 					Name:   pulumi.String("origin3"),
/// 				},
/// 			},
/// 			SiteId:         defaultSite.ID(),
/// 			OriginPoolName: pulumi.String("exampleoriginpool"),
/// 			Enabled:        pulumi.Bool(true),
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
/// import com.pulumi.alicloud.esa.EsaFunctions;
/// import com.pulumi.alicloud.esa.inputs.GetSitesArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.esa.Site;
/// import com.pulumi.alicloud.esa.SiteArgs;
/// import com.pulumi.alicloud.esa.OriginPool;
/// import com.pulumi.alicloud.esa.OriginPoolArgs;
/// import com.pulumi.alicloud.esa.inputs.OriginPoolOriginArgs;
/// import com.pulumi.alicloud.esa.inputs.OriginPoolOriginAuthConfArgs;
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
///         final var default = EsaFunctions.getSites(GetSitesArgs.builder()
///             .planSubscribeType("enterpriseplan")
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultSite = new Site("defaultSite", SiteArgs.builder()
///             .siteName(String.format("gositecdn-%s.cn", defaultInteger.result()))
///             .instanceId(default_.sites()[0].instanceId())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultOriginPool = new OriginPool("defaultOriginPool", OriginPoolArgs.builder()
///             .origins(
///                 OriginPoolOriginArgs.builder()
///                     .type("OSS")
///                     .address("example.oss-cn-beijing.aliyuncs.com")
///                     .header("{\"Host\":[\"example.oss-cn-beijing.aliyuncs.com\"]}")
///                     .enabled(true)
///                     .authConf(OriginPoolOriginAuthConfArgs.builder()
///                         .secretKey("<SecretKeyId>")
///                         .authType("private_cross_account")
///                         .accessKey("<AccessKeyId>")
///                         .build())
///                     .weight(50)
///                     .name("origin1")
///                     .build(),
///                 OriginPoolOriginArgs.builder()
///                     .address("example.s3.com")
///                     .header("{\"Host\": [\"example1.com\"]}")
///                     .enabled(true)
///                     .authConf(OriginPoolOriginAuthConfArgs.builder()
///                         .version("v2")
///                         .region("us-east-1")
///                         .authType("private")
///                         .accessKey("<AccessKeyId>")
///                         .secretKey("<SecretKeyId>")
///                         .build())
///                     .weight(50)
///                     .name("origin2")
///                     .type("S3")
///                     .build(),
///                 OriginPoolOriginArgs.builder()
///                     .type("S3")
///                     .address("example1111.s3.com")
///                     .header("{\"Host\":[\"example1111.com\"]}")
///                     .enabled(true)
///                     .authConf(OriginPoolOriginAuthConfArgs.builder()
///                         .secretKey("<SecretKeyId>")
///                         .version("v2")
///                         .region("us-east-1")
///                         .authType("private")
///                         .accessKey("<AccessKeyId>")
///                         .build())
///                     .weight(30)
///                     .name("origin3")
///                     .build())
///             .siteId(defaultSite.id())
///             .originPoolName("exampleoriginpool")
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultSite:
///     type: alicloud:esa:Site
///     name: default
///     properties:
///       siteName: gositecdn-${defaultInteger.result}.cn
///       instanceId: ${default.sites[0].instanceId}
///       coverage: overseas
///       accessType: NS
///   defaultOriginPool:
///     type: alicloud:esa:OriginPool
///     name: default
///     properties:
///       origins:
///         - type: OSS
///           address: example.oss-cn-beijing.aliyuncs.com
///           header: '{"Host":["example.oss-cn-beijing.aliyuncs.com"]}'
///           enabled: 'true'
///           authConf:
///             secretKey: <SecretKeyId>
///             authType: private_cross_account
///             accessKey: <AccessKeyId>
///           weight: '50'
///           name: origin1
///         - address: example.s3.com
///           header: '{"Host": ["example1.com"]}'
///           enabled: 'true'
///           authConf:
///             version: v2
///             region: us-east-1
///             authType: private
///             accessKey: <AccessKeyId>
///             secretKey: <SecretKeyId>
///           weight: '50'
///           name: origin2
///           type: S3
///         - type: S3
///           address: example1111.s3.com
///           header: '{"Host":["example1111.com"]}'
///           enabled: 'true'
///           authConf:
///             secretKey: <SecretKeyId>
///             version: v2
///             region: us-east-1
///             authType: private
///             accessKey: <AccessKeyId>
///           weight: '30'
///           name: origin3
///       siteId: ${defaultSite.id}
///       originPoolName: exampleoriginpool
///       enabled: 'true'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:esa:getSites
///       arguments:
///         planSubscribeType: enterpriseplan
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Origin Pool can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/originPool:OriginPool example <site_id>:<origin_pool_id>
/// ```
class OriginPool extends pulumi.CustomResource {
  /// Whether the source address pool is enabled:
  late final pulumi.Output<bool?> enabled;
  /// OriginPool Id
  late final pulumi.Output<int> originPoolId;
  /// The source address pool name.
  late final pulumi.Output<String> originPoolName;
  /// The Source station information added to the source address pool. Multiple Source stations use arrays to transfer values. See `origins` below.
  late final pulumi.Output<List<OriginPoolOrigin>?> origins;
  /// The site ID.
  late final pulumi.Output<String> siteId;

  /// Creates a new [OriginPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OriginPool]. {@macro pulumi_esa_origin_pool_origin_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OriginPool(
    String name, {
    OriginPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/originPool:OriginPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool?>('enabled');
    this.originPoolId = registerOutput<int>('originPoolId');
    this.originPoolName = registerOutput<String>('originPoolName');
    this.origins = registerOutput<List<OriginPoolOrigin>?>('origins');
    this.siteId = registerOutput<String>('siteId');
  }

  /// Gets an existing [OriginPool] resource's state with the given [name] and [id].
  static OriginPool get(
    String name,
    pulumi.Input<String> id, {
    OriginPoolState? state,
  }) {
    return OriginPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OriginPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/originPool:OriginPool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool?>('enabled');
    this.originPoolId = registerOutput<int>('originPoolId');
    this.originPoolName = registerOutput<String>('originPoolName');
    this.origins = registerOutput<List<OriginPoolOrigin>?>('origins');
    this.siteId = registerOutput<String>('siteId');
  }
}
