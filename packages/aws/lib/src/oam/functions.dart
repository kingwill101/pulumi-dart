import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_link_args.dart';
import 'get_link_result.dart';
import 'get_links_args.dart';
import 'get_links_result.dart';
import 'get_sink_args.dart';
import 'get_sink_result.dart';
import 'get_sinks_args.dart';
import 'get_sinks_result.dart';

/// Data source for managing an AWS CloudWatch Observability Access Manager Link.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.oam.getLink({
///     linkIdentifier: "arn:aws:oam:us-west-1:111111111111:link/abcd1234-a123-456a-a12b-a123b456c789",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.oam.get_link(link_identifier="arn:aws:oam:us-west-1:111111111111:link/abcd1234-a123-456a-a12b-a123b456c789")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Oam.GetLink.Invoke(new()
///     {
///         LinkIdentifier = "arn:aws:oam:us-west-1:111111111111:link/abcd1234-a123-456a-a12b-a123b456c789",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/oam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oam.LookupLink(ctx, &oam.LookupLinkArgs{
/// 			LinkIdentifier: "arn:aws:oam:us-west-1:111111111111:link/abcd1234-a123-456a-a12b-a123b456c789",
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
/// import com.pulumi.aws.oam.OamFunctions;
/// import com.pulumi.aws.oam.inputs.GetLinkArgs;
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
///         final var example = OamFunctions.getLink(GetLinkArgs.builder()
///             .linkIdentifier("arn:aws:oam:us-west-1:111111111111:link/abcd1234-a123-456a-a12b-a123b456c789")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:oam:getLink
///       arguments:
///         linkIdentifier: arn:aws:oam:us-west-1:111111111111:link/abcd1234-a123-456a-a12b-a123b456c789
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oam_get_link_get_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinkResult> getLink(
  GetLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:oam/getLink:getLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinkResult.fromMap(result);
}

/// Data source for managing an AWS CloudWatch Observability Access Manager Links.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.oam.getLinks({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.oam.get_links()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Oam.GetLinks.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/oam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oam.GetLinks(ctx, &oam.GetLinksArgs{}, nil)
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
/// import com.pulumi.aws.oam.OamFunctions;
/// import com.pulumi.aws.oam.inputs.GetLinksArgs;
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
///         final var example = OamFunctions.getLinks(GetLinksArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:oam:getLinks
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oam_get_links_get_links_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinksResult> getLinks(
  GetLinksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:oam/getLinks:getLinks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinksResult.fromMap(result);
}

/// Data source for managing an AWS CloudWatch Observability Access Manager Sink.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.oam.getSink({
///     sinkIdentifier: "arn:aws:oam:us-west-1:111111111111:sink/abcd1234-a123-456a-a12b-a123b456c789",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.oam.get_sink(sink_identifier="arn:aws:oam:us-west-1:111111111111:sink/abcd1234-a123-456a-a12b-a123b456c789")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Oam.GetSink.Invoke(new()
///     {
///         SinkIdentifier = "arn:aws:oam:us-west-1:111111111111:sink/abcd1234-a123-456a-a12b-a123b456c789",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/oam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oam.LookupSink(ctx, &oam.LookupSinkArgs{
/// 			SinkIdentifier: "arn:aws:oam:us-west-1:111111111111:sink/abcd1234-a123-456a-a12b-a123b456c789",
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
/// import com.pulumi.aws.oam.OamFunctions;
/// import com.pulumi.aws.oam.inputs.GetSinkArgs;
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
///         final var example = OamFunctions.getSink(GetSinkArgs.builder()
///             .sinkIdentifier("arn:aws:oam:us-west-1:111111111111:sink/abcd1234-a123-456a-a12b-a123b456c789")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:oam:getSink
///       arguments:
///         sinkIdentifier: arn:aws:oam:us-west-1:111111111111:sink/abcd1234-a123-456a-a12b-a123b456c789
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oam_get_sink_get_sink_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSinkResult> getSink(
  GetSinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:oam/getSink:getSink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSinkResult.fromMap(result);
}

/// Data source for managing an AWS CloudWatch Observability Access Manager Sinks.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.oam.getSinks({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.oam.get_sinks()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Oam.GetSinks.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/oam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oam.GetSinks(ctx, &oam.GetSinksArgs{}, nil)
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
/// import com.pulumi.aws.oam.OamFunctions;
/// import com.pulumi.aws.oam.inputs.GetSinksArgs;
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
///         final var example = OamFunctions.getSinks(GetSinksArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:oam:getSinks
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oam_get_sinks_get_sinks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSinksResult> getSinks(
  GetSinksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:oam/getSinks:getSinks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSinksResult.fromMap(result);
}
