import 'package:pulumi/pulumi.dart' as pulumi;
import 'page_args.dart';
import 'page_state.dart';

/// Provides a ESA Page resource.
///
///
///
/// For information about ESA Page and how to use it, see [What is Page](https://www.alibabacloud.com/help/en/edge-security-acceleration/esa/user-guide/customize-page).
///
/// > **NOTE:** Available since v1.242.0.
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
/// const _default = new alicloud.esa.Page("default", {
///     description: "example resource html page",
///     contentType: "text/html",
///     content: "PCFET0NUWVBFIGh0bWw+CjxodG1sIGxhbmc9InpoLUNOIj4KICA8aGVhZD4KICAgIDx0aXRsZT40MDMgRm9yYmlkZGVuPC90aXRsZT4KICA8L2hlYWQ+CiAgPGJvZHk+CiAgICA8aDE+NDAzIEZvcmJpZGRlbjwvaDE+CiAgPC9ib2R5Pgo8L2h0bWw+",
///     pageName: "resource_example_html_page",
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
/// default = alicloud.esa.Page("default",
///     description="example resource html page",
///     content_type="text/html",
///     content="PCFET0NUWVBFIGh0bWw+CjxodG1sIGxhbmc9InpoLUNOIj4KICA8aGVhZD4KICAgIDx0aXRsZT40MDMgRm9yYmlkZGVuPC90aXRsZT4KICA8L2hlYWQ+CiAgPGJvZHk+CiAgICA8aDE+NDAzIEZvcmJpZGRlbjwvaDE+CiAgPC9ib2R5Pgo8L2h0bWw+",
///     page_name="resource_example_html_page")
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
///     var @default = new AliCloud.Esa.Page("default", new()
///     {
///         Description = "example resource html page",
///         ContentType = "text/html",
///         Content = "PCFET0NUWVBFIGh0bWw+CjxodG1sIGxhbmc9InpoLUNOIj4KICA8aGVhZD4KICAgIDx0aXRsZT40MDMgRm9yYmlkZGVuPC90aXRsZT4KICA8L2hlYWQ+CiAgPGJvZHk+CiAgICA8aDE+NDAzIEZvcmJpZGRlbjwvaDE+CiAgPC9ib2R5Pgo8L2h0bWw+",
///         PageName = "resource_example_html_page",
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
/// 		_, err := esa.NewPage(ctx, "default", &esa.PageArgs{
/// 			Description: pulumi.String("example resource html page"),
/// 			ContentType: pulumi.String("text/html"),
/// 			Content:     pulumi.String("PCFET0NUWVBFIGh0bWw+CjxodG1sIGxhbmc9InpoLUNOIj4KICA8aGVhZD4KICAgIDx0aXRsZT40MDMgRm9yYmlkZGVuPC90aXRsZT4KICA8L2hlYWQ+CiAgPGJvZHk+CiAgICA8aDE+NDAzIEZvcmJpZGRlbjwvaDE+CiAgPC9ib2R5Pgo8L2h0bWw+"),
/// 			PageName:    pulumi.String("resource_example_html_page"),
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
/// import com.pulumi.alicloud.esa.Page;
/// import com.pulumi.alicloud.esa.PageArgs;
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
///         var default_ = new Page("default", PageArgs.builder()
///             .description("example resource html page")
///             .contentType("text/html")
///             .content("PCFET0NUWVBFIGh0bWw+CjxodG1sIGxhbmc9InpoLUNOIj4KICA8aGVhZD4KICAgIDx0aXRsZT40MDMgRm9yYmlkZGVuPC90aXRsZT4KICA8L2hlYWQ+CiAgPGJvZHk+CiAgICA8aDE+NDAzIEZvcmJpZGRlbjwvaDE+CiAgPC9ib2R5Pgo8L2h0bWw+")
///             .pageName("resource_example_html_page")
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
///     type: alicloud:esa:Page
///     properties:
///       description: example resource html page
///       contentType: text/html
///       content: PCFET0NUWVBFIGh0bWw+CjxodG1sIGxhbmc9InpoLUNOIj4KICA8aGVhZD4KICAgIDx0aXRsZT40MDMgRm9yYmlkZGVuPC90aXRsZT4KICA8L2hlYWQ+CiAgPGJvZHk+CiAgICA8aDE+NDAzIEZvcmJpZGRlbjwvaDE+CiAgPC9ib2R5Pgo8L2h0bWw+
///       pageName: resource_example_html_page
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Page can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/page:Page example <id>
/// ```
class Page extends pulumi.CustomResource {
  /// The Base64-encoded content of the error page. The content type is specified by the Content-Type field.
  late final pulumi.Output<String?> content;
  /// The Content-Type field in the HTTP header.
  late final pulumi.Output<String> contentType;
  /// The description of the custom error page.
  late final pulumi.Output<String?> description;
  /// The name of the custom response page.
  late final pulumi.Output<String> pageName;

  /// Creates a new [Page].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Page]. {@macro pulumi_esa_page_page_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Page(
    String name, {
    PageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/page:Page',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.content = registerOutput<String?>('content');
    this.contentType = registerOutput<String>('contentType');
    this.description = registerOutput<String?>('description');
    this.pageName = registerOutput<String>('pageName');
  }

  /// Gets an existing [Page] resource's state with the given [name] and [id].
  static Page get(
    String name,
    pulumi.Input<String> id, {
    PageState? state,
  }) {
    return Page._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Page._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/page:Page',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.content = registerOutput<String?>('content');
    this.contentType = registerOutput<String>('contentType');
    this.description = registerOutput<String?>('description');
    this.pageName = registerOutput<String>('pageName');
  }
}
