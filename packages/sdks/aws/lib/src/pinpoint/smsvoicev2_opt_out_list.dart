import 'package:pulumi/pulumi.dart' as pulumi;
import 'smsvoicev2_opt_out_list_args.dart';
import 'smsvoicev2_opt_out_list_state.dart';

/// Manages an AWS End User Messaging SMS opt-out list.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pinpoint.Smsvoicev2OptOutList("example", {name: "example-opt-out-list"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pinpoint.Smsvoicev2OptOutList("example", name="example-opt-out-list")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Pinpoint.Smsvoicev2OptOutList("example", new()
///     {
///         Name = "example-opt-out-list",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pinpoint.NewSmsvoicev2OptOutList(ctx, "example", &pinpoint.Smsvoicev2OptOutListArgs{
/// 			Name: pulumi.String("example-opt-out-list"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_pinpoint_smsvoicev2optoutlist" "example" {
///   name = "example-opt-out-list"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.pinpoint.Smsvoicev2OptOutList;
/// import com.pulumi.aws.pinpoint.Smsvoicev2OptOutListArgs;
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
///         var example = new Smsvoicev2OptOutList("example", Smsvoicev2OptOutListArgs.builder()
///             .name("example-opt-out-list")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pinpoint:Smsvoicev2OptOutList
///     properties:
///       name: example-opt-out-list
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import opt-out lists using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/smsvoicev2OptOutList:Smsvoicev2OptOutList example example-opt-out-list
/// ```
class Smsvoicev2OptOutList extends pulumi.CustomResource {
  /// ARN of the opt-out list.
  late final pulumi.Output<String> arn;
  /// Name of the opt-out list.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Smsvoicev2OptOutList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Smsvoicev2OptOutList]. {@macro pulumi_pinpoint_smsvoicev2_opt_out_list_smsvoicev2_opt_out_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Smsvoicev2OptOutList(
    String name, {
    Smsvoicev2OptOutListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2OptOutList:Smsvoicev2OptOutList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Smsvoicev2OptOutList] resource's state with the given [name] and [id].
  static Smsvoicev2OptOutList get(
    String name,
    pulumi.Input<String> id, {
    Smsvoicev2OptOutListState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Smsvoicev2OptOutList._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Smsvoicev2OptOutList._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2OptOutList:Smsvoicev2OptOutList',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Smsvoicev2OptOutList] resource.
  Smsvoicev2OptOutList.reference(String urn)
    : super(
        'aws:pinpoint/smsvoicev2OptOutList:Smsvoicev2OptOutList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
