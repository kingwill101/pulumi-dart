import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_setting_args.dart';
import 'service_setting_state.dart';

/// Provides a OOS Service Setting resource.
///
/// For information about OOS Service Setting and how to use it, see [What is Service Setting](https://www.alibabacloud.com/help/en/doc-detail/268700.html).
///
/// > **NOTE:** Available in v1.147.0+.
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
/// const name = config.get("name") || "tf-testaccoossetting";
/// const _default = new alicloud.oss.Bucket("default", {bucket: name});
/// const defaultBucketAcl = new alicloud.oss.BucketAcl("default", {
///     bucket: _default.bucket,
///     acl: "public-read-write",
/// });
/// const defaultProject = new alicloud.log.Project("default", {projectName: name});
/// const defaultServiceSetting = new alicloud.oos.ServiceSetting("default", {
///     deliveryOssEnabled: true,
///     deliveryOssKeyPrefix: "path1/",
///     deliveryOssBucketName: _default.bucket,
///     deliverySlsEnabled: true,
///     deliverySlsProjectName: defaultProject.projectName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-testaccoossetting"
/// default = alicloud.oss.Bucket("default", bucket=name)
/// default_bucket_acl = alicloud.oss.BucketAcl("default",
///     bucket=default.bucket,
///     acl="public-read-write")
/// default_project = alicloud.log.Project("default", project_name=name)
/// default_service_setting = alicloud.oos.ServiceSetting("default",
///     delivery_oss_enabled=True,
///     delivery_oss_key_prefix="path1/",
///     delivery_oss_bucket_name=default.bucket,
///     delivery_sls_enabled=True,
///     delivery_sls_project_name=default_project.project_name)
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
///     var name = config.Get("name") ?? "tf-testaccoossetting";
///     var @default = new AliCloud.Oss.Bucket("default", new()
///     {
///         BucketName = name,
///     });
///
///     var defaultBucketAcl = new AliCloud.Oss.BucketAcl("default", new()
///     {
///         Bucket = @default.BucketName,
///         Acl = "public-read-write",
///     });
///
///     var defaultProject = new AliCloud.Log.Project("default", new()
///     {
///         ProjectName = name,
///     });
///
///     var defaultServiceSetting = new AliCloud.Oos.ServiceSetting("default", new()
///     {
///         DeliveryOssEnabled = true,
///         DeliveryOssKeyPrefix = "path1/",
///         DeliveryOssBucketName = @default.BucketName,
///         DeliverySlsEnabled = true,
///         DeliverySlsProjectName = defaultProject.ProjectName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oos"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-testaccoossetting"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := oss.NewBucket(ctx, "default", &oss.BucketArgs{
/// 			Bucket: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "default", &oss.BucketAclArgs{
/// 			Bucket: _default.Bucket,
/// 			Acl:    pulumi.String("public-read-write"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultProject, err := log.NewProject(ctx, "default", &log.ProjectArgs{
/// 			ProjectName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oos.NewServiceSetting(ctx, "default", &oos.ServiceSettingArgs{
/// 			DeliveryOssEnabled:     pulumi.Bool(true),
/// 			DeliveryOssKeyPrefix:   pulumi.String("path1/"),
/// 			DeliveryOssBucketName:  _default.Bucket,
/// 			DeliverySlsEnabled:     pulumi.Bool(true),
/// 			DeliverySlsProjectName: defaultProject.ProjectName,
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
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketAcl;
/// import com.pulumi.alicloud.oss.BucketAclArgs;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.oos.ServiceSetting;
/// import com.pulumi.alicloud.oos.ServiceSettingArgs;
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
///         final var name = config.get("name").orElse("tf-testaccoossetting");
///         var default_ = new Bucket("default", BucketArgs.builder()
///             .bucket(name)
///             .build());
///
///         var defaultBucketAcl = new BucketAcl("defaultBucketAcl", BucketAclArgs.builder()
///             .bucket(default_.bucket())
///             .acl("public-read-write")
///             .build());
///
///         var defaultProject = new Project("defaultProject", ProjectArgs.builder()
///             .projectName(name)
///             .build());
///
///         var defaultServiceSetting = new ServiceSetting("defaultServiceSetting", ServiceSettingArgs.builder()
///             .deliveryOssEnabled(true)
///             .deliveryOssKeyPrefix("path1/")
///             .deliveryOssBucketName(default_.bucket())
///             .deliverySlsEnabled(true)
///             .deliverySlsProjectName(defaultProject.projectName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-testaccoossetting
/// resources:
///   default:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: ${name}
///   defaultBucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: default
///     properties:
///       bucket: ${default.bucket}
///       acl: public-read-write
///   defaultProject:
///     type: alicloud:log:Project
///     name: default
///     properties:
///       projectName: ${name}
///   defaultServiceSetting:
///     type: alicloud:oos:ServiceSetting
///     name: default
///     properties:
///       deliveryOssEnabled: true
///       deliveryOssKeyPrefix: path1/
///       deliveryOssBucketName: ${default.bucket}
///       deliverySlsEnabled: true
///       deliverySlsProjectName: ${defaultProject.projectName}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OOS Service Setting can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oos/serviceSetting:ServiceSetting example <id>
/// ```
class ServiceSetting extends pulumi.CustomResource {
  /// The name of the OSS bucket. **NOTE:** When the `delivery_oss_enabled` is `true`, The `delivery_oss_bucket_name` is valid.
  late final pulumi.Output<String?> deliveryOssBucketName;
  /// Is the recording function for the OSS delivery template enabled.
  late final pulumi.Output<bool?> deliveryOssEnabled;
  /// The Directory of the OSS bucket. **NOTE:** When the `delivery_oss_enabled` is `true`, The `delivery_oss_bucket_name` is valid.
  late final pulumi.Output<String?> deliveryOssKeyPrefix;
  /// Is the execution record function to SLS delivery Template turned on.
  late final pulumi.Output<bool?> deliverySlsEnabled;
  /// The name of SLS  Project. **NOTE:** When the `delivery_sls_enabled` is `true`, The `delivery_sls_project_name` is valid.
  late final pulumi.Output<String?> deliverySlsProjectName;

  /// Creates a new [ServiceSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceSetting]. {@macro pulumi_oos_service_setting_service_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceSetting(
    String name, {
    ServiceSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oos/serviceSetting:ServiceSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deliveryOssBucketName = registerOutput<String?>('deliveryOssBucketName');
    this.deliveryOssEnabled = registerOutput<bool?>('deliveryOssEnabled');
    this.deliveryOssKeyPrefix = registerOutput<String?>('deliveryOssKeyPrefix');
    this.deliverySlsEnabled = registerOutput<bool?>('deliverySlsEnabled');
    this.deliverySlsProjectName = registerOutput<String?>('deliverySlsProjectName');
  }

  /// Gets an existing [ServiceSetting] resource's state with the given [name] and [id].
  static ServiceSetting get(
    String name,
    pulumi.Input<String> id, {
    ServiceSettingState? state,
  }) {
    return ServiceSetting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceSetting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oos/serviceSetting:ServiceSetting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deliveryOssBucketName = registerOutput<String?>('deliveryOssBucketName');
    this.deliveryOssEnabled = registerOutput<bool?>('deliveryOssEnabled');
    this.deliveryOssKeyPrefix = registerOutput<String?>('deliveryOssKeyPrefix');
    this.deliverySlsEnabled = registerOutput<bool?>('deliverySlsEnabled');
    this.deliverySlsProjectName = registerOutput<String?>('deliverySlsProjectName');
  }
}
