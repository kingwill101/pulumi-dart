import 'package:pulumi/pulumi.dart' as pulumi;
import 'short_url_args.dart';
import 'short_url_state.dart';

/// Provides a SMS Short Url resource.
///
/// For information about SMS Short Url and how to use it, see [What is Short Url](https://next.api.alibabacloud.com/api/Dysmsapi/2017-05-25/AddShortUrl).
///
/// > **NOTE:** Available since v1.178.0.
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
/// const example = new alicloud.sms.ShortUrl("example", {
///     effectiveDays: 30,
///     shortUrlName: "example_value",
///     sourceUrl: "example_value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.sms.ShortUrl("example",
///     effective_days=30,
///     short_url_name="example_value",
///     source_url="example_value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Sms.ShortUrl("example", new()
///     {
///         EffectiveDays = 30,
///         ShortUrlName = "example_value",
///         SourceUrl = "example_value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sms.NewShortUrl(ctx, "example", &sms.ShortUrlArgs{
/// 			EffectiveDays: pulumi.Int(30),
/// 			ShortUrlName:  pulumi.String("example_value"),
/// 			SourceUrl:     pulumi.String("example_value"),
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
/// import com.pulumi.alicloud.sms.ShortUrl;
/// import com.pulumi.alicloud.sms.ShortUrlArgs;
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
///         var example = new ShortUrl("example", ShortUrlArgs.builder()
///             .effectiveDays(30)
///             .shortUrlName("example_value")
///             .sourceUrl("example_value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:sms:ShortUrl
///     properties:
///       effectiveDays: 30
///       shortUrlName: example_value
///       sourceUrl: example_value
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// SMS Short Url can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sms/shortUrl:ShortUrl example <id>
/// ```
class ShortUrl extends pulumi.CustomResource {
  /// Short chain service use validity period. Valid values: `30`, `60`, `90`. The unit is days, and the maximum validity period is 90 days.
  late final pulumi.Output<int> effectiveDays;
  /// The name of the resource.
  late final pulumi.Output<String> shortUrlName;
  /// The original link address.
  late final pulumi.Output<String> sourceUrl;
  /// Short chain status.
  late final pulumi.Output<String> status;

  /// Creates a new [ShortUrl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ShortUrl]. {@macro pulumi_sms_short_url_short_url_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ShortUrl(
    String name, {
    ShortUrlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sms/shortUrl:ShortUrl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.effectiveDays = registerOutput<int>('effectiveDays');
    this.shortUrlName = registerOutput<String>('shortUrlName');
    this.sourceUrl = registerOutput<String>('sourceUrl');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [ShortUrl] resource's state with the given [name] and [id].
  static ShortUrl get(
    String name,
    pulumi.Input<String> id, {
    ShortUrlState? state,
  }) {
    return ShortUrl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ShortUrl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sms/shortUrl:ShortUrl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.effectiveDays = registerOutput<int>('effectiveDays');
    this.shortUrlName = registerOutput<String>('shortUrlName');
    this.sourceUrl = registerOutput<String>('sourceUrl');
    this.status = registerOutput<String>('status');
  }
}
