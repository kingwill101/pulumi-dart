import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_check_recaptcha_v3_config_args.dart';

/// An app's reCAPTCHA V3 configuration object.
///
///
/// To get more information about RecaptchaV3Config, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/appcheck/rest/v1/projects.apps.recaptchaV3Config)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/app-check)
///
///
///
/// ## Example Usage
///
/// ### Firebase App Check Recaptcha V3 Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const _default = new gcp.firebase.WebApp("default", {
///     project: "my-project-name",
///     displayName: "Web App for reCAPTCHA V3",
/// });
/// // It takes a while for App Check to recognize the new app
/// // If your app already exists, you don't have to wait 30 seconds.
/// const wait30s = new time.Sleep("wait_30s", {createDuration: "30s"}, {
///     dependsOn: [_default],
/// });
/// const defaultAppCheckRecaptchaV3Config = new gcp.firebase.AppCheckRecaptchaV3Config("default", {
///     project: "my-project-name",
///     appId: _default.appId,
///     siteSecret: "6Lf9YnQpAAAAAC3-MHmdAllTbPwTZxpUw5d34YzX",
///     tokenTtl: "7200s",
/// }, {
///     dependsOn: [wait30s],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// default = gcp.firebase.WebApp("default",
///     project="my-project-name",
///     display_name="Web App for reCAPTCHA V3")
/// # It takes a while for App Check to recognize the new app
/// # If your app already exists, you don't have to wait 30 seconds.
/// wait30s = time.Sleep("wait_30s", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[default]))
/// default_app_check_recaptcha_v3_config = gcp.firebase.AppCheckRecaptchaV3Config("default",
///     project="my-project-name",
///     app_id=default.app_id,
///     site_secret="6Lf9YnQpAAAAAC3-MHmdAllTbPwTZxpUw5d34YzX",
///     token_ttl="7200s",
///     opts = pulumi.ResourceOptions(depends_on=[wait30s]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Firebase.WebApp("default", new()
///     {
///         Project = "my-project-name",
///         DisplayName = "Web App for reCAPTCHA V3",
///     });
///
///     // It takes a while for App Check to recognize the new app
///     // If your app already exists, you don't have to wait 30 seconds.
///     var wait30s = new Time.Sleep("wait_30s", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
///         },
///     });
///
///     var defaultAppCheckRecaptchaV3Config = new Gcp.Firebase.AppCheckRecaptchaV3Config("default", new()
///     {
///         Project = "my-project-name",
///         AppId = @default.AppId,
///         SiteSecret = "6Lf9YnQpAAAAAC3-MHmdAllTbPwTZxpUw5d34YzX",
///         TokenTtl = "7200s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait30s,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := firebase.NewWebApp(ctx, "default", &firebase.WebAppArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			DisplayName: pulumi.String("Web App for reCAPTCHA V3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// It takes a while for App Check to recognize the new app
/// 		// If your app already exists, you don't have to wait 30 seconds.
/// 		wait30s, err := time.NewSleep(ctx, "wait_30s", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppCheckRecaptchaV3Config(ctx, "default", &firebase.AppCheckRecaptchaV3ConfigArgs{
/// 			Project:    pulumi.String("my-project-name"),
/// 			AppId:      _default.AppId,
/// 			SiteSecret: pulumi.String("6Lf9YnQpAAAAAC3-MHmdAllTbPwTZxpUw5d34YzX"),
/// 			TokenTtl:   pulumi.String("7200s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait30s,
/// 		}))
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
/// import com.pulumi.gcp.firebase.WebApp;
/// import com.pulumi.gcp.firebase.WebAppArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.firebase.AppCheckRecaptchaV3Config;
/// import com.pulumi.gcp.firebase.AppCheckRecaptchaV3ConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var default_ = new WebApp("default", WebAppArgs.builder()
///             .project("my-project-name")
///             .displayName("Web App for reCAPTCHA V3")
///             .build());
///
///         // It takes a while for App Check to recognize the new app
///         // If your app already exists, you don't have to wait 30 seconds.
///         var wait30s = new Sleep("wait30s", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///         var defaultAppCheckRecaptchaV3Config = new AppCheckRecaptchaV3Config("defaultAppCheckRecaptchaV3Config", AppCheckRecaptchaV3ConfigArgs.builder()
///             .project("my-project-name")
///             .appId(default_.appId())
///             .siteSecret("6Lf9YnQpAAAAAC3-MHmdAllTbPwTZxpUw5d34YzX")
///             .tokenTtl("7200s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait30s)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:firebase:WebApp
///     properties:
///       project: my-project-name
///       displayName: Web App for reCAPTCHA V3
///   # It takes a while for App Check to recognize the new app
///   # If your app already exists, you don't have to wait 30 seconds.
///   wait30s:
///     type: time:Sleep
///     name: wait_30s
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${default}
///   defaultAppCheckRecaptchaV3Config:
///     type: gcp:firebase:AppCheckRecaptchaV3Config
///     name: default
///     properties:
///       project: my-project-name
///       appId: ${default.appId}
///       siteSecret: 6Lf9YnQpAAAAAC3-MHmdAllTbPwTZxpUw5d34YzX
///       tokenTtl: 7200s
///     options:
///       dependsOn:
///         - ${wait30s}
/// ```
///
///
/// ## Import
///
/// RecaptchaV3Config can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/apps/{{app_id}}/recaptchaV3Config`
///
/// * `{{project}}/{{app_id}}`
///
/// * `{{app_id}}`
///
/// When using the `pulumi import` command, RecaptchaV3Config can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckRecaptchaV3Config:AppCheckRecaptchaV3Config default projects/{{project}}/apps/{{app_id}}/recaptchaV3Config
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckRecaptchaV3Config:AppCheckRecaptchaV3Config default {{project}}/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckRecaptchaV3Config:AppCheckRecaptchaV3Config default {{app_id}}
/// ```
class AppCheckRecaptchaV3Config extends pulumi.CustomResource {
  /// The ID of an
  /// [Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id).
  late final pulumi.Output<String> appId;
  /// The relative resource name of the reCAPTCHA V3 configuration object
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The site secret used to identify your service for reCAPTCHA v3 verification.
  /// For security reasons, this field will never be populated in any response.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> siteSecret;
  /// Whether the siteSecret was previously set. Since we will never return the siteSecret field, this field is the only way to find out whether it was previously set.
  late final pulumi.Output<bool> siteSecretSet;
  /// Specifies the duration for which App Check tokens exchanged from reCAPTCHA V3 artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final pulumi.Output<String> tokenTtl;

  /// Creates a new [AppCheckRecaptchaV3Config].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppCheckRecaptchaV3Config]. {@macro pulumi_firebase_app_check_recaptcha_v3_config_app_check_recaptcha_v3_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppCheckRecaptchaV3Config(
    String name, {
    AppCheckRecaptchaV3ConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckRecaptchaV3Config:AppCheckRecaptchaV3Config',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.siteSecret = registerOutput<String>('siteSecret');
    this.siteSecretSet = registerOutput<bool>('siteSecretSet');
    this.tokenTtl = registerOutput<String>('tokenTtl');
  }
}
